; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32)* @decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32* %18, i32** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @memset(i32* %19, i32 0, i32 256)
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_vlc2(i32* %21, i32 %25, i32 9, i32 3)
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %5, align 4
  br label %144

35:                                               ; preds = %4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 63
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %144

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %124, %43
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 64
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %134

53:                                               ; preds = %51
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_vlc2(i32* %54, i32 %58, i32 9, i32 2)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %5, align 4
  br label %144

64:                                               ; preds = %53
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 7167
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = ashr i32 %68, 12
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = ashr i32 %70, 4
  %72 = and i32 %71, 255
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 15
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @get_bits1(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %67
  br label %89

82:                                               ; preds = %64
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @get_bits1(i32* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @get_bits(i32* %85, i32 6)
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @get_sbits(i32* %87, i32 8)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %82, %81
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @FFABS(i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %15, align 4
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 %100, 1
  %102 = mul nsw i32 %98, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %92
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %89
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 64
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %5, align 4
  br label %144

124:                                              ; preds = %116
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i64*, i64** @ff_zigzag_direct, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  store i32 %125, i32* %133, align 4
  br label %44

134:                                              ; preds = %51
  %135 = load i32, i32* %11, align 4
  %136 = icmp sle i32 %135, 64
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i1 [ false, %134 ], [ %139, %137 ]
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 0, i32 -1
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %122, %62, %42, %33
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
