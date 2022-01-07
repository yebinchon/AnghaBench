; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_send_op_cond.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_send_op_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@SCF_CMD_BCR = common dso_local global i32 0, align 4
@SCF_RSP_R4 = common dso_local global i32 0, align 4
@SD_IO_SEND_OP_COND = common dso_local global i32 0, align 4
@SD_IO_OCR_MEM_READY = common dso_local global i64 0, align 8
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@SDMMC_IO_SEND_OP_COND_DELAY_MS = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_io_send_op_cond(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64, i64* @ESP_OK, align 8
  store i64 %10, i64* %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %12 = load i32, i32* @SCF_CMD_BCR, align 4
  %13 = load i32, i32* @SCF_RSP_R4, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %19 = load i32, i32* @SD_IO_SEND_OP_COND, align 4
  store i32 %19, i32* %18, align 4
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %47, %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 100
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @sdmmc_send_cmd(i32* %24, %struct.TYPE_3__* %8)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %50

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @MMC_R4(i32 %32)
  %34 = load i64, i64* @SD_IO_OCR_MEM_READY, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %30
  br label %50

41:                                               ; preds = %37
  %42 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i32, i32* @SDMMC_IO_SEND_OP_COND_DELAY_MS, align 4
  %44 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %45 = sdiv i32 %43, %44
  %46 = call i32 @vTaskDelay(i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %20

50:                                               ; preds = %40, %29, %20
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @ESP_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64*, i64** %6, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @MMC_R4(i32 %59)
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %54, %50
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i64 @sdmmc_send_cmd(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @MMC_R4(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
