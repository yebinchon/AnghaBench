; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_rand_enc_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_rand_enc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i32* }

@.str = private unnamed_addr constant [26 x i8] c"btm_ble_rand_enc_complete\00", align 1
@HCI_SUCCESS = common dso_local global i64 0, align 8
@HCI_BLE_RAND = common dso_local global i64 0, align 8
@BT_OCTET8_LEN = common dso_local global i32 0, align 4
@BT_OCTET16_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_rand_enc_complete(i32* %0, i64 %1, i32 (%struct.TYPE_6__*)** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (%struct.TYPE_6__*)**, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 (%struct.TYPE_6__*)** %2, i32 (%struct.TYPE_6__*)*** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %8, align 8
  %11 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 32)
  %13 = load i32 (%struct.TYPE_6__*)**, i32 (%struct.TYPE_6__*)*** %6, align 8
  %14 = icmp ne i32 (%struct.TYPE_6__*)** %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @STREAM_TO_UINT8(i64 %20, i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCI_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @HCI_BLE_RAND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @BT_OCTET8_LEN, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @BT_OCTET16_LEN, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i32* %40, i32* %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %18
  %46 = load i32 (%struct.TYPE_6__*)**, i32 (%struct.TYPE_6__*)*** %6, align 8
  %47 = icmp ne i32 (%struct.TYPE_6__*)** %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32 (%struct.TYPE_6__*)**, i32 (%struct.TYPE_6__*)*** %6, align 8
  %50 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %49, align 8
  %51 = call i32 %50(%struct.TYPE_6__* %7)
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %15, %3
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
