; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_security_check_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_security_check_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@GATT_SEC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"gatt_security_check_start: Do data signing\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"gatt_security_check_start: Encrypt now or key upgreade first\00", align 1
@gatt_enc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"gatt_security_check_start BTM_SetEncryption failed btm_status=%d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@GATT_CH_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_security_check_start(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %3, align 8
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = call i32 @gatt_get_sec_act(%struct.TYPE_12__* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 @gatt_determine_sec_act(%struct.TYPE_13__* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GATT_SEC_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @gatt_set_sec_act(%struct.TYPE_12__* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %69 [
    i32 128, label %26
    i32 132, label %30
    i32 130, label %30
    i32 131, label %30
    i32 129, label %65
  ]

26:                                               ; preds = %24
  %27 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = call i32 @gatt_sign_data(%struct.TYPE_13__* %28)
  br label %74

30:                                               ; preds = %24, %24, %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 132
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @gatt_convert_sec_action(i32 %35, i32* %5)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @gatt_enc_cmpl_cback, align 4
  %44 = call i32 @BTM_SetEncryption(i32 %39, i32 %42, i32 %43, i32* %5)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BTM_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BTM_CMD_STARTED, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %52, %48, %33
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = call i32 @gatt_add_pending_enc_channel_clcb(%struct.TYPE_12__* %61, %struct.TYPE_13__* %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %74

65:                                               ; preds = %24
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = call i32 @gatt_add_pending_enc_channel_clcb(%struct.TYPE_12__* %66, %struct.TYPE_13__* %67)
  br label %74

69:                                               ; preds = %24
  %70 = load i64, i64* @TRUE, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @gatt_sec_check_complete(i64 %70, %struct.TYPE_13__* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %65, %64, %26
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = load i32, i32* @GATT_SEC_NONE, align 4
  %81 = call i32 @gatt_set_sec_act(%struct.TYPE_12__* %79, i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = load i32, i32* @GATT_CH_OPEN, align 4
  %84 = call i32 @gatt_set_ch_state(%struct.TYPE_12__* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %74
  %86 = load i64, i64* %6, align 8
  ret i64 %86
}

declare dso_local i32 @gatt_get_sec_act(%struct.TYPE_12__*) #1

declare dso_local i32 @gatt_determine_sec_act(%struct.TYPE_13__*) #1

declare dso_local i32 @gatt_set_sec_act(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @gatt_sign_data(%struct.TYPE_13__*) #1

declare dso_local i32 @gatt_convert_sec_action(i32, i32*) #1

declare dso_local i32 @BTM_SetEncryption(i32, i32, i32, i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @gatt_add_pending_enc_channel_clcb(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @gatt_sec_check_complete(i64, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
