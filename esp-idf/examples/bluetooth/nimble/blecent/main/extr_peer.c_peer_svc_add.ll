; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_svc_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_svc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32 }
%struct.ble_gatt_svc = type { i32 }
%struct.peer_svc = type { i32, %struct.ble_gatt_svc }

@peer_svc_pool = common dso_local global i32 0, align 4
@BLE_HS_ENOMEM = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peer*, %struct.ble_gatt_svc*)* @peer_svc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_svc_add(%struct.peer* %0, %struct.ble_gatt_svc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peer*, align 8
  %5 = alloca %struct.ble_gatt_svc*, align 8
  %6 = alloca %struct.peer_svc*, align 8
  %7 = alloca %struct.peer_svc*, align 8
  store %struct.peer* %0, %struct.peer** %4, align 8
  store %struct.ble_gatt_svc* %1, %struct.ble_gatt_svc** %5, align 8
  %8 = load %struct.peer*, %struct.peer** %4, align 8
  %9 = load %struct.ble_gatt_svc*, %struct.ble_gatt_svc** %5, align 8
  %10 = getelementptr inbounds %struct.ble_gatt_svc, %struct.ble_gatt_svc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.peer_svc* @peer_svc_find(%struct.peer* %8, i32 %11, %struct.peer_svc** %6)
  store %struct.peer_svc* %12, %struct.peer_svc** %7, align 8
  %13 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %14 = icmp ne %struct.peer_svc* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = call %struct.peer_svc* @os_memblock_get(i32* @peer_svc_pool)
  store %struct.peer_svc* %17, %struct.peer_svc** %7, align 8
  %18 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %19 = icmp eq %struct.peer_svc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @BLE_HS_ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %16
  %23 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %24 = call i32 @memset(%struct.peer_svc* %23, i32 0, i32 8)
  %25 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %26 = getelementptr inbounds %struct.peer_svc, %struct.peer_svc* %25, i32 0, i32 1
  %27 = load %struct.ble_gatt_svc*, %struct.ble_gatt_svc** %5, align 8
  %28 = bitcast %struct.ble_gatt_svc* %26 to i8*
  %29 = bitcast %struct.ble_gatt_svc* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %31 = getelementptr inbounds %struct.peer_svc, %struct.peer_svc* %30, i32 0, i32 0
  %32 = call i32 @SLIST_INIT(i32* %31)
  %33 = load %struct.peer_svc*, %struct.peer_svc** %6, align 8
  %34 = icmp eq %struct.peer_svc* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.peer*, %struct.peer** %4, align 8
  %37 = getelementptr inbounds %struct.peer, %struct.peer* %36, i32 0, i32 0
  %38 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %39 = load i32, i32* @next, align 4
  %40 = call i32 @SLIST_INSERT_HEAD(i32* %37, %struct.peer_svc* %38, i32 %39)
  br label %46

41:                                               ; preds = %22
  %42 = load %struct.peer_svc*, %struct.peer_svc** %6, align 8
  %43 = load %struct.peer_svc*, %struct.peer_svc** %7, align 8
  %44 = load i32, i32* @next, align 4
  %45 = call i32 @SLIST_INSERT_AFTER(%struct.peer_svc* %42, %struct.peer_svc* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %20, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.peer_svc* @peer_svc_find(%struct.peer*, i32, %struct.peer_svc**) #1

declare dso_local %struct.peer_svc* @os_memblock_get(i32*) #1

declare dso_local i32 @memset(%struct.peer_svc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.peer_svc*, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.peer_svc*, %struct.peer_svc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
