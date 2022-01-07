; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/esp32/extr_test_fatfs_sdmmc.c_test_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/esp32/extr_test_fatfs_sdmmc.c_test_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@__const.test_setup.mount_config = private unnamed_addr constant %struct.TYPE_3__ { i32 1, i32 5, i32 16384 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"/sdcard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = call i32 (...) @SDMMC_HOST_DEFAULT()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @SDMMC_SLOT_CONFIG_DEFAULT()
  store i32 %5, i32* %2, align 4
  %6 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_setup.mount_config to i8*), i64 12, i1 false)
  %7 = call i32 @esp_vfs_fat_sdmmc_mount(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %1, i32* %2, %struct.TYPE_3__* %3, i32* null)
  %8 = call i32 @TEST_ESP_OK(i32 %7)
  ret void
}

declare dso_local i32 @SDMMC_HOST_DEFAULT(...) #1

declare dso_local i32 @SDMMC_SLOT_CONFIG_DEFAULT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_vfs_fat_sdmmc_mount(i8*, i32*, i32*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
