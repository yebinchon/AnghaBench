; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_probe_sd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_probe_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SDMMC_HOST_FLAG_1BIT = common dso_local global i32 0, align 4
@SDMMC_HOST_FLAG_8BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"host driver does not support 8-line DDR mode yet\00", align 1
@SDMMC_HOST_FLAG_DDR = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @probe_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_sd(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = call i32 (...) @sd_test_board_power_on()
  %15 = call { i64, i32 } (...) @SDMMC_HOST_DEFAULT()
  store { i64, i32 } %15, { i64, i32 }* %10, align 8
  %16 = bitcast { i64, i32 }* %10 to i8*
  %17 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %16, i64 12, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = call i32 (...) @SDMMC_SLOT_CONFIG_DEFAULT()
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @SDMMC_HOST_FLAG_1BIT, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %49

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @SDMMC_HOST_FLAG_8BIT, align 4
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 4, i32* %39, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i1 [ false, %40 ], [ true, %43 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %44, %33
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @SDMMC_HOST_FLAG_DDR, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = call i32 (...) @sdmmc_host_init()
  %60 = call i32 @TEST_ESP_OK(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @sdmmc_host_init_slot(i32 %61, %struct.TYPE_7__* %11)
  %63 = call i32 @TEST_ESP_OK(i32 %62)
  %64 = call i32* @malloc(i32 4)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @TEST_ASSERT_NOT_NULL(i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @sdmmc_card_init(%struct.TYPE_8__* %9, i32* %67)
  %69 = call i32 @TEST_ESP_OK(i32 %68)
  %70 = load i32, i32* @stdout, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @sdmmc_card_print_info(i32 %70, i32* %71)
  %73 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %74 = call i32* @heap_caps_malloc(i32 512, i32 %73)
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @sdmmc_read_sectors(i32* %75, i32* %76, i32 0, i32 1)
  %78 = call i32 @TEST_ESP_OK(i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @free(i32* %79)
  %81 = call i32 (...) @sdmmc_host_deinit()
  %82 = call i32 @TEST_ESP_OK(i32 %81)
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @free(i32* %83)
  %85 = call i32 (...) @sd_test_board_power_off()
  ret void
}

declare dso_local i32 @sd_test_board_power_on(...) #1

declare dso_local { i64, i32 } @SDMMC_HOST_DEFAULT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SDMMC_SLOT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @sdmmc_host_init(...) #1

declare dso_local i32 @sdmmc_host_init_slot(i32, %struct.TYPE_7__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @sdmmc_card_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @sdmmc_card_print_info(i32, i32*) #1

declare dso_local i32* @heap_caps_malloc(i32, i32) #1

declare dso_local i32 @sdmmc_read_sectors(i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sdmmc_host_deinit(...) #1

declare dso_local i32 @sd_test_board_power_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
