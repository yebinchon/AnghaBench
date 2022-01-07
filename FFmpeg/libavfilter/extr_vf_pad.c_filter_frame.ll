; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pad.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pad.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, %struct.TYPE_26__*, i32, i32, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { %struct.TYPE_32__**, %struct.TYPE_28__**, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i64, i32, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i32, i64, i64, i64, i32, i32, i64, i64, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32*, i32*, i32* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32, i64, i64, i32*, i64*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i64 }

@EVAL_MODE_FRAME = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Direct padding impossible allocating new frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_31__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  store %struct.TYPE_30__* %18, %struct.TYPE_30__** %6, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %23, i64 0
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  store %struct.TYPE_32__* %25, %struct.TYPE_32__** %7, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EVAL_MODE_FRAME, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %151

31:                                               ; preds = %2
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %75, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %75, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %75, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %151

75:                                               ; preds = %65, %55, %47, %39, %31
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %83, i64 0
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  store i64 %78, i64* %86, align 8
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %94, i64 0
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  store i32 %89, i32* %97, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %105, i64 0
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 2
  store i64 %100, i64* %108, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %117, i64 0
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  store i64 %112, i64* %121, align 8
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %130, i64 0
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 1
  store i64 %125, i64* %134, align 8
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %136 = call i32 @config_input(%struct.TYPE_32__* %135)
  store i32 %136, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %75
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 1
  store i32 -1, i32* %140, align 8
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %3, align 4
  br label %470

