; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_subframe_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_subframe_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i32**, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_subframe_(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %19, i32* %10, i32 8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %265

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 254
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %23
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @FLAC__bitreader_read_unary_unsigned(i32 %35, i32* %13)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %265

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = add i32 %40, 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i32 %41, i32* %51, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %265

66:                                               ; preds = %39
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %91

80:                                               ; preds = %23
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %66
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC, align 4
  %98 = call i32 @send_error_to_client_(%struct.TYPE_18__* %96, i32 %97)
  %99 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  store i32 1, i32* %5, align 4
  br label %265

104:                                              ; preds = %91
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @read_subframe_constant_(%struct.TYPE_18__* %108, i32 %109, i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %265

115:                                              ; preds = %107
  br label %202

116:                                              ; preds = %104
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @read_subframe_verbatim_(%struct.TYPE_18__* %120, i32 %121, i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %265

127:                                              ; preds = %119
  br label %201

128:                                              ; preds = %116
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 16
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM, align 4
  %134 = call i32 @send_error_to_client_(%struct.TYPE_18__* %132, i32 %133)
  %135 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  store i64 %135, i64* %139, align 8
  store i32 1, i32* %5, align 4
  br label %265

140:                                              ; preds = %128
  %141 = load i32, i32* %10, align 4
  %142 = icmp sle i32 %141, 24
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %10, align 4
  %148 = ashr i32 %147, 1
  %149 = and i32 %148, 7
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @read_subframe_fixed_(%struct.TYPE_18__* %144, i32 %145, i32 %146, i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %265

154:                                              ; preds = %143
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  store i32 1, i32* %5, align 4
  br label %265

163:                                              ; preds = %154
  br label %199

164:                                              ; preds = %140
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 64
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %169 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM, align 4
  %170 = call i32 @send_error_to_client_(%struct.TYPE_18__* %168, i32 %169)
  %171 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  store i32 1, i32* %5, align 4
  br label %265

176:                                              ; preds = %164
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %10, align 4
  %181 = ashr i32 %180, 1
  %182 = and i32 %181, 31
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @read_subframe_lpc_(%struct.TYPE_18__* %177, i32 %178, i32 %179, i32 %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %176
  store i32 0, i32* %5, align 4
  br label %265

188:                                              ; preds = %176
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  store i32 1, i32* %5, align 4
  br label %265

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %163
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200, %127
  br label %202

202:                                              ; preds = %201, %115
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %264

206:                                              ; preds = %203
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %264

209:                                              ; preds = %206
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %221

221:                                              ; preds = %260, %209
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ult i32 %222, %229
  br i1 %230, label %231, label %263

231:                                              ; preds = %221
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %10, align 4
  %247 = shl i32 %245, %246
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %247, i32* %259, align 4
  br label %260

260:                                              ; preds = %231
  %261 = load i32, i32* %12, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %221

263:                                              ; preds = %221
  br label %264

264:                                              ; preds = %263, %206, %203
  store i32 1, i32* %5, align 4
  br label %265

265:                                              ; preds = %264, %196, %187, %167, %162, %153, %131, %126, %114, %95, %65, %38, %22
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i32*, i32) #1

declare dso_local i32 @FLAC__bitreader_read_unary_unsigned(i32, i32*) #1

declare dso_local i32 @send_error_to_client_(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @read_subframe_constant_(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @read_subframe_verbatim_(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @read_subframe_fixed_(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @read_subframe_lpc_(%struct.TYPE_18__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
