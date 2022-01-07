; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPSendSegmentNow.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPSendSegmentNow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64*, i64*, i64, i64, i32, i32, i32, i32*, i32, i32 }

@RUDP_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@RUDP_MAX_SEGMENT_SIZE = common dso_local global i64 0, align 8
@RUDP_MAX_NUM_ACK = common dso_local global i32 0, align 4
@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8
@RUDP_PROTOCOL_ICMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPSendSegmentNow(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %29 = load i32, i32* @RUDP_MAX_PACKET_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32* null, i32** %15, align 8
  %33 = load i32, i32* @SHA1_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  %36 = load i32, i32* @SHA1_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i64, i64 %37, align 16
  store i64 %37, i64* %20, align 8
  %39 = load i32, i32* @SHA1_SIZE, align 4
  %40 = mul nsw i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = alloca i64, i64 %41, align 16
  store i64 %41, i64* %21, align 8
  store i64 0, i64* %25, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = icmp eq %struct.TYPE_7__* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %5
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = icmp eq %struct.TYPE_8__* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @RUDP_MAX_SEGMENT_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %51, %45, %5
  store i32 1, i32* %26, align 4
  br label %318

59:                                               ; preds = %54
  %60 = mul nuw i64 8, %30
  %61 = trunc i64 %60 to i32
  %62 = call i32 @Zero(i64* %32, i32 %61)
  store i64* %32, i64** %13, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* @SHA1_SIZE, align 4
  %68 = call i32 @Copy(i64* %63, i64* %66, i32 %67)
  %69 = load i32, i32* @SHA1_SIZE, align 4
  %70 = load i64*, i64** %13, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64* %72, i64** %13, align 8
  %73 = load i64*, i64** %13, align 8
  store i64* %73, i64** %14, align 8
  %74 = load i64*, i64** %14, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* @SHA1_SIZE, align 4
  %79 = call i32 @Copy(i64* %74, i64* %77, i32 %78)
  %80 = load i32, i32* @SHA1_SIZE, align 4
  %81 = load i64*, i64** %13, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64* %83, i64** %13, align 8
  store i64 0, i64* %16, align 8
  br label %84

84:                                               ; preds = %107, %59
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @LIST_NUM(i32* %88)
  %90 = load i32, i32* @RUDP_MAX_NUM_ACK, align 4
  %91 = call i64 @MIN(i64 %89, i32 %90)
  %92 = icmp slt i64 %85, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %84
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = call i32* @LIST_DATA(i32* %96, i64 %97)
  store i32* %98, i32** %27, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = call i32* @NewListFast(i32* null)
  store i32* %102, i32** %15, align 8
  br label %103

103:                                              ; preds = %101, %93
  %104 = load i32*, i32** %15, align 8
  %105 = load i32*, i32** %27, align 8
  %106 = call i32 @Add(i32* %104, i32* %105)
  br label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %16, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %16, align 8
  br label %84

110:                                              ; preds = %84
  %111 = load i64*, i64** %13, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @WRITE_UINT64(i64* %111, i32 %114)
  %116 = load i64*, i64** %13, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 4
  store i64* %117, i64** %13, align 8
  %118 = load i64*, i64** %13, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @WRITE_UINT64(i64* %118, i32 %121)
  %123 = load i64*, i64** %13, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 4
  store i64* %124, i64** %13, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @WRITE_UINT64(i64* %125, i32 %128)
  %130 = load i64*, i64** %13, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 4
  store i64* %131, i64** %13, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = call i64 @LIST_NUM(i32* %132)
  store i64 %133, i64* %24, align 8
  %134 = load i64*, i64** %13, align 8
  %135 = load i64, i64* %24, align 8
  %136 = call i32 @WRITE_UINT(i64* %134, i64 %135)
  %137 = load i64*, i64** %13, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 8
  store i64* %138, i64** %13, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %170

141:                                              ; preds = %110
  store i64 0, i64* %16, align 8
  br label %142

142:                                              ; preds = %164, %141
  %143 = load i64, i64* %16, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = call i64 @LIST_NUM(i32* %144)
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %142
  %148 = load i32*, i32** %15, align 8
  %149 = load i64, i64* %16, align 8
  %150 = call i32* @LIST_DATA(i32* %148, i64 %149)
  store i32* %150, i32** %28, align 8
  %151 = load i64*, i64** %13, align 8
  %152 = load i32*, i32** %28, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @WRITE_UINT64(i64* %151, i32 %153)
  %155 = load i64*, i64** %13, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 4
  store i64* %156, i64** %13, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 7
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %28, align 8
  %161 = call i32 @Delete(i32* %159, i32* %160)
  %162 = load i32*, i32** %28, align 8
  %163 = call i32 @Free(i32* %162)
  br label %164

164:                                              ; preds = %147
  %165 = load i64, i64* %16, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %16, align 8
  br label %142

167:                                              ; preds = %142
  %168 = load i32*, i32** %15, align 8
  %169 = call i32 @ReleaseList(i32* %168)
  br label %170

170:                                              ; preds = %167, %110
  %171 = load i64*, i64** %13, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @WRITE_UINT64(i64* %171, i32 %172)
  %174 = load i64*, i64** %13, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 4
  store i64* %175, i64** %13, align 8
  %176 = load i64*, i64** %13, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = bitcast i8* %177 to i64*
  %179 = load i64, i64* %10, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @Copy(i64* %176, i64* %178, i32 %180)
  %182 = load i64, i64* %10, align 8
  %183 = load i64*, i64** %13, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 %182
  store i64* %184, i64** %13, align 8
  %185 = call i64 (...) @Rand8()
  store i64 %185, i64* %17, align 8
  %186 = load i64, i64* %17, align 8
  %187 = call i64 @MAX(i64 %186, i32 1)
  store i64 %187, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %188

188:                                              ; preds = %197, %170
  %189 = load i64, i64* %16, align 8
  %190 = load i64, i64* %17, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i64, i64* %17, align 8
  %194 = load i64*, i64** %13, align 8
  store i64 %193, i64* %194, align 8
  %195 = load i64*, i64** %13, align 8
  %196 = getelementptr inbounds i64, i64* %195, i32 1
  store i64* %196, i64** %13, align 8
  br label %197

197:                                              ; preds = %192
  %198 = load i64, i64* %16, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %16, align 8
  br label %188

200:                                              ; preds = %188
  %201 = load i64*, i64** %13, align 8
  %202 = ptrtoint i64* %201 to i64
  %203 = ptrtoint i64* %32 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 8
  store i64 %205, i64* %18, align 8
  %206 = getelementptr inbounds i64, i64* %42, i64 0
  %207 = load i64*, i64** %14, align 8
  %208 = load i32, i32* @SHA1_SIZE, align 4
  %209 = call i32 @Copy(i64* %206, i64* %207, i32 %208)
  %210 = load i32, i32* @SHA1_SIZE, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %42, i64 %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* @SHA1_SIZE, align 4
  %217 = call i32 @Copy(i64* %212, i64* %215, i32 %216)
  %218 = mul nuw i64 8, %41
  %219 = call i32 @Sha1(i64* %38, i64* %42, i64 %218)
  %220 = mul nuw i64 8, %37
  %221 = trunc i64 %220 to i32
  %222 = call i32* @NewCrypt(i64* %38, i32 %221)
  store i32* %222, i32** %22, align 8
  %223 = load i32*, i32** %22, align 8
  %224 = load i32, i32* @SHA1_SIZE, align 4
  %225 = mul nsw i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %32, i64 %226
  %228 = load i32, i32* @SHA1_SIZE, align 4
  %229 = mul nsw i32 %228, 2
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %32, i64 %230
  %232 = load i64, i64* %18, align 8
  %233 = load i32, i32* @SHA1_SIZE, align 4
  %234 = mul nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %232, %235
  %237 = call i32 @Encrypt(i32* %223, i64* %227, i64* %231, i64 %236)
  %238 = load i32*, i32** %22, align 8
  %239 = call i32 @FreeCrypt(i32* %238)
  %240 = load i64, i64* %18, align 8
  %241 = call i32 @Sha1(i64* %35, i64* %32, i64 %240)
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %200
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %247, %200
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @SHA1_SIZE, align 4
  %258 = call i32 @XorData(i64* %35, i64* %35, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %247
  %260 = load i32, i32* @SHA1_SIZE, align 4
  %261 = call i32 @Copy(i64* %32, i64* %35, i32 %260)
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %25, align 8
  br label %282

271:                                              ; preds = %259
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %25, align 8
  br label %281

281:                                              ; preds = %277, %271
  br label %282

282:                                              ; preds = %281, %267
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 6
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load i64, i64* %18, align 8
  %290 = load i64, i64* %25, align 8
  %291 = call i32 @RUDPSendPacket(%struct.TYPE_7__* %283, i32* %285, i32 %288, i64* %32, i64 %289, i64 %290)
  %292 = load i64, i64* %10, align 8
  %293 = icmp sge i64 %292, 1
  br i1 %293, label %294, label %300

294:                                              ; preds = %282
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 4
  store i32 %297, i32* %299, align 8
  br label %300

300:                                              ; preds = %294, %282
  %301 = call i64 (...) @Rand32()
  %302 = load i64, i64* %18, align 8
  %303 = load i32, i32* @SHA1_SIZE, align 4
  %304 = sext i32 %303 to i64
  %305 = sub nsw i64 %302, %304
  %306 = srem i64 %301, %305
  store i64 %306, i64* %23, align 8
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = load i64*, i64** %308, align 8
  %310 = load i64, i64* %23, align 8
  %311 = getelementptr inbounds i64, i64* %32, i64 %310
  %312 = load i32, i32* @SHA1_SIZE, align 4
  %313 = call i32 @Copy(i64* %309, i64* %311, i32 %312)
  %314 = load i64, i64* %10, align 8
  %315 = icmp sge i64 %314, 1
  br i1 %315, label %316, label %317

316:                                              ; preds = %300
  br label %317

317:                                              ; preds = %316, %300
  store i32 0, i32* %26, align 4
  br label %318

318:                                              ; preds = %317, %58
  %319 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %319)
  %320 = load i32, i32* %26, align 4
  switch i32 %320, label %322 [
    i32 0, label %321
    i32 1, label %321
  ]

321:                                              ; preds = %318, %318
  ret void

322:                                              ; preds = %318
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i64*, i32) #2

declare dso_local i32 @Copy(i64*, i64*, i32) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i64 @LIST_NUM(i32*) #2

declare dso_local i32* @LIST_DATA(i32*, i64) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i32 @Add(i32*, i32*) #2

declare dso_local i32 @WRITE_UINT64(i64*, i32) #2

declare dso_local i32 @WRITE_UINT(i64*, i64) #2

declare dso_local i32 @Delete(i32*, i32*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @ReleaseList(i32*) #2

declare dso_local i64 @Rand8(...) #2

declare dso_local i64 @MAX(i64, i32) #2

declare dso_local i32 @Sha1(i64*, i64*, i64) #2

declare dso_local i32* @NewCrypt(i64*, i32) #2

declare dso_local i32 @Encrypt(i32*, i64*, i64*, i64) #2

declare dso_local i32 @FreeCrypt(i32*) #2

declare dso_local i32 @XorData(i64*, i64*, i32, i32) #2

declare dso_local i32 @RUDPSendPacket(%struct.TYPE_7__*, i32*, i32, i64*, i64, i64) #2

declare dso_local i64 @Rand32(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
