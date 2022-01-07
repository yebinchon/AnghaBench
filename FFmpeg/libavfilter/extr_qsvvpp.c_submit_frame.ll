; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_submit_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_submit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_27__*, %struct.TYPE_24__*, %struct.TYPE_27__ }
%struct.TYPE_24__ = type { i32, i32, i64, i32, i32, i32, i64* }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32* }
%struct.TYPE_30__ = type { i64, i32, i32*, i32 }

@AV_PIX_FMT_QSV = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QSVVPP gets a wrong frame.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Unsupported frame.\0A\00", align 1
@default_tb = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_PROGRESSIVE = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FIELD_TFF = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FIELD_BFF = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FIELD_REPEATED = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FRAME_DOUBLING = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FRAME_TRIPLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_28__*, %struct.TYPE_31__*, %struct.TYPE_30__*)* @submit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @submit_frame(%struct.TYPE_28__* %0, %struct.TYPE_31__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %10 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clear_unused_frames(i32 %15)
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  %19 = call %struct.TYPE_29__* @get_free_frame(i32* %18)
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %8, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %21 = icmp ne %struct.TYPE_29__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %4, align 8
  br label %248

23:                                               ; preds = %3
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @IS_SYSTEM_MEMORY(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 @av_log(i32* %36, i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %4, align 8
  br label %248

39:                                               ; preds = %29
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %41 = call i8* @av_frame_clone(%struct.TYPE_30__* %40)
  %42 = bitcast i8* %41 to %struct.TYPE_24__*
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %44, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 6
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_27__*
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %54, align 8
  br label %141

55:                                               ; preds = %23
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 31
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 31
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %118

69:                                               ; preds = %61, %55
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @FFALIGN(i32 %73, i32 32)
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FFALIGN(i32 %77, i32 32)
  %79 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_31__* %70, i32 %74, i32 %78)
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 1
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %81, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = icmp ne %struct.TYPE_24__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %69
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %4, align 8
  br label %248

87:                                               ; preds = %69
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 5
  store i32 %90, i32* %94, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %106 = call i64 @av_frame_copy(%struct.TYPE_24__* %104, %struct.TYPE_30__* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %87
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 1
  %111 = call i32 @av_frame_free(%struct.TYPE_24__** %110)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %4, align 8
  br label %248

112:                                              ; preds = %87
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %117 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %115, %struct.TYPE_30__* %116)
  br label %124

118:                                              ; preds = %61
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %120 = call i8* @av_frame_clone(%struct.TYPE_30__* %119)
  %121 = bitcast i8* %120 to %struct.TYPE_24__*
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %123, align 8
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 2
  %130 = call i64 @map_frame_to_surface(%struct.TYPE_24__* %127, %struct.TYPE_27__* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = call i32 @av_log(i32* %133, i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %4, align 8
  br label %248

136:                                              ; preds = %124
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  store %struct.TYPE_27__* %138, %struct.TYPE_27__** %140, align 8
  br label %141

141:                                              ; preds = %136, %39
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %147, align 8
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %150 = call i64 @FF_INLINK_IDX(%struct.TYPE_31__* %149)
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i64 %150
  %152 = bitcast %struct.TYPE_26__* %145 to i8*
  %153 = bitcast %struct.TYPE_26__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 4, i1 false)
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @default_tb, align 4
  %163 = call i32 @av_rescale_q(i32 %158, i32 %161, i32 %162)
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  store i32 %163, i32* %168, align 4
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %141
  %176 = load i32, i32* @MFX_PICSTRUCT_PROGRESSIVE, align 4
  br label %190

177:                                              ; preds = %141
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @MFX_PICSTRUCT_FIELD_TFF, align 4
  br label %188

186:                                              ; preds = %177
  %187 = load i32, i32* @MFX_PICSTRUCT_FIELD_BFF, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  br label %190

190:                                              ; preds = %188, %175
  %191 = phi i32 [ %176, %175 ], [ %189, %188 ]
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  store i32 %191, i32* %196, align 4
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %212

203:                                              ; preds = %190
  %204 = load i32, i32* @MFX_PICSTRUCT_FIELD_REPEATED, align 4
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %204
  store i32 %211, i32* %209, align 4
  br label %246

212:                                              ; preds = %190
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = load i32, i32* @MFX_PICSTRUCT_FRAME_DOUBLING, align 4
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %220
  store i32 %227, i32* %225, align 4
  br label %245

228:                                              ; preds = %212
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 4
  br i1 %234, label %235, label %244

235:                                              ; preds = %228
  %236 = load i32, i32* @MFX_PICSTRUCT_FRAME_TRIPLING, align 4
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %236
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %235, %228
  br label %245

245:                                              ; preds = %244, %219
  br label %246

246:                                              ; preds = %245, %203
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_29__* %247, %struct.TYPE_29__** %4, align 8
  br label %248

248:                                              ; preds = %246, %132, %108, %86, %35, %22
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  ret %struct.TYPE_29__* %249
}

declare dso_local i32 @clear_unused_frames(i32) #1

declare dso_local %struct.TYPE_29__* @get_free_frame(i32*) #1

declare dso_local i32 @IS_SYSTEM_MEMORY(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i8* @av_frame_clone(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i64 @av_frame_copy(%struct.TYPE_24__*, %struct.TYPE_30__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_30__*) #1

declare dso_local i64 @map_frame_to_surface(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i64 @FF_INLINK_IDX(%struct.TYPE_31__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
