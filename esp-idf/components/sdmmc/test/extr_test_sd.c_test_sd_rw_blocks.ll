; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_test_sd_rw_blocks.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_test_sd_rw_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SDMMC_FREQ_HIGHSPEED = common dso_local global i32 0, align 4
@SDMMC_HOST_FLAG_DDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_sd_rw_blocks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call { i64, i32 } (...) @SDMMC_HOST_DEFAULT()
  store { i64, i32 } %9, { i64, i32 }* %6, align 8
  %10 = bitcast { i64, i32 }* %6 to i8*
  %11 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 %10, i64 12, i1 false)
  %12 = load i32, i32* @SDMMC_FREQ_HIGHSPEED, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = call i32 (...) @SDMMC_SLOT_CONFIG_DEFAULT()
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @SDMMC_HOST_FLAG_DDR, align 4
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = call i32 (...) @sdmmc_host_init()
  %35 = call i32 @TEST_ESP_OK(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @sdmmc_host_init_slot(i32 %36, %struct.TYPE_7__* %7)
  %38 = call i32 @TEST_ESP_OK(i32 %37)
  %39 = call i32* @malloc(i32 4)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @TEST_ASSERT_NOT_NULL(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @sdmmc_card_init(%struct.TYPE_8__* %5, i32* %42)
  %44 = call i32 @TEST_ESP_OK(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @read_write_test(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @free(i32* %47)
  %49 = call i32 (...) @sdmmc_host_deinit()
  %50 = call i32 @TEST_ESP_OK(i32 %49)
  ret void
}

declare dso_local { i64, i32 } @SDMMC_HOST_DEFAULT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SDMMC_SLOT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @sdmmc_host_init(...) #1

declare dso_local i32 @sdmmc_host_init_slot(i32, %struct.TYPE_7__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @sdmmc_card_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @read_write_test(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sdmmc_host_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
