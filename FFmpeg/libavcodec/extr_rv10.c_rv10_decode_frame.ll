; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv10.c_rv10_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv10.c_rv10_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"*****frame %d size=%d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid slice count: %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@FF_QSCALE_TYPE_MPEG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*)* @rv10_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv10_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %13, align 8
  store i32* null, i32** %17, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ff_dlog(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %276

41:                                               ; preds = %4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %78, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  %49 = load i32, i32* %47, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %16, align 4
  %58 = mul nsw i32 8, %57
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %46
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @av_log(%struct.TYPE_17__* %61, i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %5, align 4
  br label %276

66:                                               ; preds = %55
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %17, align 8
  %69 = load i32, i32* %16, align 4
  %70 = mul nsw i32 8, %69
  %71 = load i32*, i32** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = mul nsw i32 8, %74
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %82

78:                                               ; preds = %41
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %78, %66
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %169, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %172

87:                                               ; preds = %83
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @get_slice_offset(%struct.TYPE_17__* %88, i32* %89, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %5, align 4
  br label %276

97:                                               ; preds = %87
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %16, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sub i32 %103, %104
  store i32 %105, i32* %19, align 4
  br label %114

106:                                              ; preds = %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @get_slice_offset(%struct.TYPE_17__* %107, i32* %108, i32 %110)
  %112 = load i32, i32* %18, align 4
  %113 = sub i32 %111, %112
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %106, %102
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 2
  %117 = load i32, i32* %16, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %18, align 4
  %122 = sub i32 %120, %121
  store i32 %122, i32* %20, align 4
  br label %131

123:                                              ; preds = %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 2
  %128 = call i32 @get_slice_offset(%struct.TYPE_17__* %124, i32* %125, i32 %127)
  %129 = load i32, i32* %18, align 4
  %130 = sub i32 %128, %129
  store i32 %130, i32* %20, align 4
  br label %131

131:                                              ; preds = %123, %119
  %132 = load i32, i32* %19, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %20, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @FFMAX(i32 %139, i32 %140)
  %142 = add i32 %138, %141
  %143 = load i32, i32* %11, align 4
  %144 = icmp ugt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %137, %134, %131
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %5, align 4
  br label %276

147:                                              ; preds = %137
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %18, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @rv10_decode_packet(%struct.TYPE_17__* %148, i32* %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %15, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %5, align 4
  br label %276

160:                                              ; preds = %147
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %19, align 4
  %163 = mul nsw i32 8, %162
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %83

172:                                              ; preds = %83
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = icmp ne %struct.TYPE_18__* %175, null
  br i1 %176, label %177, label %272

177:                                              ; preds = %172
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp sge i64 %180, %183
  br i1 %184, label %185, label %272

185:                                              ; preds = %177
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 6
  %188 = call i32 @ff_er_frame_end(i32* %187)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %190 = call i32 @ff_mpv_frame_end(%struct.TYPE_15__* %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %201, label %196

196:                                              ; preds = %185
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %226

201:                                              ; preds = %196, %185
  %202 = load i32*, i32** %13, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @av_frame_ref(i32* %202, i32 %207)
  store i32 %208, i32* %15, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %5, align 4
  br label %276

212:                                              ; preds = %201
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = load i32*, i32** %13, align 8
  %218 = call i32 @ff_print_debug_info(%struct.TYPE_15__* %213, %struct.TYPE_18__* %216, i32* %217)
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %220 = load i32*, i32** %13, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = load i32, i32* @FF_QSCALE_TYPE_MPEG1, align 4
  %225 = call i32 @ff_mpv_export_qp_table(%struct.TYPE_15__* %219, i32* %220, %struct.TYPE_18__* %223, i32 %224)
  br label %257

226:                                              ; preds = %196
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 5
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = icmp ne %struct.TYPE_18__* %229, null
  br i1 %230, label %231, label %256

231:                                              ; preds = %226
  %232 = load i32*, i32** %13, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @av_frame_ref(i32* %232, i32 %237)
  store i32 %238, i32* %15, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i32, i32* %15, align 4
  store i32 %241, i32* %5, align 4
  br label %276

242:                                              ; preds = %231
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 5
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = call i32 @ff_print_debug_info(%struct.TYPE_15__* %243, %struct.TYPE_18__* %246, i32* %247)
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %250 = load i32*, i32** %13, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 5
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  %254 = load i32, i32* @FF_QSCALE_TYPE_MPEG1, align 4
  %255 = call i32 @ff_mpv_export_qp_table(%struct.TYPE_15__* %249, i32* %250, %struct.TYPE_18__* %253, i32 %254)
  br label %256

256:                                              ; preds = %242, %226
  br label %257

257:                                              ; preds = %256, %212
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 5
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = icmp ne %struct.TYPE_18__* %260, null
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %262, %257
  %268 = load i32*, i32** %8, align 8
  store i32 1, i32* %268, align 4
  br label %269

269:                                              ; preds = %267, %262
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %271, align 8
  br label %272

272:                                              ; preds = %269, %177, %172
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %272, %240, %210, %158, %145, %95, %60, %40
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @ff_dlog(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @get_slice_offset(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @rv10_decode_packet(%struct.TYPE_17__*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_er_frame_end(i32*) #1

declare dso_local i32 @ff_mpv_frame_end(%struct.TYPE_15__*) #1

declare dso_local i32 @av_frame_ref(i32*, i32) #1

declare dso_local i32 @ff_print_debug_info(%struct.TYPE_15__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ff_mpv_export_qp_table(%struct.TYPE_15__*, i32*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
