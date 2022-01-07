; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_frame_start.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_frame_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i32*, i32, i64, %struct.TYPE_30__*, %struct.TYPE_27__, %struct.TYPE_23__, i64, i32*, %struct.TYPE_29__*, i64, i32, i32, i32, i32, i32, %struct.TYPE_25__, i32, i64, %struct.TYPE_30__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32, i64, i32*, %struct.TYPE_28__*, i32, i64, i64, i64, i32 }
%struct.TYPE_28__ = type { i32*, i32, i32, i32, i32, i32, i64, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Attempt to start a frame outside SETUP state\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no frame buffer available\0A\00", align 1
@PICT_FRAME = common dso_local global i64 0, align 8
@CONFIG_ERROR_RESILIENCE = common dso_local global i64 0, align 8
@scan8 = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @h264_frame_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_frame_start(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 22
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ff_thread_can_start_frame(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 22
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 @av_log(i32 %19, i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %495

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = call i32 @release_unused_pictures(%struct.TYPE_20__* %23, i32 1)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 6
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = call i32 @find_unused_picture(%struct.TYPE_20__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 22
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(i32 %34, i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %495

38:                                               ; preds = %22
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 21
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i64 %43
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %4, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 20
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %54

50:                                               ; preds = %38
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi i64 [ 0, %49 ], [ %53, %50 ]
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 19
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 7
  store i64 %62, i64* %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PICT_FRAME, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 18
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 11
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 5
  store i32 %103, i32* %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 17
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 4
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 16
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 3
  store i32 %117, i32* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 15
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 2
  store i32 %124, i32* %128, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %138 = call i32 @alloc_picture(%struct.TYPE_20__* %136, %struct.TYPE_30__* %137)
  store i32 %138, i32* %6, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %54
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %495

142:                                              ; preds = %54
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 6
  store %struct.TYPE_30__* %143, %struct.TYPE_30__** %145, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 13
  %149 = call i32 @ff_h264_unref_picture(%struct.TYPE_20__* %146, i32* %148)
  %150 = load i64, i64* @CONFIG_ERROR_RESILIENCE, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %142
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 11
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %159 = call i32 @ff_h264_set_erpic(i32* %158, i32* null)
  br label %160

160:                                              ; preds = %152, %142
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 13
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %165, align 8
  %167 = call i32 @ff_h264_ref_picture(%struct.TYPE_20__* %161, i32* %163, %struct.TYPE_30__* %166)
  store i32 %167, i32* %6, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %2, align 4
  br label %495

171:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %211, %171
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %214

178:                                              ; preds = %172
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 11
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  store i32 %187, i32* %194, align 4
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 11
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 1
  store i32 %203, i32* %210, align 4
  br label %211

211:                                              ; preds = %178
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %172

214:                                              ; preds = %172
  %215 = load i64, i64* @CONFIG_ERROR_RESILIENCE, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %243

217:                                              ; preds = %214
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 12
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %217
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 11
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 2
  %228 = call i32 @ff_er_frame_start(%struct.TYPE_21__* %227)
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 11
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = call i32 @ff_h264_set_erpic(i32* %234, i32* null)
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 11
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = call i32 @ff_h264_set_erpic(i32* %241, i32* null)
  br label %243

243:                                              ; preds = %222, %217, %214
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %327, %243
  %245 = load i32, i32* %5, align 4
  %246 = icmp slt i32 %245, 16
  br i1 %246, label %247, label %330

247:                                              ; preds = %244
  %248 = load i32*, i32** @scan8, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** @scan8, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %252, %255
  %257 = and i32 %256, 7
  %258 = mul nsw i32 4, %257
  %259 = load i32, i32* %7, align 4
  %260 = shl i32 %258, %259
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 4, %267
  %269 = load i32*, i32** @scan8, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** @scan8, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %273, %276
  %278 = ashr i32 %277, 3
  %279 = mul nsw i32 %268, %278
  %280 = add nsw i32 %260, %279
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %280, i32* %286, align 4
  %287 = load i32*, i32** @scan8, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** @scan8, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %291, %294
  %296 = and i32 %295, 7
  %297 = mul nsw i32 4, %296
  %298 = load i32, i32* %7, align 4
  %299 = shl i32 %297, %298
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = mul nsw i32 8, %306
  %308 = load i32*, i32** @scan8, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** @scan8, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = sub nsw i32 %312, %315
  %317 = ashr i32 %316, 3
  %318 = mul nsw i32 %307, %317
  %319 = add nsw i32 %299, %318
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = add nsw i32 48, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  store i32 %319, i32* %326, align 4
  br label %327

327:                                              ; preds = %247
  %328 = load i32, i32* %5, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %5, align 4
  br label %244

330:                                              ; preds = %244
  store i32 0, i32* %5, align 4
  br label %331

331:                                              ; preds = %429, %330
  %332 = load i32, i32* %5, align 4
  %333 = icmp slt i32 %332, 16
  br i1 %333, label %334, label %432

334:                                              ; preds = %331
  %335 = load i32*, i32** @scan8, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32*, i32** @scan8, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = sub nsw i32 %339, %342
  %344 = and i32 %343, 7
  %345 = mul nsw i32 4, %344
  %346 = load i32, i32* %7, align 4
  %347 = shl i32 %345, %346
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 4
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 1
  %354 = load i32, i32* %353, align 4
  %355 = mul nsw i32 4, %354
  %356 = load i32*, i32** @scan8, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** @scan8, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = sub nsw i32 %360, %363
  %365 = ashr i32 %364, 3
  %366 = mul nsw i32 %355, %365
  %367 = add nsw i32 %347, %366
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 3
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %5, align 4
  %372 = add nsw i32 32, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  store i32 %367, i32* %374, align 4
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 3
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %5, align 4
  %379 = add nsw i32 16, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  store i32 %367, i32* %381, align 4
  %382 = load i32*, i32** @scan8, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** @scan8, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %386, %389
  %391 = and i32 %390, 7
  %392 = mul nsw i32 4, %391
  %393 = load i32, i32* %7, align 4
  %394 = shl i32 %392, %393
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 4
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 1
  %401 = load i32, i32* %400, align 4
  %402 = mul nsw i32 8, %401
  %403 = load i32*, i32** @scan8, align 8
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32*, i32** @scan8, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  %410 = load i32, i32* %409, align 4
  %411 = sub nsw i32 %407, %410
  %412 = ashr i32 %411, 3
  %413 = mul nsw i32 %402, %412
  %414 = add nsw i32 %394, %413
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %5, align 4
  %419 = add nsw i32 80, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  store i32 %414, i32* %421, align 4
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 3
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %5, align 4
  %426 = add nsw i32 64, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  store i32 %414, i32* %428, align 4
  br label %429

429:                                              ; preds = %334
  %430 = load i32, i32* %5, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %5, align 4
  br label %331

432:                                              ; preds = %331
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 6
  %435 = load %struct.TYPE_30__*, %struct.TYPE_30__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %435, i32 0, i32 0
  store i64 0, i64* %436, align 8
  %437 = load i32, i32* @INT_MAX, align 4
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 6
  %440 = load %struct.TYPE_30__*, %struct.TYPE_30__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %440, i32 0, i32 3
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 1
  store i32 %437, i32* %443, align 4
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %444, i32 0, i32 6
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i32 0, i32 3
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  store i32 %437, i32* %449, align 4
  %450 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %450, i32 0, i32 10
  store i32* null, i32** %451, align 8
  %452 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %452, i32 0, i32 9
  store i64 0, i64* %453, align 8
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_22__*, %struct.TYPE_22__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %432
  %462 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @PICT_FRAME, align 8
  %466 = icmp eq i64 %464, %465
  br label %467

467:                                              ; preds = %461, %432
  %468 = phi i1 [ false, %432 ], [ %466, %461 ]
  %469 = zext i1 %468 to i32
  %470 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i32 0, i32 4
  store i32 %469, i32* %471, align 8
  %472 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 7
  %474 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp sge i64 %476, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %467
  %479 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %479, i32 0, i32 7
  %481 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 5
  store i64 %483, i64* %485, align 8
  br label %486

486:                                              ; preds = %478, %467
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 6
  %489 = load %struct.TYPE_30__*, %struct.TYPE_30__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %489, i32 0, i32 2
  %491 = load i64, i64* %490, align 8
  %492 = icmp eq i64 %491, 0
  %493 = zext i1 %492 to i32
  %494 = call i32 @assert(i32 %493)
  store i32 0, i32* %2, align 4
  br label %495

495:                                              ; preds = %486, %169, %140, %31, %16
  %496 = load i32, i32* %2, align 4
  ret i32 %496
}

declare dso_local i32 @ff_thread_can_start_frame(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @release_unused_pictures(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @find_unused_picture(%struct.TYPE_20__*) #1

declare dso_local i32 @alloc_picture(%struct.TYPE_20__*, %struct.TYPE_30__*) #1

declare dso_local i32 @ff_h264_unref_picture(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ff_h264_set_erpic(i32*, i32*) #1

declare dso_local i32 @ff_h264_ref_picture(%struct.TYPE_20__*, i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @ff_er_frame_start(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
