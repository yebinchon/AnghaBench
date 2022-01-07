; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wma.c_ff_wma_run_level_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wma.c_ff_wma_run_level_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLCBITS = common dso_local global i32 0, align 4
@VLCMAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"broken escape sequence\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"overflow (%d > %d) in spectral RLE, ignoring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_wma_run_level_decode(i32* %0, i32* %1, %struct.TYPE_3__* %2, float* %3, i64* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %16, align 8
  store float* %3, float** %17, align 8
  store i64* %4, i64** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %32 = load float*, float** %17, align 8
  %33 = bitcast float* %32 to i32*
  store i32* %33, i32** %29, align 8
  %34 = load i32*, i32** %20, align 8
  store i32* %34, i32** %30, align 8
  %35 = load i32, i32* %23, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %31, align 4
  br label %37

37:                                               ; preds = %145, %12
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %22, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %148

41:                                               ; preds = %37
  %42 = load i32*, i32** %15, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VLCBITS, align 4
  %47 = load i32, i32* @VLCMAX, align 4
  %48 = call i32 @get_vlc2(i32* %42, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %26, align 4
  %49 = load i32, i32* %26, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %78

51:                                               ; preds = %41
  %52 = load i64*, i64** %18, align 8
  %53 = load i32, i32* %26, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %21, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @get_bits1(i32* %61)
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %28, align 4
  %64 = load i32*, i32** %29, align 8
  %65 = load i32, i32* %26, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %28, align 4
  %70 = and i32 %69, -2147483648
  %71 = xor i32 %68, %70
  %72 = load i32*, i32** %30, align 8
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %31, align 4
  %75 = and i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32 %71, i32* %77, align 4
  br label %144

78:                                               ; preds = %41
  %79 = load i32, i32* %26, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %148

82:                                               ; preds = %78
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %25, align 4
  %88 = call i32 @get_bits(i32* %86, i32 %87)
  store i32 %88, i32* %27, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %24, align 4
  %91 = call i32 @get_bits(i32* %89, i32 %90)
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %21, align 4
  br label %128

94:                                               ; preds = %82
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @ff_wma_get_large_val(i32* %95)
  store i32 %96, i32* %27, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @get_bits1(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %94
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @get_bits1(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @get_bits1(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %109, i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %159

112:                                              ; preds = %104
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %24, align 4
  %115 = call i32 @get_bits(i32* %113, i32 %114)
  %116 = add nsw i32 %115, 4
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %112
  br label %126

120:                                              ; preds = %100
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @get_bits(i32* %121, i32 2)
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %21, align 4
  br label %126

126:                                              ; preds = %120, %119
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @get_bits1(i32* %129)
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %27, align 4
  %133 = load i32, i32* %28, align 4
  %134 = xor i32 %132, %133
  %135 = load i32, i32* %28, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32*, i32** %20, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %31, align 4
  %140 = and i32 %138, %139
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  store i32 %136, i32* %142, align 4
  br label %143

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %51
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %21, align 4
  br label %37

148:                                              ; preds = %81, %37
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %22, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %22, align 4
  %157 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %153, i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156)
  store i32 -1, i32* %13, align 4
  br label %159

158:                                              ; preds = %148
  store i32 0, i32* %13, align 4
  br label %159

159:                                              ; preds = %158, %152, %108
  %160 = load i32, i32* %13, align 4
  ret i32 %160
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @ff_wma_get_large_val(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
