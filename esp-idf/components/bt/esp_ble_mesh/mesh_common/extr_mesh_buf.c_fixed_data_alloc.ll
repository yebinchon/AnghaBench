; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_fixed_data_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_fixed_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf = type { %struct.net_buf_pool* }
%struct.net_buf_pool = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_buf_pool_fixed* }
%struct.net_buf_pool_fixed = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.net_buf*, i64*, i32)* @fixed_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fixed_data_alloc(%struct.net_buf* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.net_buf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_buf_pool*, align 8
  %8 = alloca %struct.net_buf_pool_fixed*, align 8
  store %struct.net_buf* %0, %struct.net_buf** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %10 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %9, i32 0, i32 0
  %11 = load %struct.net_buf_pool*, %struct.net_buf_pool** %10, align 8
  store %struct.net_buf_pool* %11, %struct.net_buf_pool** %7, align 8
  %12 = load %struct.net_buf_pool*, %struct.net_buf_pool** %7, align 8
  %13 = getelementptr inbounds %struct.net_buf_pool, %struct.net_buf_pool* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.net_buf_pool_fixed*, %struct.net_buf_pool_fixed** %15, align 8
  store %struct.net_buf_pool_fixed* %16, %struct.net_buf_pool_fixed** %8, align 8
  %17 = load %struct.net_buf_pool_fixed*, %struct.net_buf_pool_fixed** %8, align 8
  %18 = getelementptr inbounds %struct.net_buf_pool_fixed, %struct.net_buf_pool_fixed* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @MIN(i32 %19, i64 %21)
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.net_buf_pool_fixed*, %struct.net_buf_pool_fixed** %8, align 8
  %25 = getelementptr inbounds %struct.net_buf_pool_fixed, %struct.net_buf_pool_fixed* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.net_buf_pool_fixed*, %struct.net_buf_pool_fixed** %8, align 8
  %28 = getelementptr inbounds %struct.net_buf_pool_fixed, %struct.net_buf_pool_fixed* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %31 = call i32 @net_buf_id(%struct.net_buf* %30)
  %32 = mul nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %26, i64 %33
  ret i32* %34
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @net_buf_id(%struct.net_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
