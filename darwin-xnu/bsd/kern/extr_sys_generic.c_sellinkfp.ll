; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_sellinkfp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_sellinkfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32, i8* }
%struct.waitq_set = type { i32 }
%struct.waitq = type { i32 }

@FP_INSELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"non-null data:%p on fp:%p not in select?!(wqset:%p)\00", align 1
@FP_SELCONFLICT = common dso_local global i32 0, align 4
@select_conflict_queue = common dso_local global i32 0, align 4
@WAITQ_SHOULD_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileproc*, i8**, %struct.waitq_set*)* @sellinkfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sellinkfp(%struct.fileproc* %0, i8** %1, %struct.waitq_set* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.waitq_set*, align 8
  %8 = alloca %struct.waitq*, align 8
  store %struct.fileproc* %0, %struct.fileproc** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.waitq_set* %2, %struct.waitq_set** %7, align 8
  store %struct.waitq* null, %struct.waitq** %8, align 8
  %9 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %10 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FP_INSELECT, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @FP_INSELECT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i8**, i8*** %6, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8**, i8*** %6, align 8
  %21 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %22 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %23 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8** %20, %struct.fileproc* %21, %struct.waitq_set* %22)
  br label %24

24:                                               ; preds = %19, %16
  store i32 0, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %27 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FP_SELCONFLICT, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @FP_SELCONFLICT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %35 = load i32, i32* @WAITQ_SHOULD_LOCK, align 4
  %36 = call i32 @waitq_link(i32* @select_conflict_queue, %struct.waitq_set* %34, i32 %35, i32* null)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i8**, i8*** %6, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8**, i8*** %6, align 8
  %42 = call i32 @memcpy(%struct.waitq** %8, i8** %41, i32 8)
  %43 = load %struct.waitq*, %struct.waitq** %8, align 8
  %44 = call i32 @waitq_is_valid(%struct.waitq* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store %struct.waitq* null, %struct.waitq** %8, align 8
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %37
  %49 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %50 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %55 = bitcast %struct.waitq_set* %54 to i8*
  %56 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %57 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.waitq*, %struct.waitq** %8, align 8
  %60 = call i32 @waitq_get_prepost_id(%struct.waitq* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @panic(i8*, i8**, %struct.fileproc*, %struct.waitq_set*) #1

declare dso_local i32 @waitq_link(i32*, %struct.waitq_set*, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.waitq**, i8**, i32) #1

declare dso_local i32 @waitq_is_valid(%struct.waitq*) #1

declare dso_local i32 @waitq_get_prepost_id(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
