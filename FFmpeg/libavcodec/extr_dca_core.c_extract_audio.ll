; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_extract_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_extract_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32 }

@DCA_ABITS_MAX = common dso_local global i32 0, align 4
@DCA_SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@DCA_CODE_BOOKS = common dso_local global i32 0, align 4
@ff_dca_quant_index_group_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32)* @extract_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_audio(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DCA_ABITS_MAX, align 4
  %16 = icmp sle i32 %14, %15
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ false, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @av_assert1(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %24, i32 0, i32 %28)
  store i32 0, i32* %5, align 4
  br label %78

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** @ff_dca_quant_index_group_size, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %47, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %34
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @parse_huffman_codes(%struct.TYPE_5__* %56, i32* %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %78

61:                                               ; preds = %34
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 7
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @parse_block_codes(%struct.TYPE_5__* %65, i32* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %78

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 3
  %77 = call i32 @get_array(i32* %72, i32* %73, i32 %74, i32 %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %70, %64, %55, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @parse_huffman_codes(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @parse_block_codes(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @get_array(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
