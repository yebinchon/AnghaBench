; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacdec.c_decode_residuals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacdec.c_decode_residuals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"illegal residual coding method %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid rice order: %i blocksize %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid predictor order: %i > %i\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid residual\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @decode_residuals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_residuals(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = call i32 @get_bits(i32* %8, i32 2)
  store i32 %22, i32* %12, align 4
  %23 = call i32 @get_bits(i32* %8, i32 4)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 4, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i32, i32, i8*, ...) @av_log(i32 %44, i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %48, i32* %4, align 4
  br label %153

49:                                               ; preds = %3
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i8*, ...) @av_log(i32 %60, i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %4, align 4
  br label %153

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 (i32, i32, i8*, ...) @av_log(i32 %75, i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %4, align 4
  br label %153

81:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %146, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = shl i32 1, %84
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %149

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @get_bits(i32* %8, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = call i32 @get_bits(i32* %8, i32 5)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %104, %93
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @get_sbits_long(i32* %8, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %95

107:                                              ; preds = %95
  br label %145

108:                                              ; preds = %87
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @INT_MAX, align 4
  %113 = load i32, i32* %10, align 4
  %114 = ashr i32 %112, %113
  %115 = add nsw i32 %114, 2
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @INT_MAX, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %115, %111 ], [ %117, %116 ]
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %141, %118
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @get_sr_golomb_flac(i32* %8, i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp eq i32 %128, -2147483648
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = call i32 (i32, i32, i8*, ...) @av_log(i32 %133, i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %136, i32* %4, align 4
  br label %153

137:                                              ; preds = %124
  %138 = load i32, i32* %18, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %6, align 8
  store i32 %138, i32* %139, align 4
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %120

144:                                              ; preds = %120
  br label %145

145:                                              ; preds = %144, %107
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %82

149:                                              ; preds = %82
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %149, %130, %72, %57, %41
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @get_sbits_long(i32*, i32) #1

declare dso_local i32 @get_sr_golomb_flac(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
