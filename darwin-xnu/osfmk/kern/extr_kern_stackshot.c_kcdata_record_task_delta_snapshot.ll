; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_record_task_delta_snapshot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_record_task_delta_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.task_delta_snapshot_v2 = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@STACKSHOT_KCTYPE_TASK_DELTA_SNAPSHOT = common dso_local global i32 0, align 4
@LATENCY_QOS_TIER_UNSPECIFIED = common dso_local global i32 0, align 4
@STACKSHOT_ASID = common dso_local global i8* null, align 8
@STACKSHOT_INSTRS_CYCLES = common dso_local global i8* null, align 8
@STACKSHOT_KCTYPE_ASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_16__*, i8*, i32, i32**)* @kcdata_record_task_delta_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcdata_record_task_delta_snapshot(i32 %0, %struct.TYPE_16__* %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_delta_snapshot_v2*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %15 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %15, i32* %11, align 4
  store %struct.task_delta_snapshot_v2* null, %struct.task_delta_snapshot_v2** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = call i32 @get_task_uniqueid(%struct.TYPE_16__* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32**, i32*** %10, align 8
  %20 = icmp ne i32** %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @STACKSHOT_KCTYPE_TASK_DELTA_SNAPSHOT, align 4
  %25 = call i32 @kcdata_get_memory_addr(i32 %23, i32 %24, i32 64, i64* %13)
  %26 = call i32 @kcd_exit_on_error(i32 %25)
  %27 = load i64, i64* %13, align 8
  %28 = inttoptr i64 %27 to %struct.task_delta_snapshot_v2*
  store %struct.task_delta_snapshot_v2* %28, %struct.task_delta_snapshot_v2** %12, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %31 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = call i32 @kcdata_get_task_ss_flags(%struct.TYPE_16__* %32)
  %34 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %35 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 8
  %36 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %37 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %36, i32 0, i32 11
  %38 = load i32**, i32*** %10, align 8
  store i32* %37, i32** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %43 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %48 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %5
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = call i32 @get_task_phys_footprint(%struct.TYPE_16__* %52)
  br label %55

54:                                               ; preds = %5
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  %57 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %58 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = call i32 @get_task_resident_max(%struct.TYPE_16__* %59)
  %61 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %62 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %67 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %72 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %77 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %82 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = call i64 @proc_was_throttled_from_task(%struct.TYPE_16__* %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %87 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = call i64 @proc_did_throttle_from_task(%struct.TYPE_16__* %88)
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %92 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LATENCY_QOS_TIER_UNSPECIFIED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %55
  %100 = load i32, i32* @LATENCY_QOS_TIER_UNSPECIFIED, align 4
  br label %107

101:                                              ; preds = %55
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 16711680, %105
  br label %107

107:                                              ; preds = %101, %99
  %108 = phi i32 [ %100, %99 ], [ %106, %101 ]
  %109 = load %struct.task_delta_snapshot_v2*, %struct.task_delta_snapshot_v2** %12, align 8
  %110 = getelementptr inbounds %struct.task_delta_snapshot_v2, %struct.task_delta_snapshot_v2* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @get_task_uniqueid(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kcd_exit_on_error(i32) #1

declare dso_local i32 @kcdata_get_memory_addr(i32, i32, i32, i64*) #1

declare dso_local i32 @kcdata_get_task_ss_flags(%struct.TYPE_16__*) #1

declare dso_local i32 @get_task_phys_footprint(%struct.TYPE_16__*) #1

declare dso_local i32 @get_task_resident_max(%struct.TYPE_16__*) #1

declare dso_local i64 @proc_was_throttled_from_task(%struct.TYPE_16__*) #1

declare dso_local i64 @proc_did_throttle_from_task(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