142:                                              ; preds = %75
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %144 = call i32 @config_output(%struct.TYPE_32__* %143)
  store i32 %144, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  store i32 -1, i32* %148, align 8
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %470

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %65, %2
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %154 = call i32 @frame_needs_copy(%struct.TYPE_30__* %152, %struct.TYPE_31__* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %151
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = load i32, i32* @AV_LOG_DEBUG, align 4
  %162 = call i32 @av_log(%struct.TYPE_26__* %160, i32 %161, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %167, i64 0
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %168, align 8
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @FFMAX(i32 %172, i64 %175)
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @FFMAX(i32 %179, i64 %182)
  %184 = call %struct.TYPE_31__* @ff_get_video_buffer(%struct.TYPE_32__* %169, i32 %176, i32 %183)
  store %struct.TYPE_31__* %184, %struct.TYPE_31__** %8, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %186 = icmp ne %struct.TYPE_31__* %185, null
  br i1 %186, label %191, label %187

187:                                              ; preds = %157
  %188 = call i32 @av_frame_free(%struct.TYPE_31__** %5)
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = call i32 @AVERROR(i32 %189)
  store i32 %190, i32* %3, align 4
  br label %470

191:                                              ; preds = %157
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %194 = call i32 @av_frame_copy_props(%struct.TYPE_31__* %192, %struct.TYPE_31__* %193)
  br label %278

195:                                              ; preds = %151
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_31__* %196, %struct.TYPE_31__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %197

197:                                              ; preds = %274, %195
  %198 = load i32, i32* %11, align 4
  %199 = icmp slt i32 %198, 4
  br i1 %199, label %200, label %218

200:                                              ; preds = %197
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 4
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %200
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br label %218

218:                                              ; preds = %209, %200, %197
  %219 = phi i1 [ false, %200 ], [ false, %197 ], [ %217, %209 ]
  br i1 %219, label %220, label %277

220:                                              ; preds = %218
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 10
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %12, align 4
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 10
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %13, align 4
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = ashr i32 %239, %240
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 10
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %241, %249
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %13, align 4
  %255 = ashr i32 %253, %254
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %255, %262
  %264 = add nsw i32 %250, %263
  %265 = sext i32 %264 to i64
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 4
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %272, %265
  store i64 %273, i64* %271, align 8
  br label %274

274:                                              ; preds = %220
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %197

277:                                              ; preds = %218
  br label %278

278:                                              ; preds = %277, %191
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %278
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 10
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 9
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %288, i32 0, i32 4
  %290 = load i64*, i64** %289, align 8
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = call i32 @ff_fill_rectangle(%struct.TYPE_24__* %285, i32* %287, i64* %290, i32* %293, i64 0, i64 0, i64 %296, i64 %300)
  br label %302

302:                                              ; preds = %283, %278
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 7
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %309, %312
  %314 = icmp sgt i64 %305, %313
  br i1 %314, label %315, label %350

315:                                              ; preds = %302
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 10
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 9
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 4
  %322 = load i64*, i64** %321, align 8
  %323 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %323, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 7
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %329, %332
  %334 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 4
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = sub nsw i64 %339, %343
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 7
  %347 = load i64, i64* %346, align 8
  %348 = sub nsw i64 %344, %347
  %349 = call i32 @ff_fill_rectangle(%struct.TYPE_24__* %317, i32* %319, i64* %322, i32* %325, i64 0, i64 %333, i64 %336, i64 %348)
  br label %350

350:                                              ; preds = %315, %302
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 10
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 9
  %355 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %355, i32 0, i32 4
  %357 = load i64*, i64** %356, align 8
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 8
  %368 = sext i32 %367 to i64
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @ff_fill_rectangle(%struct.TYPE_24__* %352, i32* %354, i64* %357, i32* %360, i64 0, i64 %364, i64 %368, i64 %371)
  %373 = load i32, i32* %9, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %405

375:                                              ; preds = %350
  %376 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %376, i32 0, i32 10
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 4
  %380 = load i64*, i64** %379, align 8
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 3
  %383 = load i32*, i32** %382, align 8
  %384 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %384, i32 0, i32 4
  %386 = load i64*, i64** %385, align 8
  %387 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %387, i32 0, i32 3
  %389 = load i32*, i32** %388, align 8
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @ff_copy_rectangle2(%struct.TYPE_24__* %377, i64* %380, i32* %383, i64* %386, i32* %389, i64 %393, i64 %397, i32 0, i32 0, i32 %400, i64 %403)
  br label %405

405:                                              ; preds = %375, %350
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %406, i32 0, i32 10
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 9
  %410 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %410, i32 0, i32 4
  %412 = load i64*, i64** %411, align 8
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 3
  %415 = load i32*, i32** %414, align 8
  %416 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 8
  %419 = sext i32 %418 to i64
  %420 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %420, i32 0, i32 8
  %422 = load i64, i64* %421, align 8
  %423 = add nsw i64 %419, %422
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  %428 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %428, i32 0, i32 3
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 8
  %434 = sext i32 %433 to i64
  %435 = sub nsw i64 %430, %434
  %436 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %436, i32 0, i32 8
  %438 = load i64, i64* %437, align 8
  %439 = sub nsw i64 %435, %438
  %440 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = call i32 @ff_fill_rectangle(%struct.TYPE_24__* %407, i32* %409, i64* %412, i32* %415, i64 %423, i64 %427, i64 %439, i64 %442)
  %444 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = trunc i64 %446 to i32
  %448 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i32 0, i32 0
  store i32 %447, i32* %449, align 8
  %450 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %450, i32 0, i32 4
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %453, i32 0, i32 1
  store i64 %452, i64* %454, align 8
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %457 = icmp ne %struct.TYPE_31__* %455, %456
  br i1 %457, label %458, label %460

458:                                              ; preds = %405
  %459 = call i32 @av_frame_free(%struct.TYPE_31__** %5)
  br label %460

460:                                              ; preds = %458, %405
  %461 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %465, i64 0
  %467 = load %struct.TYPE_32__*, %struct.TYPE_32__** %466, align 8
  %468 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %469 = call i32 @ff_filter_frame(%struct.TYPE_32__* %467, %struct.TYPE_31__* %468)
  store i32 %469, i32* %3, align 4
  br label %470

470:                                              ; preds = %460, %187, %146, %138
  %471 = load i32, i32* %3, align 4
  ret i32 %471
}

declare dso_local i32 @config_input(%struct.TYPE_32__*) #1

declare dso_local i32 @config_output(%struct.TYPE_32__*) #1

declare dso_local i32 @frame_needs_copy(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local %struct.TYPE_31__* @ff_get_video_buffer(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_31__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @ff_fill_rectangle(%struct.TYPE_24__*, i32*, i64*, i32*, i64, i64, i64, i64) #1

declare dso_local i32 @ff_copy_rectangle2(%struct.TYPE_24__*, i64*, i32*, i64*, i32*, i64, i64, i32, i32, i32, i64) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
