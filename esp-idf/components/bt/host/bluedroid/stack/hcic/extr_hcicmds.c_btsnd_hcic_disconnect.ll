; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_disconnect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_DISCONNECT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_DISCONNECT = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_disconnect(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @HCIC_PARAM_SIZE_DISCONNECT, align 8
  %9 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 1
  %16 = bitcast %struct.TYPE_4__* %15 to i64*
  store i64* %16, i64** %7, align 8
  %17 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %18 = load i64, i64* @HCIC_PARAM_SIZE_DISCONNECT, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i32, i32* @HCI_DISCONNECT, align 4
  %26 = call i32 @UINT16_TO_STREAM(i64* %24, i32 %25)
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* @HCIC_PARAM_SIZE_DISCONNECT, align 8
  %29 = call i32 @UINT8_TO_STREAM(i64* %27, i64 %28)
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @UINT16_TO_STREAM(i64* %30, i32 %31)
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @UINT8_TO_STREAM(i64* %33, i64 %34)
  %36 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = call i32 @btu_hcif_send_cmd(i32 %36, %struct.TYPE_4__* %37)
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %13, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
