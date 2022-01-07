; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqa.c_hq_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqa.c_hq_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ff_hq_quants = common dso_local global i64**** null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_hq_ac_skips = common dso_local global i64* null, align 8
@ff_hq_ac_syms = common dso_local global i32* null, align 8
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32, i32)* @hq_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hq_decode_block(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 256)
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @get_sbits(i32* %22, i32 9)
  %24 = mul nsw i32 %23, 64
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i64****, i64***** @ff_hq_quants, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64***, i64**** %27, i64 %29
  %31 = load i64***, i64**** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64**, i64*** %31, i64 %33
  %35 = load i64**, i64*** %34, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @get_bits(i32* %36, i32 2)
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %14, align 8
  br label %59

40:                                               ; preds = %6
  %41 = load i64****, i64***** @ff_hq_quants, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64***, i64**** %41, i64 %43
  %45 = load i64***, i64**** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64**, i64*** %45, i64 %47
  %49 = load i64**, i64*** %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @get_bits(i32* %50, i32 2)
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %14, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @get_sbits(i32* %54, i32 9)
  %56 = mul nsw i32 %55, 64
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %40, %21
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @get_vlc2(i32* %61, i32 %65, i32 9, i32 2)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %7, align 4
  br label %108

71:                                               ; preds = %60
  %72 = load i64*, i64** @ff_hq_ac_skips, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sge i32 %81, 64
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %107

84:                                               ; preds = %71
  %85 = load i32*, i32** @ff_hq_ac_syms, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %14, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = mul i32 %89, %95
  %97 = ashr i32 %96, 12
  %98 = load i32*, i32** %10, align 8
  %99 = load i64*, i64** @ff_zigzag_direct, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  store i32 %97, i32* %104, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %60

107:                                              ; preds = %83
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %69
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
