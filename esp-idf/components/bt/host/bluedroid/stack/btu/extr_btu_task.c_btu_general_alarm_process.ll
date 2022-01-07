; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_task.c_btu_general_alarm_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_task.c_btu_general_alarm_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_20__*)*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@BTU_MAX_REG_TIMER = common dso_local global i32 0, align 4
@btu_cb = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @btu_general_alarm_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_general_alarm_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32 (%struct.TYPE_20__*)**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = icmp ne %struct.TYPE_20__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %36 [
    i32 142, label %16
    i32 135, label %19
    i32 139, label %19
    i32 137, label %19
    i32 136, label %19
    i32 138, label %19
    i32 134, label %19
    i32 141, label %22
    i32 133, label %24
    i32 128, label %27
  ]

16:                                               ; preds = %1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = call i32 @btm_dev_timeout(%struct.TYPE_20__* %17)
  br label %80

19:                                               ; preds = %1, %1, %1, %1, %1, %1
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = call i32 @l2c_process_timeout(%struct.TYPE_20__* %20)
  br label %80

22:                                               ; preds = %1
  %23 = call i32 (...) @btm_inq_rmt_name_failed()
  br label %80

24:                                               ; preds = %1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = call i32 @mca_process_timeout(%struct.TYPE_20__* %25)
  br label %80

27:                                               ; preds = %1
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32 (%struct.TYPE_20__*)**
  store i32 (%struct.TYPE_20__*)** %31, i32 (%struct.TYPE_20__*)*** %4, align 8
  %32 = load i32 (%struct.TYPE_20__*)**, i32 (%struct.TYPE_20__*)*** %4, align 8
  %33 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = call i32 %33(%struct.TYPE_20__* %34)
  br label %80

36:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %76, %36
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BTU_MAX_REG_TIMER, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %79

47:                                               ; preds = %45
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btu_cb, i32 0, i32 0), align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %52, align 8
  %54 = icmp eq i32 (%struct.TYPE_20__*)* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %76

56:                                               ; preds = %47
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btu_cb, i32 0, i32 0), align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = icmp eq %struct.TYPE_20__* %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btu_cb, i32 0, i32 0), align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = call i32 %71(%struct.TYPE_20__* %72)
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %65, %56
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %38

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79, %27, %24, %22, %19, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @btm_dev_timeout(%struct.TYPE_20__*) #1

declare dso_local i32 @l2c_process_timeout(%struct.TYPE_20__*) #1

declare dso_local i32 @btm_inq_rmt_name_failed(...) #1

declare dso_local i32 @mca_process_timeout(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
