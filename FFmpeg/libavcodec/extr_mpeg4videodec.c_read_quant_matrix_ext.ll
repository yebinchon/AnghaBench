; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_read_quant_matrix_ext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_read_quant_matrix_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @read_quant_matrix_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_quant_matrix_ext(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @get_bits1(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @get_bits_left(i32* %13)
  %15 = icmp slt i32 %14, 512
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %17, i32* %3, align 4
  br label %138

18:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @get_bits(i32* %23, i32 8)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64*, i64** @ff_zigzag_direct, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %19

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @get_bits1(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @get_bits_left(i32* %59)
  %61 = icmp slt i32 %60, 512
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %3, align 4
  br label %138

64:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %71, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 64
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @get_bits(i32* %69, i32 8)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %65

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @get_bits1(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @get_bits_left(i32* %80)
  %82 = icmp slt i32 %81, 512
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %3, align 4
  br label %138

85:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %110, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 64
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @get_bits(i32* %90, i32 8)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64*, i64** @ff_zigzag_direct, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %89
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %86

113:                                              ; preds = %86
  br label %114

114:                                              ; preds = %113, %75
  %115 = load i32*, i32** %5, align 8
  %116 = call i64 @get_bits1(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @get_bits_left(i32* %119)
  %121 = icmp slt i32 %120, 512
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %3, align 4
  br label %138

124:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 64
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @get_bits(i32* %129, i32 8)
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %125

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %114
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @next_start_code_studio(i32* %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %122, %83, %62, %16
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @next_start_code_studio(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
