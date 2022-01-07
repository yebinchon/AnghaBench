; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_reconfigure_at_keyframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_reconfigure_at_keyframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i8*, i32, i32, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not allocate block buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Generated optimum palette\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Generated default palette\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32)* @reconfigure_at_keyframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfigure_at_keyframe(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i32 @optimum_block_width(%struct.TYPE_8__* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i32 @optimum_block_height(%struct.TYPE_8__* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %21, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %169

47:                                               ; preds = %41, %3
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = icmp ugt i64 %61, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %47
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 18
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i8* @av_realloc_array(i8* %71, i32 %74, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 18
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 15
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i8* @av_realloc_array(i8* %86, i32 %89, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 15
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 18
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %68
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 15
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %103, %68
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = call i32 @av_log(i32 %111, i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %246

114:                                              ; preds = %103
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %114, %47
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 18
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 17
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 16
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @init_blocks(%struct.TYPE_8__* %128, i8* %131, i32 %134, i32 %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 15
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 14
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @init_blocks(%struct.TYPE_8__* %139, i8* %142, i32 %145, i32 0)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 12
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 13
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %151, %152
  %154 = mul nsw i32 %153, 6
  %155 = call i32 @av_fast_malloc(i32* %148, i32* %150, i32 %154)
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %127
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 @av_log(i32 %163, i32 %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = call i32 @AVERROR(i32 %166)
  store i32 %167, i32* %4, align 4
  br label %246

168:                                              ; preds = %127
  br label %169

169:                                              ; preds = %168, %41
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = call i64 @optimum_use15_7(%struct.TYPE_8__* %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 11
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 11
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %243

178:                                              ; preds = %169
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 1
  br i1 %187, label %191, label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %188, %183
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 9
  %194 = load i32*, i32** %6, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @generate_optimum_palette(i32* %193, i32* %194, i32 %197, i32 %200, i32 %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %191
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %4, align 4
  br label %246

207:                                              ; preds = %191
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 7
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @AV_LOG_DEBUG, align 4
  %214 = call i32 @av_log(i32 %212, i32 %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %242

215:                                              ; preds = %188
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 10
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %241, label %220

220:                                              ; preds = %215
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %220
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 9
  %228 = call i32 @generate_default_palette(i32* %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %4, align 4
  br label %246

233:                                              ; preds = %225
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 7
  store i32 0, i32* %235, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @AV_LOG_DEBUG, align 4
  %240 = call i32 @av_log(i32 %238, i32 %239, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %241

241:                                              ; preds = %233, %220, %215
  br label %242

242:                                              ; preds = %241, %207
  br label %243

243:                                              ; preds = %242, %169
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = call i32 @reset_stats(%struct.TYPE_8__* %244)
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %243, %231, %205, %160, %108
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @optimum_block_width(%struct.TYPE_8__*) #1

declare dso_local i32 @optimum_block_height(%struct.TYPE_8__*) #1

declare dso_local i8* @av_realloc_array(i8*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @init_blocks(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @av_fast_malloc(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @optimum_use15_7(%struct.TYPE_8__*) #1

declare dso_local i32 @generate_optimum_palette(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @generate_default_palette(i32*) #1

declare dso_local i32 @reset_stats(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
