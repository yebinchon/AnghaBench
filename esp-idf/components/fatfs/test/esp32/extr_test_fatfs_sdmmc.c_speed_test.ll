; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/esp32/extr_test_fatfs_sdmmc.c_speed_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/esp32/extr_test_fatfs_sdmmc.c_speed_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SDMMC_FREQ_HIGHSPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/sdcard\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/sdcard/4mb.bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32)* @speed_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speed_test(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @SDMMC_HOST_DEFAULT()
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SDMMC_FREQ_HIGHSPEED, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = call i32 (...) @SDMMC_SLOT_CONFIG_DEFAULT()
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 65536, i32* %20, align 4
  %21 = call i32 @esp_vfs_fat_sdmmc_mount(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %9, i32* %10, %struct.TYPE_7__* %11, i32* null)
  %22 = call i32 @TEST_ESP_OK(i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @test_fatfs_rw_speed(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %24, i64 %25, i32 %26)
  %28 = call i32 (...) @esp_vfs_fat_sdmmc_unmount()
  %29 = call i32 @TEST_ESP_OK(i32 %28)
  ret void
}

declare dso_local i32 @SDMMC_HOST_DEFAULT(...) #1

declare dso_local i32 @SDMMC_SLOT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_vfs_fat_sdmmc_mount(i8*, %struct.TYPE_6__*, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @test_fatfs_rw_speed(i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @esp_vfs_fat_sdmmc_unmount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
