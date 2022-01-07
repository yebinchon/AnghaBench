; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_spi.c_SPI_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_spi.c_SPI_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CR1_CLEAR_MASK = common dso_local global i64 0, align 8
@SPI_I2SCFGR_I2SMOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SPI_Init(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @IS_SPI_ALL_PERIPH(%struct.TYPE_6__* %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @IS_SPI_DIRECTION_MODE(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IS_SPI_MODE(i32 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IS_SPI_DATASIZE(i32 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @IS_SPI_CPOL(i32 %26)
  %28 = call i32 @assert_param(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IS_SPI_CPHA(i32 %31)
  %33 = call i32 @assert_param(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @IS_SPI_NSS(i32 %36)
  %38 = call i32 @assert_param(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IS_SPI_BAUDRATE_PRESCALER(i32 %41)
  %43 = call i32 @assert_param(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IS_SPI_FIRST_BIT(i32 %46)
  %48 = call i32 @assert_param(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IS_SPI_CRC_POLYNOMIAL(i32 %51)
  %53 = call i32 @assert_param(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* @CR1_CLEAR_MASK, align 8
  %58 = load i64, i64* %5, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %63, %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %71, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %79, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %5, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* @SPI_I2SCFGR_I2SMOD, align 8
  %99 = xor i64 %98, -1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_SPI_ALL_PERIPH(%struct.TYPE_6__*) #1

declare dso_local i32 @IS_SPI_DIRECTION_MODE(i64) #1

declare dso_local i32 @IS_SPI_MODE(i32) #1

declare dso_local i32 @IS_SPI_DATASIZE(i32) #1

declare dso_local i32 @IS_SPI_CPOL(i32) #1

declare dso_local i32 @IS_SPI_CPHA(i32) #1

declare dso_local i32 @IS_SPI_NSS(i32) #1

declare dso_local i32 @IS_SPI_BAUDRATE_PRESCALER(i32) #1

declare dso_local i32 @IS_SPI_FIRST_BIT(i32) #1

declare dso_local i32 @IS_SPI_CRC_POLYNOMIAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
