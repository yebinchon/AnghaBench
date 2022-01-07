; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessRecvPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessRecvPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32, i32, i32, i32, i32, i32, i64 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8
@RUDP_PROTOCOL_ICMP = common dso_local global i64 0, align 8
@RUDP_MAX_NUM_ACK = common dso_local global i32 0, align 4
@RUDP_MAX_SEGMENT_SIZE = common dso_local global i32 0, align 4
@RUDP_SESSION_STATUS_CONNECT_SENT = common dso_local global i64 0, align 8
@RUDP_SESSION_STATUS_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RUDPProcessRecvPacket(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %30 = load i32, i32* @SHA1_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  %34 = load i32, i32* @SHA1_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %37 = load i32, i32* @SHA1_SIZE, align 4
  %38 = mul nsw i32 %37, 2
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %16, align 8
  %41 = load i32, i32* @SHA1_SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %17, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = icmp eq %struct.TYPE_15__* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = icmp eq %struct.TYPE_16__* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49, %46, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %13, align 8
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @SHA1_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

64:                                               ; preds = %56
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @SHA1_SIZE, align 4
  %67 = call i32 @Copy(i32* %33, i32* %65, i32 %66)
  %68 = load i32*, i32** %13, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @SHA1_SIZE, align 4
  %73 = call i32 @Copy(i32* %68, i32* %71, i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @Sha1(i32* %36, i32* %74, i32 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* @SHA1_SIZE, align 4
  %79 = call i32 @Copy(i32* %77, i32* %33, i32 %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %64
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85, %64
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SHA1_SIZE, align 4
  %96 = call i32 @XorData(i32* %36, i32* %36, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load i32, i32* @SHA1_SIZE, align 4
  %99 = call i64 @Cmp(i32* %33, i32* %36, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

102:                                              ; preds = %97
  %103 = load i32, i32* @SHA1_SIZE, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %13, align 8
  %107 = load i32, i32* @SHA1_SIZE, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @SHA1_SIZE, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

114:                                              ; preds = %102
  %115 = load i32*, i32** %13, align 8
  store i32* %115, i32** %14, align 8
  %116 = load i32, i32* @SHA1_SIZE, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %13, align 8
  %120 = load i32, i32* @SHA1_SIZE, align 4
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

126:                                              ; preds = %114
  %127 = getelementptr inbounds i32, i32* %40, i64 0
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* @SHA1_SIZE, align 4
  %130 = call i32 @Copy(i32* %127, i32* %128, i32 %129)
  %131 = load i32, i32* @SHA1_SIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %40, i64 %132
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @SHA1_SIZE, align 4
  %138 = call i32 @Copy(i32* %133, i32* %136, i32 %137)
  %139 = mul nuw i64 4, %39
  %140 = trunc i64 %139 to i32
  %141 = call i32 @Sha1(i32* %43, i32* %40, i32 %140)
  %142 = mul nuw i64 4, %42
  %143 = trunc i64 %142 to i32
  %144 = call i32* @NewCrypt(i32* %43, i32 %143)
  store i32* %144, i32** %18, align 8
  %145 = load i32*, i32** %18, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @Encrypt(i32* %145, i32* %146, i32* %147, i32 %148)
  %150 = load i32*, i32** %18, align 8
  %151 = call i32 @FreeCrypt(i32* %150)
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

161:                                              ; preds = %126
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

166:                                              ; preds = %161
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %15, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %171, 4
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

174:                                              ; preds = %166
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @READ_UINT64(i32* %175)
  store i32 %176, i32* %26, align 4
  %177 = load i32*, i32** %13, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %13, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = sub i64 %180, 4
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = icmp ult i64 %184, 4
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

187:                                              ; preds = %174
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @READ_UINT64(i32* %188)
  store i32 %189, i32* %27, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  store i32* %191, i32** %13, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 %193, 4
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %27, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

202:                                              ; preds = %187
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ult i64 %204, 4
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

207:                                              ; preds = %202
  %208 = load i32*, i32** %13, align 8
  %209 = call i32 @READ_UINT64(i32* %208)
  store i32 %209, i32* %25, align 4
  %210 = load i32*, i32** %13, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  store i32* %211, i32** %13, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = sub i64 %213, 4
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp ult i64 %217, 4
  br i1 %218, label %219, label %220

219:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

220:                                              ; preds = %207
  %221 = load i32*, i32** %13, align 8
  %222 = call i32 @READ_UINT(i32* %221)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* @RUDP_MAX_NUM_ACK, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

227:                                              ; preds = %220
  %228 = load i32*, i32** %13, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  store i32* %229, i32** %13, align 8
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = sub i64 %231, 4
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = mul i64 4, %237
  %239 = add i64 %238, 4
  %240 = icmp ult i64 %235, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

242:                                              ; preds = %227
  %243 = load i32, i32* %25, align 4
  %244 = icmp sge i32 %243, 1
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %248 = load i32, i32* %25, align 4
  %249 = call i32 @RUDPProcessAck2(%struct.TYPE_15__* %246, %struct.TYPE_16__* %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %242
  store i32 0, i32* %21, align 4
  br label %251

251:                                              ; preds = %268, %250
  %252 = load i32, i32* %21, align 4
  %253 = load i32, i32* %20, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %271

255:                                              ; preds = %251
  %256 = load i32*, i32** %13, align 8
  %257 = call i32 @READ_UINT64(i32* %256)
  store i32 %257, i32* %29, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %260 = load i32, i32* %29, align 4
  %261 = call i32 @RUDPProcessAck(%struct.TYPE_15__* %258, %struct.TYPE_16__* %259, i32 %260)
  %262 = load i32*, i32** %13, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 4
  store i32* %263, i32** %13, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = sub i64 %265, 4
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %15, align 4
  br label %268

268:                                              ; preds = %255
  %269 = load i32, i32* %21, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %21, align 4
  br label %251

271:                                              ; preds = %251
  %272 = load i32, i32* %26, align 4
  %273 = icmp sge i32 %272, 2
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %26, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %26, align 4
  br label %277

277:                                              ; preds = %274, %271
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %26, align 4
  %282 = call i8* @MAX(i32 %280, i32 %281)
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %27, align 4
  %290 = call i8* @MAX(i32 %288, i32 %289)
  %291 = ptrtoint i8* %290 to i32
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %296, %299
  br i1 %300, label %301, label %316

301:                                              ; preds = %277
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %309, %312
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 4
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %301, %277
  %317 = load i32*, i32** %13, align 8
  %318 = call i32 @READ_UINT64(i32* %317)
  store i32 %318, i32* %22, align 4
  %319 = load i32*, i32** %13, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 4
  store i32* %320, i32** %13, align 8
  %321 = load i32, i32* %15, align 4
  %322 = sext i32 %321 to i64
  %323 = sub i64 %322, 4
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %15, align 4
  %325 = load i32, i32* %22, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %316
  store i32 1, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

328:                                              ; preds = %316
  %329 = load i32, i32* %22, align 4
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %329, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %328
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %337 = call i32 @RUDPDisconnectSession(%struct.TYPE_15__* %335, %struct.TYPE_16__* %336, i32 1)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

338:                                              ; preds = %328
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 6
  store i32 %341, i32* %343, align 4
  %344 = load i32*, i32** %13, align 8
  store i32* %344, i32** %23, align 8
  %345 = load i32, i32* %15, align 4
  store i32 %345, i32* %24, align 4
  %346 = load i32, i32* %24, align 4
  %347 = icmp sge i32 %346, 1
  br i1 %347, label %348, label %359

348:                                              ; preds = %338
  %349 = load i32, i32* %24, align 4
  %350 = load i32, i32* @RUDP_MAX_SEGMENT_SIZE, align 4
  %351 = icmp sle i32 %349, %350
  br i1 %351, label %352, label %359

352:                                              ; preds = %348
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %355 = load i32, i32* %22, align 4
  %356 = load i32*, i32** %23, align 8
  %357 = load i32, i32* %24, align 4
  %358 = call i32 @RUDPProcessRecvPayload(%struct.TYPE_15__* %353, %struct.TYPE_16__* %354, i32 %355, i32* %356, i32 %357)
  br label %359

359:                                              ; preds = %352, %348, %338
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %378

364:                                              ; preds = %359
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 7
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @RUDP_SESSION_STATUS_CONNECT_SENT, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %364
  %371 = load i64, i64* @RUDP_SESSION_STATUS_ESTABLISHED, align 8
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 7
  store i64 %371, i64* %373, align 8
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %376 = call i32 @RUDPInitSock(%struct.TYPE_15__* %374, %struct.TYPE_16__* %375)
  br label %377

377:                                              ; preds = %370, %364
  br label %378

378:                                              ; preds = %377, %359
  store i32 1, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %379

379:                                              ; preds = %378, %334, %327, %241, %226, %219, %206, %201, %186, %173, %165, %160, %125, %113, %101, %63, %55
  %380 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %380)
  %381 = load i32, i32* %5, align 4
  ret i32 %381
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @Sha1(i32*, i32*, i32) #2

declare dso_local i32 @XorData(i32*, i32*, i32, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32* @NewCrypt(i32*, i32) #2

declare dso_local i32 @Encrypt(i32*, i32*, i32*, i32) #2

declare dso_local i32 @FreeCrypt(i32*) #2

declare dso_local i32 @READ_UINT64(i32*) #2

declare dso_local i32 @READ_UINT(i32*) #2

declare dso_local i32 @RUDPProcessAck2(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @RUDPProcessAck(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #2

declare dso_local i8* @MAX(i32, i32) #2

declare dso_local i32 @RUDPDisconnectSession(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @RUDPProcessRecvPayload(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32*, i32) #2

declare dso_local i32 @RUDPInitSock(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
