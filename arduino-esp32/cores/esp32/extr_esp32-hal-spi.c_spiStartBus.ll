; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-spi.c_spiStartBus.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-spi.c_spiStartBus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@_spi_bus_array = common dso_local global %struct.TYPE_13__* null, align 8
@HSPI = common dso_local global i32 0, align 4
@DPORT_PERIP_CLK_EN_REG = common dso_local global i32 0, align 4
@DPORT_SPI_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PERIP_RST_EN_REG = common dso_local global i32 0, align 4
@DPORT_SPI_RST = common dso_local global i32 0, align 4
@VSPI = common dso_local global i32 0, align 4
@DPORT_SPI_CLK_EN_2 = common dso_local global i32 0, align 4
@DPORT_SPI_RST_2 = common dso_local global i32 0, align 4
@DPORT_SPI_CLK_EN_1 = common dso_local global i32 0, align 4
@DPORT_SPI_RST_1 = common dso_local global i32 0, align 4
@_on_apb_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @spiStartBus(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %113

15:                                               ; preds = %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_spi_bus_array, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %18
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = call i32* (...) @xSemaphoreCreateMutex()
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %113

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @HSPI, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* @DPORT_PERIP_CLK_EN_REG, align 4
  %40 = load i32, i32* @DPORT_SPI_CLK_EN, align 4
  %41 = call i32 @DPORT_SET_PERI_REG_MASK(i32 %39, i32 %40)
  %42 = load i32, i32* @DPORT_PERIP_RST_EN_REG, align 4
  %43 = load i32, i32* @DPORT_SPI_RST, align 4
  %44 = call i32 @DPORT_CLEAR_PERI_REG_MASK(i32 %42, i32 %43)
  br label %64

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @VSPI, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @DPORT_PERIP_CLK_EN_REG, align 4
  %51 = load i32, i32* @DPORT_SPI_CLK_EN_2, align 4
  %52 = call i32 @DPORT_SET_PERI_REG_MASK(i32 %50, i32 %51)
  %53 = load i32, i32* @DPORT_PERIP_RST_EN_REG, align 4
  %54 = load i32, i32* @DPORT_SPI_RST_2, align 4
  %55 = call i32 @DPORT_CLEAR_PERI_REG_MASK(i32 %53, i32 %54)
  br label %63

56:                                               ; preds = %45
  %57 = load i32, i32* @DPORT_PERIP_CLK_EN_REG, align 4
  %58 = load i32, i32* @DPORT_SPI_CLK_EN_1, align 4
  %59 = call i32 @DPORT_SET_PERI_REG_MASK(i32 %57, i32 %58)
  %60 = load i32, i32* @DPORT_PERIP_RST_EN_REG, align 4
  %61 = load i32, i32* @DPORT_SPI_RST_1, align 4
  %62 = call i32 @DPORT_CLEAR_PERI_REG_MASK(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = call i32 @spiStopBus(%struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @spiSetDataMode(%struct.TYPE_13__* %67, i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @spiSetBitOrder(%struct.TYPE_13__* %70, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @spiSetClockDiv(%struct.TYPE_13__* %73, i32 %74)
  %76 = call i32 (...) @SPI_MUTEX_LOCK()
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %104, %64
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 16
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %92

107:                                              ; preds = %92
  %108 = call i32 (...) @SPI_MUTEX_UNLOCK()
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %110 = load i32, i32* @_on_apb_change, align 4
  %111 = call i32 @addApbChangeCallback(%struct.TYPE_13__* %109, i32 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %5, align 8
  br label %113

113:                                              ; preds = %107, %32, %14
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %114
}

declare dso_local i32* @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @DPORT_SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @DPORT_CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @spiStopBus(%struct.TYPE_13__*) #1

declare dso_local i32 @spiSetDataMode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @spiSetBitOrder(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @spiSetClockDiv(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SPI_MUTEX_LOCK(...) #1

declare dso_local i32 @SPI_MUTEX_UNLOCK(...) #1

declare dso_local i32 @addApbChangeCallback(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
