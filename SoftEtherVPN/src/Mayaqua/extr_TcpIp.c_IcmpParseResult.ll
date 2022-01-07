; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_IcmpParseResult.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_IcmpParseResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i64, i8*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@IP_PROTO_ICMPV4 = common dso_local global i64 0, align 8
@ICMP_TYPE_ECHO_RESPONSE = common dso_local global i64 0, align 8
@ICMP_TYPE_ECHO_REQUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @IcmpParseResult(i32* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @IsIP4(i32* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %30, %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %299

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %13, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @GetIpHeaderSize(i32* %43, i64 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp uge i64 %46, 24
  br i1 %47, label %48, label %297

48:                                               ; preds = %41
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %297

52:                                               ; preds = %48
  %53 = load i32*, i32** %10, align 8
  %54 = bitcast i32* %53 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %15, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %56 = call i32 @IPV4_GET_VERSION(%struct.TYPE_9__* %55)
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %296

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %296

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @Endian16(i64 %67)
  store i64 %68, i64* %16, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp uge i64 %69, 24
  br i1 %70, label %71, label %295

71:                                               ; preds = %64
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %295

75:                                               ; preds = %71
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %295

79:                                               ; preds = %75
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %14, align 8
  %82 = sub nsw i64 %80, %81
  store i64 %82, i64* %17, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = bitcast i32* %85 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %18, align 8
  %87 = load i64, i64* %17, align 8
  %88 = icmp uge i64 %87, 24
  br i1 %88, label %89, label %294

89:                                               ; preds = %79
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %19, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i64 @IpChecksum(%struct.TYPE_11__* %95, i64 %96)
  store i64 %97, i64* %20, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %19, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %293

101:                                              ; preds = %89
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ICMP_TYPE_ECHO_RESPONSE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %165

107:                                              ; preds = %101
  %108 = load i32*, i32** %10, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = getelementptr inbounds i32, i32* %110, i64 24
  %112 = bitcast i32* %111 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %21, align 8
  %113 = load i64, i64* %17, align 8
  %114 = icmp uge i64 %113, 40
  br i1 %114, label %115, label %164

115:                                              ; preds = %107
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @Endian16(i64 %118)
  %120 = load i64, i64* %8, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %115
  %123 = load i64, i64* %9, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @Endian16(i64 %128)
  %130 = load i64, i64* %9, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %125, %122
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @UINTToIP(i32* %22, i32 %135)
  %137 = call %struct.TYPE_10__* @ZeroMalloc(i32 48)
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %12, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  %145 = load i64, i64* %17, align 8
  %146 = sub i64 %145, 40
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  store i64 %146, i64* %148, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = getelementptr inbounds i32, i32* %151, i64 24
  %153 = getelementptr inbounds i32, i32* %152, i64 16
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @Clone(i32* %153, i64 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = call i32 @Copy(i32* %161, i32* %22, i32 4)
  br label %163

163:                                              ; preds = %132, %125, %115
  br label %164

164:                                              ; preds = %163, %107
  br label %292

165:                                              ; preds = %101
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %291

172:                                              ; preds = %165
  %173 = load i32*, i32** %10, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = getelementptr inbounds i32, i32* %176, i64 24
  %178 = bitcast i32* %177 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %23, align 8
  %179 = load i64, i64* %17, align 8
  %180 = icmp uge i64 %179, 52
  br i1 %180, label %181, label %290

181:                                              ; preds = %172
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %183 = bitcast %struct.TYPE_9__* %182 to i32*
  %184 = load i64, i64* %17, align 8
  %185 = sub nsw i64 %184, 4
  %186 = sub i64 %185, 24
  %187 = call i64 @GetIpHeaderSize(i32* %183, i64 %186)
  store i64 %187, i64* %24, align 8
  %188 = load i64, i64* %24, align 8
  %189 = icmp uge i64 %188, 24
  br i1 %189, label %190, label %289

190:                                              ; preds = %181
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %192 = call i32 @IPV4_GET_VERSION(%struct.TYPE_9__* %191)
  %193 = icmp eq i32 %192, 4
  br i1 %193, label %194, label %288

194:                                              ; preds = %190
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %288

200:                                              ; preds = %194
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %24, align 8
  %203 = add i64 28, %202
  %204 = add i64 %203, 24
  %205 = add i64 %204, 16
  %206 = icmp uge i64 %201, %205
  br i1 %206, label %207, label %287

207:                                              ; preds = %200
  %208 = load i32*, i32** %10, align 8
  %209 = load i64, i64* %14, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = getelementptr inbounds i32, i32* %210, i64 24
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i64, i64* %24, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = bitcast i32* %214 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %215, %struct.TYPE_11__** %25, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = load i64, i64* %14, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = getelementptr inbounds i32, i32* %218, i64 24
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  %221 = load i64, i64* %24, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = getelementptr inbounds i32, i32* %222, i64 24
  %224 = bitcast i32* %223 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %224, %struct.TYPE_12__** %26, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %286

230:                                              ; preds = %207
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %8, align 8
  %235 = call i64 @Endian16(i64 %234)
  %236 = icmp eq i64 %233, %235
  br i1 %236, label %237, label %286

237:                                              ; preds = %230
  %238 = load i64, i64* %9, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %237
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %9, align 8
  %245 = call i64 @Endian16(i64 %244)
  %246 = icmp eq i64 %243, %245
  br i1 %246, label %247, label %286

247:                                              ; preds = %240, %237
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @UINTToIP(i32* %27, i32 %250)
  %252 = call %struct.TYPE_10__* @ZeroMalloc(i32 48)
  store %struct.TYPE_10__* %252, %struct.TYPE_10__** %12, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 8
  %268 = load i64, i64* %17, align 8
  %269 = sub i64 %268, 40
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 3
  store i64 %269, i64* %271, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = load i64, i64* %14, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  %275 = getelementptr inbounds i32, i32* %274, i64 24
  %276 = getelementptr inbounds i32, i32* %275, i64 16
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = call i8* @Clone(i32* %276, i64 %279)
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 4
  store i8* %280, i8** %282, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 2
  %285 = call i32 @Copy(i32* %284, i32* %27, i32 4)
  br label %286

286:                                              ; preds = %247, %240, %230, %207
  br label %287

287:                                              ; preds = %286, %200
  br label %288

288:                                              ; preds = %287, %194, %190
  br label %289

289:                                              ; preds = %288, %181
  br label %290

290:                                              ; preds = %289, %172
  br label %291

291:                                              ; preds = %290, %171
  br label %292

292:                                              ; preds = %291, %164
  br label %293

293:                                              ; preds = %292, %89
  br label %294

294:                                              ; preds = %293, %79
  br label %295

295:                                              ; preds = %294, %75, %71, %64
  br label %296

296:                                              ; preds = %295, %58, %52
  br label %297

297:                                              ; preds = %296, %48, %41
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %298, %struct.TYPE_10__** %6, align 8
  br label %299

299:                                              ; preds = %297, %40
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %300
}

declare dso_local i32 @IsIP4(i32*) #1

declare dso_local i64 @GetIpHeaderSize(i32*, i64) #1

declare dso_local i32 @IPV4_GET_VERSION(%struct.TYPE_9__*) #1

declare dso_local i64 @Endian16(i64) #1

declare dso_local i64 @IpChecksum(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @UINTToIP(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i8* @Clone(i32*, i64) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
