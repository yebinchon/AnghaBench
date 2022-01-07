; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_msg_cache_match.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_msg_cache_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_net_rx = type { i64 }
%struct.net_buf_simple = type { i32 }

@msg_cache = common dso_local global i64* null, align 8
@msg_cache_next = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_net_rx*, %struct.net_buf_simple*)* @msg_cache_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_cache_match(%struct.bt_mesh_net_rx* %0, %struct.net_buf_simple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_net_rx*, align 8
  %5 = alloca %struct.net_buf_simple*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bt_mesh_net_rx* %0, %struct.bt_mesh_net_rx** %4, align 8
  store %struct.net_buf_simple* %1, %struct.net_buf_simple** %5, align 8
  %8 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %4, align 8
  %9 = load %struct.net_buf_simple*, %struct.net_buf_simple** %5, align 8
  %10 = call i64 @msg_hash(%struct.bt_mesh_net_rx* %8, %struct.net_buf_simple* %9)
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64*, i64** @msg_cache, align 8
  %14 = call i64 @ARRAY_SIZE(i64* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i64*, i64** @msg_cache, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %43

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load i64, i64* @msg_cache_next, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* @msg_cache_next, align 8
  %31 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %4, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64*, i64** @msg_cache, align 8
  %35 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %4, align 8
  %36 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load i64*, i64** @msg_cache, align 8
  %40 = call i64 @ARRAY_SIZE(i64* %39)
  %41 = load i64, i64* @msg_cache_next, align 8
  %42 = urem i64 %41, %40
  store i64 %42, i64* @msg_cache_next, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %28, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @msg_hash(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
