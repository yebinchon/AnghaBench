; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_coupling_strategy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_coupling_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32*, i32*, i32*, i8*, i32, i32, i32, i32, i32, i32, i64, i8**, i32 }

@AC3_MAX_CHANNELS = common dso_local global i32 0, align 4
@AC3_CHMODE_STEREO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"coupling not allowed in mono or dual-mono\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Enhanced coupling\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid coupling range (%d >= %d)\0A\00", align 1
@CPL_CH = common dso_local global i64 0, align 8
@ff_eac3_default_cpl_band_struct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*)* @coupling_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coupling_strategy(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 16
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @AC3_MAX_CHANNELS, align 4
  %24 = call i32 @memset(i32* %22, i32 3, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i8* @get_bits1(i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 15
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %31, i8** %37, align 8
  br label %38

38:                                               ; preds = %29, %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 15
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %186

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @AC3_CHMODE_STEREO, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (i32, i32, i8*, ...) @av_log(i32 %54, i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %4, align 4
  br label %216

58:                                               ; preds = %47
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = call i8* @get_bits1(i32* %64)
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @avpriv_request_sample(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %72, i32* %4, align 4
  br label %216

73:                                               ; preds = %63, %58
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AC3_CHMODE_STEREO, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 1, i32* %92, align 4
  br label %112

93:                                               ; preds = %78, %73
  store i32 1, i32* %11, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = call i8* @get_bits1(i32* %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %94

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @AC3_CHMODE_STEREO, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32*, i32** %8, align 8
  %118 = call i8* @get_bits1(i32* %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @get_bits(i32* %122, i32 4)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 14
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 37
  %133 = sdiv i32 %132, 12
  br label %138

134:                                              ; preds = %121
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @get_bits(i32* %135, i32 4)
  %137 = add nsw i32 %136, 3
  br label %138

138:                                              ; preds = %134, %128
  %139 = phi i32 [ %133, %128 ], [ %137, %134 ]
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 (i32, i32, i8*, ...) @av_log(i32 %146, i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %151, i32* %4, align 4
  br label %216

152:                                              ; preds = %138
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 %153, 12
  %155 = add nsw i32 %154, 37
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @CPL_CH, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* %13, align 4
  %162 = mul nsw i32 %161, 12
  %163 = add nsw i32 %162, 37
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @CPL_CH, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 %163, i32* %168, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @ff_eac3_default_cpl_band_struct, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 12
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @decode_band_structure(i32* %169, i32 %170, i32 %173, i32 0, i32 %174, i32 %175, i32 %176, i32* %178, i32 %181, i32 %184, i32 4)
  br label %215

186:                                              ; preds = %38
  store i32 1, i32* %11, align 4
  br label %187

187:                                              ; preds = %204, %186
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %187
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 0, i32* %197, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 1, i32* %203, align 4
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %187

207:                                              ; preds = %187
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 7
  store i8* null, i8** %214, align 8
  br label %215

215:                                              ; preds = %207, %152
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %143, %67, %51
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_band_structure(i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
