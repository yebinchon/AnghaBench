; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_test_master_pins.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_test_master_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@TEST_SPI_HOST = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32)* @test_master_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_master_pins(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = call { i64, i32 } (...) @SPI_BUS_TEST_DEFAULT_CONFIG()
  store { i64, i32 } %15, { i64, i32 }* %12, align 8
  %16 = bitcast { i64, i32 }* %12 to i8*
  %17 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %16, i64 12, i1 false)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @SPI_DEVICE_TEST_DEFAULT_CONFIG()
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @TEST_SPI_HOST, align 4
  %29 = call i64 @spi_bus_initialize(i32 %28, %struct.TYPE_8__* %11, i32 1)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @ESP_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %5, align 8
  br label %49

35:                                               ; preds = %4
  %36 = load i32, i32* @TEST_SPI_HOST, align 4
  %37 = call i64 @spi_bus_add_device(i32 %36, %struct.TYPE_7__* %13, i32* %14)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @TEST_SPI_HOST, align 4
  %43 = call i32 @spi_bus_free(i32 %42)
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %5, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @master_free_device_bus(i32 %46)
  %48 = load i64, i64* @ESP_OK, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %45, %41, %33
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local { i64, i32 } @SPI_BUS_TEST_DEFAULT_CONFIG(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SPI_DEVICE_TEST_DEFAULT_CONFIG(...) #1

declare dso_local i64 @spi_bus_initialize(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @spi_bus_add_device(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @spi_bus_free(i32) #1

declare dso_local i32 @master_free_device_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
