; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_pcontrol_filter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_pcontrol_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.no_paging_space = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @proc_pcontrol_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pcontrol_filter(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.no_paging_space*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.no_paging_space*
  store %struct.no_paging_space* %8, %struct.no_paging_space** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @get_task_compressed(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = call i64 @PROC_CONTROL_STATE(%struct.TYPE_5__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i64 @PROC_ACTION_STATE(%struct.TYPE_5__* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %23 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %31 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %36 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %39 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %26, %20
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %43 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %49 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %64

52:                                               ; preds = %16
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %55 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %61 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %52, %40
  br label %97

65:                                               ; preds = %2
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %68 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %76 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %81 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %84 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %71, %65
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %88 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.no_paging_space*, %struct.no_paging_space** %5, align 8
  %94 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %85, %64
  ret i32 0
}

declare dso_local i64 @get_task_compressed(i32) #1

declare dso_local i64 @PROC_CONTROL_STATE(%struct.TYPE_5__*) #1

declare dso_local i64 @PROC_ACTION_STATE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
