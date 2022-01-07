; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_sdio_slave_common_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_sdio_slave_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_IO_CCCR_CARD_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CAP: 0x%02x\0A\00", align 1
@SD_IO_CCCR_HIGHSPEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"HS: 0x%02x\0A\00", align 1
@SD_IO_CCCR_FN_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"IOE: 0x%02x\0A\00", align 1
@SD_IO_CCCR_FN_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"IOR: 0x%02x\0A\00", align 1
@SD_IO_CCCR_INT_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"IE: 0x%02x\0A\00", align 1
@FUNC1_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sdio_slave_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_slave_common_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @SD_IO_CCCR_CARD_CAP, align 4
  %11 = call i32 @sdmmc_io_read_byte(i32* %9, i32 0, i32 %10, i32* %3)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TEST_ESP_OK(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @SD_IO_CCCR_HIGHSPEED, align 4
  %18 = call i32 @sdmmc_io_read_byte(i32* %16, i32 0, i32 %17, i32* %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TEST_ESP_OK(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @SD_IO_CCCR_FN_ENABLE, align 4
  %25 = call i32 @sdmmc_io_read_byte(i32* %23, i32 0, i32 %24, i32* %6)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TEST_ESP_OK(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 0, i32* %7, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @SD_IO_CCCR_FN_READY, align 4
  %32 = call i32 @sdmmc_io_read_byte(i32* %30, i32 0, i32 %31, i32* %7)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = call i32 @BIT(i32 1)
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @SD_IO_CCCR_FN_ENABLE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sdmmc_io_write_byte(i32* %40, i32 0, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TEST_ESP_OK(i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @SD_IO_CCCR_FN_ENABLE, align 4
  %48 = call i32 @sdmmc_io_read_byte(i32* %46, i32 0, i32 %47, i32* %6)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TEST_ESP_OK(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %58, %1
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 1)
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @SD_IO_CCCR_FN_READY, align 4
  %61 = call i32 @sdmmc_io_read_byte(i32* %59, i32 0, i32 %60, i32* %7)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @TEST_ESP_OK(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %53

66:                                               ; preds = %53
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @SD_IO_CCCR_INT_ENABLE, align 4
  %69 = call i32 @sdmmc_io_read_byte(i32* %67, i32 0, i32 %68, i32* %8)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @TEST_ESP_OK(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = call i32 @BIT(i32 0)
  %75 = call i32 @BIT(i32 1)
  %76 = or i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* @SD_IO_CCCR_INT_ENABLE, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @sdmmc_io_write_byte(i32* %79, i32 0, i32 %80, i32 %81, i32* null)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @TEST_ESP_OK(i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @SD_IO_CCCR_INT_ENABLE, align 4
  %87 = call i32 @sdmmc_io_read_byte(i32* %85, i32 0, i32 %86, i32* %8)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @TEST_ESP_OK(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  ret void
}

declare dso_local i32 @sdmmc_io_read_byte(i32*, i32, i32, i32*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sdmmc_io_write_byte(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
