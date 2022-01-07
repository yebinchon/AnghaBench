; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_decoder_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_decoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32, i32*, i32, i32** }
%struct.TYPE_4__ = type { i32* }

@cdc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@BIT_DECEN = common dso_local global i32 0, align 4
@BIT_DECI = common dso_local global i32 0, align 4
@BIT_DECIEN = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@PCDS_IEN5 = common dso_local global i32 0, align 4
@EL_INTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cdc DEC irq 5\00", align 1
@BIT_WRRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_decoder_update(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BIT_DECEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %1
  %12 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @memcpy(i32* %14, i32* %15, i32 8)
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @BIT_DECI, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %22 = and i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %24 = load i32, i32* @BIT_DECIEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %11
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 51
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCDS_IEN5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @EL_INTS, align 4
  %38 = call i32 @elprintf(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @SekInterruptS68k(i32 5)
  br label %40

40:                                               ; preds = %36, %27
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BIT_WRRQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %41
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %50 = add nsw i32 %49, 2352
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %52 = add nsw i32 %51, 2352
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %54 = and i32 %53, 16383
  store i32 %54, i32* %4, align 4
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @memcpy(i32* %58, i32* %59, i32 4)
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @cdd_read_data(i32* %65)
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 14332
  br i1 %68, label %69, label %78

69:                                               ; preds = %48
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 16384
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 2048
  %75 = add nsw i32 %74, 4
  %76 = sub nsw i32 %75, 16384
  %77 = call i32 @memcpy(i32* %70, i32* %72, i32 %76)
  br label %78

78:                                               ; preds = %69, %48
  store i32 1, i32* %2, align 4
  br label %81

79:                                               ; preds = %41
  br label %80

80:                                               ; preds = %79, %1
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @SekInterruptS68k(i32) #1

declare dso_local i32 @cdd_read_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
