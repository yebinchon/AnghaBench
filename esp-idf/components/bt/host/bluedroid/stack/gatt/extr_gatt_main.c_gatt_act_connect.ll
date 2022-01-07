; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_act_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_act_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@GATT_CH_OPEN = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@GATT_CH_CLOSING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"gatt_connect failed\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Max TCB for gatt_if [%d] reached.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_act_connect(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.TYPE_11__* @gatt_find_tcb_by_addr(i32 %13, i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %4
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = call i64 @gatt_get_ch_state(%struct.TYPE_11__* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @GATT_CH_OPEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = call i64 @gatt_num_apps_hold_link(%struct.TYPE_11__* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @gatt_connect(i32 %33, i32 %34, %struct.TYPE_11__* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %39, %32
  br label %49

42:                                               ; preds = %28, %24, %17
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @GATT_CH_CLOSING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %41
  br label %83

50:                                               ; preds = %4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.TYPE_11__* @gatt_allocate_tcb_by_bdaddr(i32 %51, i32 %52)
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %10, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @gatt_connect(i32 %56, i32 %57, %struct.TYPE_11__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @fixed_queue_free(i32 %66, i32* null)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fixed_queue_free(i32 %70, i32* null)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = call i32 @memset(%struct.TYPE_11__* %72, i32 0, i32 8)
  br label %76

74:                                               ; preds = %55
  %75 = load i64, i64* @TRUE, align 8
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %74, %62
  br label %82

77:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %82, %49
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = load i64, i64* @TRUE, align 8
  %92 = load i64, i64* @FALSE, align 8
  %93 = call i32 @gatt_update_app_use_link_flag(i32 %89, %struct.TYPE_11__* %90, i64 %91, i64 %92)
  br label %94

94:                                               ; preds = %86, %83
  %95 = load i64, i64* %9, align 8
  ret i64 %95
}

declare dso_local %struct.TYPE_11__* @gatt_find_tcb_by_addr(i32, i32) #1

declare dso_local i64 @gatt_get_ch_state(%struct.TYPE_11__*) #1

declare dso_local i64 @gatt_num_apps_hold_link(%struct.TYPE_11__*) #1

declare dso_local i32 @gatt_connect(i32, i32, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @gatt_allocate_tcb_by_bdaddr(i32, i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @fixed_queue_free(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gatt_update_app_use_link_flag(i32, %struct.TYPE_11__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
