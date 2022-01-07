; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__fetch_and_process_packet.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__fetch_and_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, i64, i32, i64*, i32, i32, i32, i64, i64*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INITSET = common dso_local global i64 0, align 8
@OV_HOLE = common dso_local global i32 0, align 4
@OV_EFAULT = common dso_local global i32 0, align 4
@OPENED = common dso_local global i64 0, align 8
@OV_EOF = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8
@OV_EBADLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i32)* @_fetch_and_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fetch_and_process_packet(%struct.TYPE_19__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 20, i1 false)
  %20 = bitcast %struct.TYPE_18__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 36, i1 false)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %3, %304
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INITSET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %156

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %154
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ogg_stream_packetout(i32 %31, %struct.TYPE_18__* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @OV_HOLE, align 4
  store i32 %36, i32* %9, align 4
  br label %309

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %153

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 14
  %45 = call i32 @vorbis_synthesis(i32* %44, %struct.TYPE_18__* %8, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %152, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 12
  %50 = call i32 @vorbis_synthesis_pcmout(i32* %49, i32* null)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @OV_EFAULT, align 4
  store i32 %54, i32* %9, align 4
  br label %309

55:                                               ; preds = %47
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 12
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 14
  %60 = call i32 @vorbis_synthesis_blockin(i32* %57, i32* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 12
  %63 = call i32 @vorbis_synthesis_pcmout(i32* %62, i32* null)
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %151

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %151, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 10
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  br label %93

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i32 [ %91, %88 ], [ 0, %92 ]
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 11
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %102, %99, %93
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 12
  %122 = call i32 @vorbis_synthesis_pcmout(i32* %121, i32* null)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %144, %119
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 11
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %126

147:                                              ; preds = %126
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %79, %55
  store i32 1, i32* %9, align 4
  br label %309

152:                                              ; preds = %40
  br label %154

153:                                              ; preds = %37
  br label %155

154:                                              ; preds = %152
  br label %28

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %21
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @OPENED, align 8
  %161 = icmp sge i64 %159, %160
  br i1 %161, label %162, label %215

162:                                              ; preds = %156
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  br label %309

166:                                              ; preds = %162
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %168 = call i32 @_get_next_page(%struct.TYPE_19__* %167, %struct.TYPE_17__* %7, i32 -1)
  store i32 %168, i32* %16, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @OV_EOF, align 4
  store i32 %171, i32* %16, align 4
  br label %309

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %174, 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @INITSET, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %214

185:                                              ; preds = %172
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @ogg_page_serialno(%struct.TYPE_17__* %7)
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %185
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @OV_EOF, align 4
  store i32 %195, i32* %16, align 4
  br label %309

196:                                              ; preds = %191
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %198 = call i32 @_decode_clear(%struct.TYPE_19__* %197)
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 10
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %196
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @vorbis_info_clear(i32 %206)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @vorbis_comment_clear(i32 %210)
  br label %212

212:                                              ; preds = %203, %196
  br label %213

213:                                              ; preds = %212, %185
  br label %214

214:                                              ; preds = %213, %172
  br label %215

215:                                              ; preds = %214, %156
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @INITSET, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %304

221:                                              ; preds = %215
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @STREAMSET, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %301

227:                                              ; preds = %221
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %281

232:                                              ; preds = %227
  %233 = call i64 @ogg_page_serialno(%struct.TYPE_17__* %7)
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  store i64 %233, i64* %235, align 8
  store i32 0, i32* %17, align 4
  br label %236

236:                                              ; preds = %256, %232
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %236
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 6
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %242
  br label %259

255:                                              ; preds = %242
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %236

259:                                              ; preds = %254, %236
  %260 = load i32, i32* %17, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %260, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* @OV_EBADLINK, align 4
  store i32 %266, i32* %9, align 4
  br label %309

267:                                              ; preds = %259
  %268 = load i32, i32* %17, align 4
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @ogg_stream_reset_serialno(i32 %273, i64 %276)
  %278 = load i64, i64* @STREAMSET, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  store i64 %278, i64* %280, align 8
  br label %300

281:                                              ; preds = %227
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 9
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 4
  %291 = call i32 @_fetch_headers(%struct.TYPE_19__* %282, i32 %285, i32 %288, i64* %290, %struct.TYPE_17__* %7)
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %18, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %281
  br label %309

295:                                              ; preds = %281
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  store i32 0, i32* %17, align 4
  br label %300

300:                                              ; preds = %295, %267
  br label %301

301:                                              ; preds = %300, %221
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %303 = call i32 @_make_decode_ready(%struct.TYPE_19__* %302)
  br label %304

304:                                              ; preds = %301, %215
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @ogg_stream_pagein(i32 %307, %struct.TYPE_17__* %7)
  br label %21

309:                                              ; preds = %294, %265, %194, %170, %165, %151, %53, %35
  %310 = call i32 @ogg_packet_release(%struct.TYPE_18__* %8)
  %311 = call i32 @ogg_page_release(%struct.TYPE_17__* %7)
  %312 = load i32, i32* %9, align 4
  ret i32 %312
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ogg_stream_packetout(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @vorbis_synthesis(i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @vorbis_synthesis_pcmout(i32*, i32*) #2

declare dso_local i32 @vorbis_synthesis_blockin(i32*, i32*) #2

declare dso_local i32 @_get_next_page(%struct.TYPE_19__*, %struct.TYPE_17__*, i32) #2

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_17__*) #2

declare dso_local i32 @_decode_clear(%struct.TYPE_19__*) #2

declare dso_local i32 @vorbis_info_clear(i32) #2

declare dso_local i32 @vorbis_comment_clear(i32) #2

declare dso_local i32 @ogg_stream_reset_serialno(i32, i64) #2

declare dso_local i32 @_fetch_headers(%struct.TYPE_19__*, i32, i32, i64*, %struct.TYPE_17__*) #2

declare dso_local i32 @_make_decode_ready(%struct.TYPE_19__*) #2

declare dso_local i32 @ogg_stream_pagein(i32, %struct.TYPE_17__*) #2

declare dso_local i32 @ogg_packet_release(%struct.TYPE_18__*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
