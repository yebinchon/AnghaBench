; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_dsc_disced.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_dsc_disced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_error = type { i32 }
%struct.ble_gatt_dsc = type { i32 }
%struct.peer = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.ble_gatt_error*, i64, %struct.ble_gatt_dsc*, i8*)* @peer_dsc_disced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_dsc_disced(i64 %0, %struct.ble_gatt_error* %1, i64 %2, %struct.ble_gatt_dsc* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ble_gatt_error*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ble_gatt_dsc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.peer*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.ble_gatt_error* %1, %struct.ble_gatt_error** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ble_gatt_dsc* %3, %struct.ble_gatt_dsc** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.peer*
  store %struct.peer* %14, %struct.peer** %11, align 8
  %15 = load %struct.peer*, %struct.peer** %11, align 8
  %16 = getelementptr inbounds %struct.peer, %struct.peer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %7, align 8
  %23 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %39 [
    i32 0, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %5
  %26 = load %struct.peer*, %struct.peer** %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.ble_gatt_dsc*, %struct.ble_gatt_dsc** %9, align 8
  %29 = call i32 @peer_dsc_add(%struct.peer* %26, i64 %27, %struct.ble_gatt_dsc* %28)
  store i32 %29, i32* %12, align 4
  br label %43

30:                                               ; preds = %5
  %31 = load %struct.peer*, %struct.peer** %11, align 8
  %32 = getelementptr inbounds %struct.peer, %struct.peer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.peer*, %struct.peer** %11, align 8
  %37 = call i32 @peer_disc_dscs(%struct.peer* %36)
  br label %38

38:                                               ; preds = %35, %30
  store i32 0, i32* %12, align 4
  br label %43

39:                                               ; preds = %5
  %40 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %7, align 8
  %41 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %38, %25
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.peer*, %struct.peer** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @peer_disc_complete(%struct.peer* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @peer_dsc_add(%struct.peer*, i64, %struct.ble_gatt_dsc*) #1

declare dso_local i32 @peer_disc_dscs(%struct.peer*) #1

declare dso_local i32 @peer_disc_complete(%struct.peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
