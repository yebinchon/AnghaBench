; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_add_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_add_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, i8*, i32, i64, i8*, i8*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_CONFIG = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_FRAME_START = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@MMAL_TIME_UNKNOWN = common dso_local global i8* null, align 8
@MMAL_BUFFER_HEADER_FLAG_FRAME_END = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* @ffmmal_add_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmmal_add_packet(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* bitcast ([1 x i8]* @.str to i32*), i32** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = call i8* @av_buffer_ref(%struct.TYPE_21__* %29)
  %31 = bitcast i8* %30 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %8, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  br label %63

38:                                               ; preds = %21
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_21__* @av_buffer_alloc(i32 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %8, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = icmp ne %struct.TYPE_21__* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32* %48, i32* %51, i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %10, align 8
  br label %62

62:                                               ; preds = %45, %38
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = icmp ne %struct.TYPE_21__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %12, align 4
  br label %254

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %72, %69
  br label %95

78:                                               ; preds = %3
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %254

84:                                               ; preds = %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %254

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32*, i32** %10, align 8
  store i32* %96, i32** %11, align 8
  br label %97

97:                                               ; preds = %250, %95
  %98 = call %struct.TYPE_18__* @av_mallocz(i32 56)
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %13, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %100 = icmp ne %struct.TYPE_18__* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = call i32 @AVERROR(i32 %102)
  store i32 %103, i32* %12, align 4
  br label %254

104:                                              ; preds = %97
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 6
  store i32* %105, i32** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %113, i64 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @FFMIN(i32 %108, i32 %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %104
  %124 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CONFIG, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %104
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = icmp eq i32* %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_START, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %129
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 %142
  store i32* %144, i32** %10, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = sub nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %139
  %158 = load i8*, i8** @MMAL_TIME_UNKNOWN, align 8
  br label %164

159:                                              ; preds = %139
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i8*
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i8* [ %158, %157 ], [ %163, %159 ]
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i8*, i8** @MMAL_TIME_UNKNOWN, align 8
  br label %180

175:                                              ; preds = %164
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to i8*
  br label %180

180:                                              ; preds = %175, %173
  %181 = phi i8* [ %174, %173 ], [ %179, %175 ]
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_END, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 4
  %194 = call i32 @atomic_fetch_add(i32* %193, i32 1)
  br label %195

195:                                              ; preds = %186, %180
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  br label %208

208:                                              ; preds = %200, %195
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %210 = icmp ne %struct.TYPE_21__* %209, null
  br i1 %210, label %211, label %226

211:                                              ; preds = %208
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %213 = call i8* @av_buffer_ref(%struct.TYPE_21__* %212)
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %211
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %222 = call i32 @av_free(%struct.TYPE_18__* %221)
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = call i32 @AVERROR(i32 %223)
  store i32 %224, i32* %12, align 4
  br label %254

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225, %208
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = icmp ne %struct.TYPE_18__* %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 3
  store %struct.TYPE_18__* %232, %struct.TYPE_18__** %234, align 8
  br label %235

235:                                              ; preds = %231, %226
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %237, align 8
  %239 = icmp ne %struct.TYPE_18__* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  store %struct.TYPE_18__* %241, %struct.TYPE_18__** %245, align 8
  br label %246

246:                                              ; preds = %240, %235
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  store %struct.TYPE_18__* %247, %struct.TYPE_18__** %249, align 8
  br label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %97, label %253

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %253, %220, %101, %89, %83, %66
  %255 = call i32 @av_buffer_unref(%struct.TYPE_21__** %8)
  %256 = load i32, i32* %12, align 4
  ret i32 %256
}

declare dso_local i8* @av_buffer_ref(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @av_buffer_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_18__* @av_mallocz(i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_18__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_21__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
