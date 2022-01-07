; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selunlinkfp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selunlinkfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32, i8* }
%struct.waitq_set = type { i32 }

@FP_INSELECT = common dso_local global i32 0, align 4
@FP_SELCONFLICT = common dso_local global i32 0, align 4
@select_conflict_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fileproc*, i32, %struct.waitq_set*)* @selunlinkfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selunlinkfp(%struct.fileproc* %0, i32 %1, %struct.waitq_set* %2) #0 {
  %4 = alloca %struct.fileproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.waitq_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.waitq_set* %2, %struct.waitq_set** %6, align 8
  %9 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %10 = call i32 @waitq_set_is_valid(%struct.waitq_set* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %24 = call i32 @waitq_unlink_by_prepost_id(i32 %22, %struct.waitq_set* %23)
  br label %25

25:                                               ; preds = %21, %18, %3
  %26 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %27 = icmp ne %struct.fileproc* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %30 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FP_INSELECT, align 4
  %33 = load i32, i32* @FP_SELCONFLICT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28, %25
  br label %70

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %43 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @FP_SELCONFLICT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %50 = call i32 @waitq_unlink(i32* @select_conflict_queue, %struct.waitq_set* %49)
  br label %51

51:                                               ; preds = %48, %41, %38
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %56 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %59 = bitcast %struct.waitq_set* %58 to i8*
  %60 = icmp eq i8* %57, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i32, i32* @FP_INSELECT, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %65 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %69 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %68, i32 0, i32 1
  store i8* null, i8** %69, align 8
  br label %70

70:                                               ; preds = %37, %61, %54, %51
  ret void
}

declare dso_local i32 @waitq_set_is_valid(%struct.waitq_set*) #1

declare dso_local i32 @waitq_unlink_by_prepost_id(i32, %struct.waitq_set*) #1

declare dso_local i32 @waitq_unlink(i32*, %struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
