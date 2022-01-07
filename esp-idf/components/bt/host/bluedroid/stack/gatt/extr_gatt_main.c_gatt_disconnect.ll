; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_disconnect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"gatt_disconnect \00", align 1
@TRUE = common dso_local global i32 0, align 4
@GATT_CH_CLOSING = common dso_local global i64 0, align 8
@L2CAP_ATT_CID = common dso_local global i64 0, align 8
@GATT_CH_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"gatt_disconnect already in closing state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_disconnect(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i64 @gatt_get_ch_state(%struct.TYPE_5__* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @GATT_CH_CLOSING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @L2CAP_ATT_CID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @GATT_CH_OPEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* @L2CAP_ATT_CID, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @L2CA_RemoveFixedChnl(i64 %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load i64, i64* @GATT_CH_CLOSING, align 8
  %34 = call i32 @gatt_set_ch_state(%struct.TYPE_5__* %32, i64 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @L2CA_CancelBleConnectReq(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %25
  br label %45

40:                                               ; preds = %15
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @L2CA_DisconnectReq(i64 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %39
  br label %48

46:                                               ; preds = %9
  %47 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %45
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i64 @gatt_get_ch_state(%struct.TYPE_5__*) #1

declare dso_local i32 @L2CA_RemoveFixedChnl(i64, i32) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @L2CA_CancelBleConnectReq(i32) #1

declare dso_local i32 @L2CA_DisconnectReq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
