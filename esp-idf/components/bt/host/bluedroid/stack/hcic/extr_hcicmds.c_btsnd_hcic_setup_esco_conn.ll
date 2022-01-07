; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_setup_esco_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_setup_esco_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_SETUP_ESCO = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_SETUP_ESCO_CONNECTION = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_setup_esco_conn(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i64*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* @HCIC_PARAM_SIZE_SETUP_ESCO, align 8
  %19 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %16, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %8, align 4
  br label %65

23:                                               ; preds = %7
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %26 = bitcast %struct.TYPE_4__* %25 to i64*
  store i64* %26, i64** %17, align 8
  %27 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %28 = load i64, i64* @HCIC_PARAM_SIZE_SETUP_ESCO, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** %17, align 8
  %35 = load i32, i32* @HCI_SETUP_ESCO_CONNECTION, align 4
  %36 = call i32 @UINT16_TO_STREAM(i64* %34, i32 %35)
  %37 = load i64*, i64** %17, align 8
  %38 = load i64, i64* @HCIC_PARAM_SIZE_SETUP_ESCO, align 8
  %39 = call i32 @UINT8_TO_STREAM(i64* %37, i64 %38)
  %40 = load i64*, i64** %17, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @UINT16_TO_STREAM(i64* %40, i32 %41)
  %43 = load i64*, i64** %17, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @UINT32_TO_STREAM(i64* %43, i32 %44)
  %46 = load i64*, i64** %17, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @UINT32_TO_STREAM(i64* %46, i32 %47)
  %49 = load i64*, i64** %17, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @UINT16_TO_STREAM(i64* %49, i32 %50)
  %52 = load i64*, i64** %17, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @UINT16_TO_STREAM(i64* %52, i32 %53)
  %55 = load i64*, i64** %17, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @UINT8_TO_STREAM(i64* %55, i64 %56)
  %58 = load i64*, i64** %17, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @UINT16_TO_STREAM(i64* %58, i32 %59)
  %61 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %63 = call i32 @btu_hcif_send_cmd(i32 %61, %struct.TYPE_4__* %62)
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %23, %21
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i32 @UINT32_TO_STREAM(i64*, i32) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
