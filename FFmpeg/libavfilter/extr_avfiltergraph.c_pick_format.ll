; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_pick_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_pick_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i64, i32, %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i64*, i32, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"picking %s out of %d ref:%s alpha:%d\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"picking %s out of %d ref:%s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Cannot select sample rate for the link between filters %s and %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"Cannot select channel layout for the link between filters %s and %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [115 x i8] c"Unknown channel layouts not supported, try specifying a channel layout using 'aformat=channel_layouts=something'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*)* @pick_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_format(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %317

21:                                               ; preds = %15
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %101

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %100

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %72, %36
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @av_find_best_pix_fmt_of_2(i32 %65, i32 %66, i32 %69, i32 %70, i32* null)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 11
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = load i32, i32* @AV_LOG_DEBUG, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @av_get_pix_fmt_name(i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @av_get_pix_fmt_name(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %78, i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86, i32 %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %75, %30, %27
  br label %171

101:                                              ; preds = %21
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %170

107:                                              ; preds = %101
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = icmp ne %struct.TYPE_10__* %108, null
  br i1 %109, label %110, label %169

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %169

116:                                              ; preds = %110
  %117 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  store i32 %117, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %142, %116
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %119, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %118
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @find_best_sample_fmt_of_2(i32 %136, i32 %137, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %118

145:                                              ; preds = %118
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 11
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i32, i32* @AV_LOG_DEBUG, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @av_get_sample_fmt_name(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @av_get_sample_fmt_name(i32 %159)
  %161 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %148, i32 %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %156, i32 %160)
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %162, i32* %168, align 4
  br label %169

169:                                              ; preds = %145, %110, %107
  br label %170

170:                                              ; preds = %169, %101
  br label %171

171:                                              ; preds = %170, %100
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %298

190:                                              ; preds = %171
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %215, label %197

197:                                              ; preds = %190
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 11
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = load i32, i32* @AV_LOG_ERROR, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 11
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 12
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %200, i32 %201, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %206, i32 %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = call i32 @AVERROR(i32 %213)
  store i32 %214, i32* %3, align 4
  br label %317

215:                                              ; preds = %190
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  store i32 1, i32* %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 6
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %266

235:                                              ; preds = %215
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 11
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = load i32, i32* @AV_LOG_ERROR, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 11
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 12
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %238, i32 %239, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %244, i32 %249)
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %235
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 11
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = load i32, i32* @AV_LOG_ERROR, align 4
  %262 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %260, i32 %261, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.4, i64 0, i64 0))
  br label %263

263:                                              ; preds = %257, %235
  %264 = load i32, i32* @EINVAL, align 4
  %265 = call i32 @AVERROR(i32 %264)
  store i32 %265, i32* %3, align 4
  br label %317

266:                                              ; preds = %215
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i32 1, i32* %270, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 9
  store i64 %277, i64* %279, align 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @FF_LAYOUT2COUNT(i64 %282)
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 10
  store i32 %283, i32* %285, align 8
  %286 = icmp ne i32 %283, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %266
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 9
  store i64 0, i64* %289, align 8
  br label %297

290:                                              ; preds = %266
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 9
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @av_get_channel_layout_nb_channels(i64 %293)
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 10
  store i32 %294, i32* %296, align 8
  br label %297

297:                                              ; preds = %290, %287
  br label %298

298:                                              ; preds = %297, %171
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 8
  %301 = call i32 @ff_formats_unref(%struct.TYPE_11__** %300)
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 7
  %304 = call i32 @ff_formats_unref(%struct.TYPE_11__** %303)
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 6
  %307 = call i32 @ff_formats_unref(%struct.TYPE_11__** %306)
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 5
  %310 = call i32 @ff_formats_unref(%struct.TYPE_11__** %309)
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 4
  %313 = call i32 @ff_channel_layouts_unref(%struct.TYPE_12__** %312)
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 3
  %316 = call i32 @ff_channel_layouts_unref(%struct.TYPE_12__** %315)
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %298, %263, %197, %20
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_find_best_pix_fmt_of_2(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @find_best_sample_fmt_of_2(i32, i32, i32) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FF_LAYOUT2COUNT(i64) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i64) #1

declare dso_local i32 @ff_formats_unref(%struct.TYPE_11__**) #1

declare dso_local i32 @ff_channel_layouts_unref(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
