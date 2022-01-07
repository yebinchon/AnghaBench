; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_chr_access_sec_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_chr_access_sec_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ble_gatt_access_ctxt = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@gatt_svr_chr_sec_test_rand_uuid = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@BLE_ATT_ERR_INSUFFICIENT_RES = common dso_local global i32 0, align 4
@gatt_svr_chr_sec_test_static_uuid = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@gatt_svr_sec_test_static_val = common dso_local global i32 0, align 4
@BLE_ATT_ERR_UNLIKELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ble_gatt_access_ctxt*, i8*)* @gatt_svr_chr_access_sec_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_svr_chr_access_sec_test(i32 %0, i32 %1, %struct.ble_gatt_access_ctxt* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ble_gatt_access_ctxt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ble_gatt_access_ctxt* %2, %struct.ble_gatt_access_ctxt** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %14 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i64 @ble_uuid_cmp(i32* %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_svr_chr_sec_test_rand_uuid, i32 0, i32 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %23 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 129
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 (...) @rand()
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %30 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @os_mbuf_append(i32 %31, i32* %11, i32 4)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  store i32 %39, i32* %5, align 4
  br label %72

40:                                               ; preds = %4
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @ble_uuid_cmp(i32* %41, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gatt_svr_chr_sec_test_static_uuid, i32 0, i32 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %46 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %66 [
    i32 129, label %48
    i32 128, label %60
  ]

48:                                               ; preds = %44
  %49 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %50 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @os_mbuf_append(i32 %51, i32* @gatt_svr_sec_test_static_val, i32 4)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 0, %55 ], [ %57, %56 ]
  store i32 %59, i32* %5, align 4
  br label %72

60:                                               ; preds = %44
  %61 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %62 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @gatt_svr_chr_write(i32 %63, i32 4, i32 4, i32* @gatt_svr_sec_test_static_val, i32* null)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %44
  %67 = call i32 @assert(i32 0)
  %68 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %40
  %70 = call i32 @assert(i32 0)
  %71 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %66, %60, %58, %38
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @ble_uuid_cmp(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @os_mbuf_append(i32, i32*, i32) #1

declare dso_local i32 @gatt_svr_chr_write(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
