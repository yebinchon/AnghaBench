; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32, i32, i64, i32, %struct.TYPE_13__, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Insufficient Memory of %d truncated to %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cdp writing data (%s)\0A\00", align 1
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@ms_tb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 9
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @av_fast_padded_malloc(i32** %30, i32* %32, i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = load i32, i32* @AV_LOG_WARNING, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @av_log(%struct.TYPE_14__* %40, i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %245

49:                                               ; preds = %4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @memcpy(i32* %52, i32 %55, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %181, %49
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %184

65:                                               ; preds = %61
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 3
  store i32 %71, i32* %17, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i64 @validate_cc_data_pair(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %181

79:                                               ; preds = %65
  %80 = load i32, i32* %17, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %181

83:                                               ; preds = %79
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 127
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 127
  %100 = call i32 @process_cc608(%struct.TYPE_14__* %84, i32 %85, i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %83
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %181

107:                                              ; preds = %101
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %107
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %180

121:                                              ; preds = %116, %107
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = call i32 @ff_dlog(%struct.TYPE_14__* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = call i32 @ff_ass_add_rect(%struct.TYPE_15__* %128, i64* %132, i32 %135, i32 0, i32* null, i32* null)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %121
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %5, align 4
  br label %245

142:                                              ; preds = %121
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %142
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %155, %158
  %160 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %161 = load i32, i32* @ms_tb, align 4
  %162 = call i64 @av_rescale_q(i32 %159, i32 %160, i32 %161)
  %163 = trunc i64 %162 to i32
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %169

166:                                              ; preds = %142
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  store i32 -1, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %152
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 6
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 7
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %169, %116
  br label %181

181:                                              ; preds = %180, %106, %82, %78
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 3
  store i32 %183, i32* %16, align 4
  br label %61

184:                                              ; preds = %61
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %237

189:                                              ; preds = %184
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %237

194:                                              ; preds = %189
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @ms_tb, align 4
  %203 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %204 = call i64 @av_rescale_q(i32 200, i32 %202, i32 %203)
  %205 = add nsw i64 %201, %204
  %206 = icmp sgt i64 %198, %205
  br i1 %206, label %207, label %237

207:                                              ; preds = %194
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  store i64 %211, i64* %213, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 7
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %217 = call i32 @capture_screen(%struct.TYPE_14__* %216)
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 6
  store i64 0, i64* %219, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  %229 = call i32 @ff_ass_add_rect(%struct.TYPE_15__* %220, i64* %224, i32 %227, i32 0, i32* null, i32* null)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %207
  %233 = load i32, i32* %15, align 4
  store i32 %233, i32* %5, align 4
  br label %245

234:                                              ; preds = %207
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  store i32 -1, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %194, %189, %184
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %240, 0
  %242 = zext i1 %241 to i32
  %243 = load i32*, i32** %8, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* %15, align 4
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %237, %232, %140, %39
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @validate_cc_data_pair(i32*) #1

declare dso_local i32 @process_cc608(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_14__*, i8*, i64*) #1

declare dso_local i32 @ff_ass_add_rect(%struct.TYPE_15__*, i64*, i32, i32, i32*, i32*) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @capture_screen(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
