; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_svc_disced.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_svc_disced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_error = type { i32 }
%struct.ble_gatt_svc = type { i32 }
%struct.peer = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.ble_gatt_error*, %struct.ble_gatt_svc*, i8*)* @peer_svc_disced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_svc_disced(i64 %0, %struct.ble_gatt_error* %1, %struct.ble_gatt_svc* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ble_gatt_error*, align 8
  %7 = alloca %struct.ble_gatt_svc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.peer*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.ble_gatt_error* %1, %struct.ble_gatt_error** %6, align 8
  store %struct.ble_gatt_svc* %2, %struct.ble_gatt_svc** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.peer*
  store %struct.peer* %12, %struct.peer** %9, align 8
  %13 = load %struct.peer*, %struct.peer** %9, align 8
  %14 = getelementptr inbounds %struct.peer, %struct.peer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %6, align 8
  %21 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %36 [
    i32 0, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %4
  %24 = load %struct.peer*, %struct.peer** %9, align 8
  %25 = load %struct.ble_gatt_svc*, %struct.ble_gatt_svc** %7, align 8
  %26 = call i32 @peer_svc_add(%struct.peer* %24, %struct.ble_gatt_svc* %25)
  store i32 %26, i32* %10, align 4
  br label %40

27:                                               ; preds = %4
  %28 = load %struct.peer*, %struct.peer** %9, align 8
  %29 = getelementptr inbounds %struct.peer, %struct.peer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.peer*, %struct.peer** %9, align 8
  %34 = call i32 @peer_disc_chrs(%struct.peer* %33)
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %10, align 4
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %6, align 8
  %38 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %35, %23
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.peer*, %struct.peer** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @peer_disc_complete(%struct.peer* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @peer_svc_add(%struct.peer*, %struct.ble_gatt_svc*) #1

declare dso_local i32 @peer_disc_chrs(%struct.peer*) #1

declare dso_local i32 @peer_disc_complete(%struct.peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
