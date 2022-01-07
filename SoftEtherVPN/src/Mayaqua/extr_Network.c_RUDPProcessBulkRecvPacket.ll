; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessBulkRecvPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessBulkRecvPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@RUDP_BULK_SEQ_NO_RANGE = common dso_local global i64 0, align 8
@RUDP_BULK_MAX_RECV_PKTS_IN_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RUDPProcessBulkRecvPacket(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
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
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @SHA1_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load i32, i32* @SHA1_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = load i32, i32* @SHA1_SIZE, align 4
  %34 = mul nsw i32 %33, 2
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = load i32, i32* @SHA1_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = icmp eq %struct.TYPE_11__* %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = icmp eq %struct.TYPE_12__* %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %48, %45, %42, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @SHA1_SIZE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

65:                                               ; preds = %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %65
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* @SHA1_SIZE, align 4
  %73 = call i32 @Copy(i32* %29, i32* %71, i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @SHA1_SIZE, align 4
  %81 = call i32 @Copy(i32* %74, i32* %79, i32 %80)
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @Sha1(i32* %32, i32* %82, i32 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* @SHA1_SIZE, align 4
  %87 = call i32 @Copy(i32* %85, i32* %29, i32 %86)
  %88 = load i32, i32* @SHA1_SIZE, align 4
  %89 = call i64 @Cmp(i32* %29, i32* %32, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %70
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @SHA1_SIZE, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* @SHA1_SIZE, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @SHA1_SIZE, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @HMacSha1(i32* %32, i32* %96, i32 %97, i32* %101, i32 %104)
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* @SHA1_SIZE, align 4
  %108 = call i64 @Cmp(i32* %106, i32* %32, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

111:                                              ; preds = %91
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111
  br label %116

115:                                              ; preds = %70
  br label %116

116:                                              ; preds = %115, %114
  br label %138

117:                                              ; preds = %65
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @SHA1_SIZE, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* @SHA1_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @SHA1_SIZE, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @HMacSha1(i32* %32, i32* %122, i32 %123, i32* %127, i32 %130)
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* @SHA1_SIZE, align 4
  %134 = call i64 @Cmp(i32* %132, i32* %32, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %116
  %139 = load i32, i32* @SHA1_SIZE, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %13, align 8
  %143 = load i32, i32* @SHA1_SIZE, align 4
  %144 = load i32, i32* %15, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @SHA1_SIZE, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

150:                                              ; preds = %138
  %151 = load i32*, i32** %13, align 8
  store i32* %151, i32** %14, align 8
  %152 = load i32, i32* @SHA1_SIZE, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %13, align 8
  %156 = load i32, i32* @SHA1_SIZE, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

162:                                              ; preds = %150
  %163 = getelementptr inbounds i32, i32* %36, i64 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @SHA1_SIZE, align 4
  %170 = call i32 @Copy(i32* %163, i32* %168, i32 %169)
  %171 = load i32, i32* @SHA1_SIZE, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %36, i64 %172
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* @SHA1_SIZE, align 4
  %176 = call i32 @Copy(i32* %173, i32* %174, i32 %175)
  %177 = mul nuw i64 4, %35
  %178 = trunc i64 %177 to i32
  %179 = call i32 @Sha1(i32* %39, i32* %36, i32 %178)
  %180 = mul nuw i64 4, %38
  %181 = trunc i64 %180 to i32
  %182 = call i32* @NewCrypt(i32* %39, i32 %181)
  store i32* %182, i32** %18, align 8
  %183 = load i32*, i32** %18, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @Encrypt(i32* %183, i32* %184, i32* %185, i32 %186)
  %188 = load i32*, i32** %18, align 8
  %189 = call i32 @FreeCrypt(i32* %188)
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %19, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

199:                                              ; preds = %162
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %19, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

204:                                              ; preds = %199
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %15, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %15, align 4
  %208 = load i32*, i32** %13, align 8
  %209 = call i32 @READ_UINT64(i32* %208)
  store i32 %209, i32* %20, align 4
  %210 = load i32*, i32** %13, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  store i32* %211, i32** %13, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = sub i64 %213, 4
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %20, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %204
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = icmp uge i64 %220, -1152921504606846976
  br i1 %221, label %222, label %223

222:                                              ; preds = %218, %204
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

223:                                              ; preds = %218
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* @RUDP_BULK_SEQ_NO_RANGE, align 8
  %227 = add nsw i64 %225, %226
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp slt i64 %227, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

233:                                              ; preds = %223
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  %239 = load i32*, i32** %13, align 8
  store i32* %239, i32** %21, align 8
  %240 = load i32, i32* %15, align 4
  store i32 %240, i32* %22, align 4
  %241 = load i32, i32* %20, align 4
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = call i64 @MAX(i32 %241, i64 %244)
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 3
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %250 = call i32 @RUDPInitSock(%struct.TYPE_11__* %248, %struct.TYPE_12__* %249)
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = icmp ne %struct.TYPE_10__* %253, null
  br i1 %254, label %255, label %273

255:                                              ; preds = %233
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  store %struct.TYPE_10__* %258, %struct.TYPE_10__** %24, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  store i32* %261, i32** %25, align 8
  %262 = load i32*, i32** %25, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %272

264:                                              ; preds = %255
  %265 = load i32*, i32** %25, align 8
  %266 = load i32*, i32** %21, align 8
  %267 = load i32, i32* %22, align 4
  %268 = load i32, i32* @RUDP_BULK_MAX_RECV_PKTS_IN_QUEUE, align 4
  %269 = call i32 @TubeSendEx2(i32* %265, i32* %266, i32 %267, i32* null, i32 1, i32 %268)
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %264, %255
  br label %273

273:                                              ; preds = %272, %233
  store i32 1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %274

274:                                              ; preds = %273, %232, %222, %203, %198, %161, %149, %136, %110, %64, %56
  %275 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %275)
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @Sha1(i32*, i32*, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32 @HMacSha1(i32*, i32*, i32, i32*, i32) #2

declare dso_local i32* @NewCrypt(i32*, i32) #2

declare dso_local i32 @Encrypt(i32*, i32*, i32*, i32) #2

declare dso_local i32 @FreeCrypt(i32*) #2

declare dso_local i32 @READ_UINT64(i32*) #2

declare dso_local i64 @MAX(i32, i64) #2

declare dso_local i32 @RUDPInitSock(%struct.TYPE_11__*, %struct.TYPE_12__*) #2

declare dso_local i32 @TubeSendEx2(i32*, i32*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
