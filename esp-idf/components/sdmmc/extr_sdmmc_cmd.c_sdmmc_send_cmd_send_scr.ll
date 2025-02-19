; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_cmd.c_sdmmc_send_cmd_send_scr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_cmd.c_sdmmc_send_cmd_send_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32* }

@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@SCF_CMD_ADTC = common dso_local global i32 0, align 4
@SCF_CMD_READ = common dso_local global i32 0, align 4
@SCF_RSP_R1 = common dso_local global i32 0, align 4
@SD_APP_SEND_SCR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_send_cmd_send_scr(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 8, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %12 = call i64 @heap_caps_malloc(i64 %10, i32 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %17, i64* %3, align 8
  br label %46

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %24 = load i32, i32* @SCF_CMD_ADTC, align 4
  %25 = load i32, i32* @SCF_CMD_READ, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SCF_RSP_R1, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %23, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %30 = load i32, i32* @SD_APP_SEND_SCR, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %31, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @sdmmc_send_app_cmd(i32* %33, %struct.TYPE_3__* %8)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @ESP_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @sdmmc_decode_scr(i32* %39, i32* %40)
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @free(i32* %43)
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %42, %16
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @heap_caps_malloc(i64, i32) #1

declare dso_local i64 @sdmmc_send_app_cmd(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @sdmmc_decode_scr(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
