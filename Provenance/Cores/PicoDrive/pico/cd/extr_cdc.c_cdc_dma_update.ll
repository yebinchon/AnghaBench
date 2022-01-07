; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_dma_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_dma_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32* }

@cdc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@BIT_DTBSY = common dso_local global i32 0, align 4
@BIT_DTEN = common dso_local global i32 0, align 4
@BIT_DTEI = common dso_local global i32 0, align 4
@BIT_DTEIEN = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@PCDS_IEN5 = common dso_local global i32 0, align 4
@EL_INTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cdc DTE irq 5\00", align 1
@DMA_BYTES_PER_LINE = common dso_local global i32 0, align 4
@length = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdc_dma_update() #0 {
  %1 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %3 = add nsw i32 %2, 1
  %4 = ashr i32 %3, 1
  %5 = call i32 @do_dma(i32 (i32)* %1, i32 %4)
  store i32 61440, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %6 = load i32, i32* @BIT_DTBSY, align 4
  %7 = load i32, i32* @BIT_DTEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %11 = load i32, i32* @BIT_DTEI, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %16 = load i32, i32* @BIT_DTEIEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 51
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCDS_IEN5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @EL_INTS, align 4
  %30 = call i32 @elprintf(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @SekInterruptS68k(i32 5)
  br label %32

32:                                               ; preds = %28, %19
  br label %33

33:                                               ; preds = %32, %0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 7
  %40 = or i32 %39, 128
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %40, i32* %44, align 4
  store i32 (i32)* null, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 8
  ret void
}

declare dso_local i32 @do_dma(i32 (i32)*, i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @SekInterruptS68k(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
