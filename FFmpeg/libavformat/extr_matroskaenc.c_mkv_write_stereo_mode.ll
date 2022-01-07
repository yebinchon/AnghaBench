; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_stereo_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_stereo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@MATROSKA_VIDEO_STEREOMODE_TYPE_NB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"stereo_mode\00", align 1
@ff_matroska_video_stereo_mode = common dso_local global i32* null, align 8
@AV_PKT_DATA_STEREO3D = common dso_local global i64 0, align 8
@MATROSKA_VIDEO_STEREOMODE_TYPE_MONO = common dso_local global i32 0, align 4
@AV_STEREO3D_FLAG_INVERT = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_RIGHT_LEFT = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_LEFT_RIGHT = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_TOP_BOTTOM = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_CHECKERBOARD_LR = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_ROW_INTERLEAVED_LR = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_COL_INTERLEAVED_LR = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_STEREOMODE_TYPE_BOTH_EYES_BLOCK_LR = common dso_local global i32 0, align 4
@MODE_WEBM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"The specified stereo mode is not valid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOSTEREOMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, %struct.TYPE_11__*, i32, i32*, i32*)* @mkv_write_stereo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_stereo_mode(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_NB, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32*, i32** %12, align 8
  store i32 1, i32* %23, align 4
  %24 = load i32*, i32** %13, align 8
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_15__* @av_dict_get(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %16, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_15__* @av_dict_get(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %16, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %82

36:                                               ; preds = %30, %6
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @atoi(i32 %39)
  store i32 %40, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %59, %36
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_NB, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @ff_matroska_video_stereo_mode, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %48, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %18, align 4
  br label %62

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %41

62:                                               ; preds = %56, %41
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_NB, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 10
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 12
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @ff_mkv_stereo3d_conv(%struct.TYPE_11__* %73, i32 %74)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %7, align 4
  br label %228

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %69, %66, %62
  br label %82

82:                                               ; preds = %81, %30
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %190, %82
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %193

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = bitcast %struct.TYPE_13__* %20 to i8*
  %97 = bitcast %struct.TYPE_13__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AV_PKT_DATA_STEREO3D, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %189

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %21, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %188 [
    i32 134, label %109
    i32 129, label %111
    i32 128, label %125
    i32 133, label %138
    i32 130, label %150
    i32 132, label %163
    i32 131, label %176
  ]

109:                                              ; preds = %102
  %110 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_MONO, align 4
  store i32 %110, i32* %17, align 4
  br label %188

111:                                              ; preds = %102
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_RIGHT_LEFT, align 4
  br label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_LEFT_RIGHT, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  store i32 %123, i32* %17, align 4
  %124 = load i32*, i32** %12, align 8
  store i32 2, i32* %124, align 4
  br label %188

125:                                              ; preds = %102
  %126 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_TOP_BOTTOM, align 4
  store i32 %126, i32* %17, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %133, %125
  %137 = load i32*, i32** %13, align 8
  store i32 2, i32* %137, align 4
  br label %188

138:                                              ; preds = %102
  %139 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_CHECKERBOARD_LR, align 4
  store i32 %139, i32* %17, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %146, %138
  br label %188

150:                                              ; preds = %102
  %151 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_ROW_INTERLEAVED_LR, align 4
  store i32 %151, i32* %17, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %158, %150
  %162 = load i32*, i32** %13, align 8
  store i32 2, i32* %162, align 4
  br label %188

163:                                              ; preds = %102
  %164 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_COL_INTERLEAVED_LR, align 4
  store i32 %164, i32* %17, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %171, %163
  %175 = load i32*, i32** %12, align 8
  store i32 2, i32* %175, align 4
  br label %188

176:                                              ; preds = %102
  %177 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_BOTH_EYES_BLOCK_LR, align 4
  store i32 %177, i32* %17, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %184, %176
  br label %188

188:                                              ; preds = %102, %187, %174, %161, %149, %136, %122, %109
  br label %193

189:                                              ; preds = %89
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %83

193:                                              ; preds = %188, %83
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_NB, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %7, align 4
  br label %228

199:                                              ; preds = %193
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @MODE_WEBM, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_TOP_BOTTOM, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_RIGHT_LEFT, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %215, label %211

211:                                              ; preds = %207, %203, %199
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_NB, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %211, %207
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %217 = load i32, i32* @AV_LOG_ERROR, align 4
  %218 = call i32 @av_log(%struct.TYPE_14__* %216, i32 %217, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %219 = load i32, i32* @MATROSKA_VIDEO_STEREOMODE_TYPE_NB, align 4
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* @EINVAL, align 4
  %221 = call i32 @AVERROR(i32 %220)
  store i32 %221, i32* %7, align 4
  br label %228

222:                                              ; preds = %211
  %223 = load i32*, i32** %9, align 8
  %224 = load i32, i32* @MATROSKA_ID_VIDEOSTEREOMODE, align 4
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @put_ebml_uint(i32* %223, i32 %224, i32 %225)
  %227 = load i32, i32* %15, align 4
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %222, %215, %197, %78
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local %struct.TYPE_15__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ff_mkv_stereo3d_conv(%struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @put_ebml_uint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
