; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_chip_generic_config_host_io_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_chip_generic_config_host_io_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* }

@CMD_FASTRD_QIO = common dso_local global i32 0, align 4
@CMD_FASTRD_QUAD = common dso_local global i32 0, align 4
@CMD_FASTRD_DIO = common dso_local global i32 0, align 4
@CMD_FASTRD_DUAL = common dso_local global i32 0, align 4
@CMD_FASTRD = common dso_local global i32 0, align 4
@CMD_READ = common dso_local global i32 0, align 4
@ESP_ERR_FLASH_NOT_INITIALISED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_flash_chip_generic_config_host_io_mode(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %22 [
    i32 130, label %10
    i32 129, label %12
    i32 133, label %14
    i32 132, label %16
    i32 131, label %18
    i32 128, label %20
  ]

10:                                               ; preds = %1
  store i32 32, i32* %5, align 4
  store i32 4, i32* %4, align 4
  %11 = load i32, i32* @CMD_FASTRD_QIO, align 4
  store i32 %11, i32* %6, align 4
  br label %24

12:                                               ; preds = %1
  store i32 24, i32* %5, align 4
  store i32 8, i32* %4, align 4
  %13 = load i32, i32* @CMD_FASTRD_QUAD, align 4
  store i32 %13, i32* %6, align 4
  br label %24

14:                                               ; preds = %1
  store i32 28, i32* %5, align 4
  store i32 2, i32* %4, align 4
  %15 = load i32, i32* @CMD_FASTRD_DIO, align 4
  store i32 %15, i32* %6, align 4
  br label %24

16:                                               ; preds = %1
  store i32 24, i32* %5, align 4
  store i32 8, i32* %4, align 4
  %17 = load i32, i32* @CMD_FASTRD_DUAL, align 4
  store i32 %17, i32* %6, align 4
  br label %24

18:                                               ; preds = %1
  store i32 24, i32* %5, align 4
  store i32 8, i32* %4, align 4
  %19 = load i32, i32* @CMD_FASTRD, align 4
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %1
  store i32 24, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %21 = load i32, i32* @CMD_READ, align 4
  store i32 %21, i32* %6, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ESP_ERR_FLASH_NOT_INITIALISED, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %20, %18, %16, %14, %12, %10
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %29(%struct.TYPE_5__* %32, i32 %33, i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %24, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
