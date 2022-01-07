; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_ack_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_ack_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_rx = type { i64, i32, i32 }

@BLE_MESH_TTL_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seg_rx*)* @ack_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ack_timeout(%struct.seg_rx* %0) #0 {
  %2 = alloca %struct.seg_rx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.seg_rx* %0, %struct.seg_rx** %2, align 8
  %5 = load %struct.seg_rx*, %struct.seg_rx** %2, align 8
  %6 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BLE_MESH_TTL_DEFAULT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @bt_mesh_default_ttl_get()
  store i32 %11, i32* %4, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.seg_rx*, %struct.seg_rx** %2, align 8
  %14 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %4, align 4
  %19 = mul i32 %18, 50
  %20 = add i32 150, %19
  %21 = call i32 @K_MSEC(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.seg_rx*, %struct.seg_rx** %2, align 8
  %23 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  %26 = load %struct.seg_rx*, %struct.seg_rx** %2, align 8
  %27 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @popcount(i32 %28)
  %30 = sub i32 %25, %29
  %31 = mul i32 %30, 100
  %32 = call i32 @K_MSEC(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @K_MSEC(i32 400)
  %37 = call i32 @MAX(i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @bt_mesh_default_ttl_get(...) #1

declare dso_local i32 @K_MSEC(i32) #1

declare dso_local i32 @popcount(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
