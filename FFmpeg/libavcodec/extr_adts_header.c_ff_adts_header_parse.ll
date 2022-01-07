; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adts_header.c_ff_adts_header_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adts_header.c_ff_adts_header_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AAC_AC3_PARSE_ERROR_SYNC = common dso_local global i32 0, align 4
@avpriv_mpeg4audio_sample_rates = common dso_local global i32* null, align 8
@AAC_AC3_PARSE_ERROR_SAMPLE_RATE = common dso_local global i32 0, align 4
@AV_AAC_ADTS_HEADER_SIZE = common dso_local global i32 0, align 4
@AAC_AC3_PARSE_ERROR_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_adts_header_parse(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @get_bits(i32* %12, i32 12)
  %14 = icmp ne i32 %13, 4095
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AAC_AC3_PARSE_ERROR_SYNC, align 4
  store i32 %16, i32* %3, align 4
  br label %103

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @skip_bits1(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @skip_bits(i32* %20, i32 2)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @get_bits1(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @get_bits(i32* %24, i32 2)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @get_bits(i32* %26, i32 4)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** @avpriv_mpeg4audio_sample_rates, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @AAC_AC3_PARSE_ERROR_SAMPLE_RATE, align 4
  store i32 %35, i32* %3, align 4
  br label %103

36:                                               ; preds = %17
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @skip_bits1(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @get_bits(i32* %39, i32 3)
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @skip_bits1(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @skip_bits1(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @skip_bits1(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @skip_bits1(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @get_bits(i32* %49, i32 13)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @AV_AAC_ADTS_HEADER_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* @AAC_AC3_PARSE_ERROR_FRAME_SIZE, align 4
  store i32 %55, i32* %3, align 4
  br label %103

56:                                               ; preds = %36
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @skip_bits(i32* %57, i32 11)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @get_bits(i32* %59, i32 2)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** @avpriv_mpeg4audio_sample_rates, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %86, 1024
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 %90, 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %95, %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %56, %54, %34, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
