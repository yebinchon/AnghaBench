; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_chr_disced.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_chr_disced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_error = type { i32 }
%struct.ble_gatt_chr = type { i32 }
%struct.peer = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.ble_gatt_error*, %struct.ble_gatt_chr*, i8*)* @peer_chr_disced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_chr_disced(i64 %0, %struct.ble_gatt_error* %1, %struct.ble_gatt_chr* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ble_gatt_error*, align 8
  %7 = alloca %struct.ble_gatt_chr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.peer*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.ble_gatt_error* %1, %struct.ble_gatt_error** %6, align 8
  store %struct.ble_gatt_chr* %2, %struct.ble_gatt_chr** %7, align 8
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
  switch i32 %22, label %42 [
    i32 0, label %23
    i32 128, label %33
  ]

23:                                               ; preds = %4
  %24 = load %struct.peer*, %struct.peer** %9, align 8
  %25 = load %struct.peer*, %struct.peer** %9, align 8
  %26 = getelementptr inbounds %struct.peer, %struct.peer* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ble_gatt_chr*, %struct.ble_gatt_chr** %7, align 8
  %32 = call i32 @peer_chr_add(%struct.peer* %24, i32 %30, %struct.ble_gatt_chr* %31)
  store i32 %32, i32* %10, align 4
  br label %46

33:                                               ; preds = %4
  %34 = load %struct.peer*, %struct.peer** %9, align 8
  %35 = getelementptr inbounds %struct.peer, %struct.peer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.peer*, %struct.peer** %9, align 8
  %40 = call i32 @peer_disc_chrs(%struct.peer* %39)
  br label %41

41:                                               ; preds = %38, %33
  store i32 0, i32* %10, align 4
  br label %46

42:                                               ; preds = %4
  %43 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %6, align 8
  %44 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %41, %23
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.peer*, %struct.peer** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @peer_disc_complete(%struct.peer* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @peer_chr_add(%struct.peer*, i32, %struct.ble_gatt_chr*) #1

declare dso_local i32 @peer_disc_chrs(%struct.peer*) #1

declare dso_local i32 @peer_disc_complete(%struct.peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
