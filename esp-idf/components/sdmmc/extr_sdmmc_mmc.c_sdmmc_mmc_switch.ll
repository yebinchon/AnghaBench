; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_mmc.c_sdmmc_mmc_switch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_mmc.c_sdmmc_mmc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MMC_SWITCH_MODE_WRITE_BYTE = common dso_local global i32 0, align 4
@SCF_RSP_R1B = common dso_local global i32 0, align 4
@SCF_CMD_AC = common dso_local global i32 0, align 4
@SCF_WAIT_BUSY = common dso_local global i32 0, align 4
@MMC_SWITCH = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@MMC_R1_SWITCH_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_RESPONSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_mmc_switch(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %12 = load i32, i32* @MMC_SWITCH_MODE_WRITE_BYTE, align 4
  %13 = shl i32 %12, 24
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %13, %15
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %16, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %23 = load i32, i32* @SCF_RSP_R1B, align 4
  %24 = load i32, i32* @SCF_CMD_AC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SCF_WAIT_BUSY, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %22, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %30 = load i32, i32* @MMC_SWITCH, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @sdmmc_send_cmd(i32* %31, %struct.TYPE_3__* %9)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @ESP_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MMC_R1(i32 %38)
  %40 = load i32, i32* @MMC_R1_SWITCH_ERROR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @ESP_ERR_INVALID_RESPONSE, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %36
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i64, i64* %10, align 8
  ret i64 %47
}

declare dso_local i64 @sdmmc_send_cmd(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @MMC_R1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
