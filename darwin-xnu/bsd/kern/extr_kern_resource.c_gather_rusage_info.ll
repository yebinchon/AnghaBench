; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_gather_rusage_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_gather_rusage_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.rusage_info_child }
%struct.rusage_info_child = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gather_rusage_info(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rusage_info_child*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = icmp ne %struct.TYPE_15__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = call i32 @memset(%struct.TYPE_16__* %14, i32 0, i32 44)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %109 [
    i32 128, label %17
    i32 129, label %35
    i32 130, label %46
    i32 131, label %52
    i32 132, label %91
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @get_task_logical_writes(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @get_task_phys_footprint_lifetime_max(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = call i32 @fill_task_monotonic_rusage(i32 %32, %struct.TYPE_16__* %33)
  br label %35

35:                                               ; preds = %3, %17
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = call i32 @fill_task_qos_rusage(i32 %38, %struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = call i32 @fill_task_billed_usage(i32 %43, %struct.TYPE_16__* %44)
  br label %46

46:                                               ; preds = %3, %35
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = call i32 @fill_task_io_rusage(i32 %49, %struct.TYPE_16__* %50)
  br label %52

52:                                               ; preds = %3, %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = call i32 @proc_lock(%struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store %struct.rusage_info_child* %58, %struct.rusage_info_child** %7, align 8
  %59 = load %struct.rusage_info_child*, %struct.rusage_info_child** %7, align 8
  %60 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.rusage_info_child*, %struct.rusage_info_child** %7, align 8
  %65 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rusage_info_child*, %struct.rusage_info_child** %7, align 8
  %70 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.rusage_info_child*, %struct.rusage_info_child** %7, align 8
  %75 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.rusage_info_child*, %struct.rusage_info_child** %7, align 8
  %80 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.rusage_info_child*, %struct.rusage_info_child** %7, align 8
  %85 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = call i32 @proc_unlock(%struct.TYPE_17__* %89)
  br label %91

91:                                               ; preds = %3, %52
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = bitcast i32* %94 to i8*
  %96 = call i32 @proc_getexecutableuuid(%struct.TYPE_17__* %92, i8* %95, i32 4)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = call i32 @fill_task_rusage(i32 %99, %struct.TYPE_16__* %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %91, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @get_task_logical_writes(i32) #1

declare dso_local i32 @get_task_phys_footprint_lifetime_max(i32) #1

declare dso_local i32 @fill_task_monotonic_rusage(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @fill_task_qos_rusage(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @fill_task_billed_usage(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @fill_task_io_rusage(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @proc_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_17__*) #1

declare dso_local i32 @proc_getexecutableuuid(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @fill_task_rusage(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
