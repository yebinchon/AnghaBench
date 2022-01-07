; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_chr_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_chr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_mbuf = type { i32 }

@BLE_ATT_ERR_INVALID_ATTR_VALUE_LEN = common dso_local global i32 0, align 4
@BLE_ATT_ERR_UNLIKELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.os_mbuf*, i64, i64, i8*, i64*)* @gatt_svr_chr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_svr_chr_write(%struct.os_mbuf* %0, i64 %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.os_mbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.os_mbuf* %0, %struct.os_mbuf** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.os_mbuf*, %struct.os_mbuf** %7, align 8
  %15 = call i64 @OS_MBUF_PKTLEN(%struct.os_mbuf* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %5
  %24 = load i32, i32* @BLE_ATT_ERR_INVALID_ATTR_VALUE_LEN, align 4
  store i32 %24, i32* %6, align 4
  br label %36

25:                                               ; preds = %19
  %26 = load %struct.os_mbuf*, %struct.os_mbuf** %7, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 @ble_hs_mbuf_to_flat(%struct.os_mbuf* %26, i8* %27, i64 %28, i64* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %33, %23
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i64 @OS_MBUF_PKTLEN(%struct.os_mbuf*) #1

declare dso_local i32 @ble_hs_mbuf_to_flat(%struct.os_mbuf*, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
