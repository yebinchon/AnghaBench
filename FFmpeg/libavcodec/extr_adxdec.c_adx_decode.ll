; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adxdec.c_adx_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adxdec.c_adx_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@BLOCK_SAMPLES = common dso_local global i32 0, align 4
@COEFF_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32*, i32)* @adx_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adx_decode(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %12, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @AV_RB16(i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = and i32 %28, 32768
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %95

32:                                               ; preds = %5
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* @BLOCK_SIZE, align 4
  %36 = sub nsw i32 %35, 2
  %37 = mul nsw i32 %36, 8
  %38 = call i32 @init_get_bits(i32* %13, i32* %34, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %85, %32
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @BLOCK_SAMPLES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = call i32 @get_sbits(i32* %13, i32 4)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @COEFF_BITS, align 4
  %57 = shl i32 1, %56
  %58 = mul nsw i32 %55, %57
  %59 = load i32, i32* %14, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %60, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %18, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %68, %75
  %77 = load i32, i32* @COEFF_BITS, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @av_clip_int16(i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  br label %85

85:                                               ; preds = %53
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %49

88:                                               ; preds = %49
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %88, %31
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
