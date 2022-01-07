; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp56.c_ff_vp56_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp56.c_ff_vp56_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8**, i32 (%struct.TYPE_13__*, i32*, i32)*, i64, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i8**, i32 (%struct.TYPE_16__*, i32*, i32)* }
%struct.TYPE_14__ = type { i32, i32* }

@VP56_FRAME_CURRENT = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@VP56_SIZE_CHANGE = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUVA420P = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Alpha reconfiguration\0A\00", align 1
@ff_vp56_decode_mbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vp56_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %11, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %5, align 4
  br label %272

47:                                               ; preds = %42
  %48 = call i32 @bytestream_get_be24(i32** %10)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 3
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %5, align 4
  br label %272

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 %60(%struct.TYPE_13__* %61, i32* %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %5, align 4
  br label %272

69:                                               ; preds = %57
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %105

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @av_frame_unref(i8* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = icmp ne %struct.TYPE_16__* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %77
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @av_frame_unref(i8* %99)
  br label %101

101:                                              ; preds = %90, %77
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %74

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105, %69
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %110 = call i32 @ff_get_buffer(%struct.TYPE_15__* %107, i8* %108, i32 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = call i32 @ff_set_dimensions(%struct.TYPE_15__* %118, i32 0, i32 0)
  br label %120

120:                                              ; preds = %117, %113
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %5, align 4
  br label %272

122:                                              ; preds = %106
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AV_PIX_FMT_YUVA420P, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %122
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @av_frame_unref(i8* %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @av_frame_ref(i8* %145, i8* %146)
  store i32 %147, i32* %17, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %128
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 @av_frame_unref(i8* %150)
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = call i32 @ff_set_dimensions(%struct.TYPE_15__* %156, i32 0, i32 0)
  br label %158

158:                                              ; preds = %155, %149
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %5, align 4
  br label %272

160:                                              ; preds = %128
  br label %161

161:                                              ; preds = %160, %122
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %167 = call i64 @vp56_size_changed(%struct.TYPE_13__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @av_frame_unref(i8* %170)
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %172, i32* %5, align 4
  br label %272

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %161
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AV_PIX_FMT_YUVA420P, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %238

180:                                              ; preds = %174
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %18, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %19, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %20, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %10, align 8
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %13, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = load i32 (%struct.TYPE_16__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32*, i32)** %203, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i32 %204(%struct.TYPE_16__* %207, i32* %208, i32 %209)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %180
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = load i32, i32* @AV_LOG_ERROR, align 4
  %220 = call i32 @av_log(%struct.TYPE_15__* %218, i32 %219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %19, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %21, align 4
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %217, %213
  %234 = load i8*, i8** %12, align 8
  %235 = call i32 @av_frame_unref(i8* %234)
  %236 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %236, i32* %5, align 4
  br label %272

237:                                              ; preds = %180
  br label %238

238:                                              ; preds = %237, %174
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  store i64 0, i64* %240, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 5
  %243 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %242, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %245 = load i32, i32* @ff_vp56_decode_mbs, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @AV_PIX_FMT_YUVA420P, align 8
  %250 = icmp eq i64 %248, %249
  %251 = zext i1 %250 to i32
  %252 = add nsw i32 %251, 1
  %253 = call i32 %243(%struct.TYPE_15__* %244, i32 %245, i32 0, i32 0, i32 %252)
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %238
  %259 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %259, i32* %5, align 4
  br label %272

260:                                              ; preds = %238
  %261 = load i8*, i8** %7, align 8
  %262 = load i8*, i8** %12, align 8
  %263 = call i32 @av_frame_ref(i8* %261, i8* %262)
  store i32 %263, i32* %16, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* %16, align 4
  store i32 %266, i32* %5, align 4
  br label %272

267:                                              ; preds = %260
  %268 = load i32*, i32** %8, align 8
  store i32 1, i32* %268, align 4
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %267, %265, %258, %233, %169, %158, %120, %67, %54, %45
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i32 @bytestream_get_be24(i32**) #1

declare dso_local i32 @av_frame_unref(i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, i8*) #1

declare dso_local i64 @vp56_size_changed(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
