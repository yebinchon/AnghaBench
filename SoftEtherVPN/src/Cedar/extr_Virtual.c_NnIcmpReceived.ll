; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIcmpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIcmpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i8*, i32 }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, i8*, i32, i32 }

@ICMP_TYPE_ECHO_RESPONSE = common dso_local global i64 0, align 8
@NAT_ICMP = common dso_local global i32 0, align 4
@IP_PROTO_ICMPV4 = common dso_local global i64 0, align 8
@ICMP_TYPE_ECHO_REQUEST = common dso_local global i64 0, align 8
@ICMP_TYPE_DESTINATION_UNREACHABLE = common dso_local global i64 0, align 8
@ICMP_TYPE_TIME_EXCEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnIcmpReceived(%struct.TYPE_18__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_17__, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_19__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_19__*, align 8
  %32 = alloca %struct.TYPE_20__*, align 8
  %33 = alloca %struct.TYPE_17__, align 8
  %34 = alloca %struct.TYPE_17__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = icmp eq %struct.TYPE_18__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i8*, i8** %11, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %7
  br label %381

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 40
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %381

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %15, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ICMP_TYPE_ECHO_RESPONSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %136

61:                                               ; preds = %53
  %62 = load i8*, i8** %11, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr inbounds i32, i32* %63, i64 40
  %65 = bitcast i32* %64 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %18, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 56
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %381

70:                                               ; preds = %61
  %71 = load i8*, i8** %11, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 40
  %74 = getelementptr inbounds i32, i32* %73, i64 16
  store i32* %74, i32** %16, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, 56
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* @NAT_ICMP, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @Endian16(i8* %83)
  %85 = call i32 @NnSetNat(%struct.TYPE_17__* %19, i32 %79, i32 0, i32 0, i32 0, i32 0, i32 %80, i8* %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.TYPE_17__* @SearchHash(i32 %88, %struct.TYPE_17__* %19)
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %20, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %91 = icmp ne %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %135

92:                                               ; preds = %70
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  store i8* null, i8** %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @Endian16(i8* %97)
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i8* @IpChecksum(%struct.TYPE_19__* %101, i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 1
  %133 = call i32 @MAX(i32 %132, i32 1)
  %134 = call i32 @SendIpEx(%struct.TYPE_21__* %123, i32 %126, i32 %127, i64 %128, %struct.TYPE_19__* %129, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %92, %70
  br label %381

136:                                              ; preds = %53
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %217

142:                                              ; preds = %136
  %143 = load i8*, i8** %11, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = getelementptr inbounds i32, i32* %144, i64 40
  %146 = bitcast i32* %145 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %146, %struct.TYPE_20__** %23, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp ult i64 %148, 56
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %381

151:                                              ; preds = %142
  %152 = load i8*, i8** %11, align 8
  %153 = bitcast i8* %152 to i32*
  %154 = getelementptr inbounds i32, i32* %153, i64 40
  %155 = getelementptr inbounds i32, i32* %154, i64 16
  store i32* %155, i32** %21, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 %157, 56
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %22, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %216

165:                                              ; preds = %151
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 56, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %26, align 4
  %170 = load i32, i32* %26, align 4
  %171 = call %struct.TYPE_19__* @ZeroMalloc(i32 %170)
  store %struct.TYPE_19__* %171, %struct.TYPE_19__** %24, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %173 = bitcast %struct.TYPE_19__* %172 to i32*
  %174 = getelementptr inbounds i32, i32* %173, i64 40
  %175 = bitcast i32* %174 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %25, align 8
  %176 = load i64, i64* @ICMP_TYPE_ECHO_RESPONSE, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %195 = bitcast %struct.TYPE_19__* %194 to i32*
  %196 = getelementptr inbounds i32, i32* %195, i64 40
  %197 = getelementptr inbounds i32, i32* %196, i64 16
  %198 = load i32*, i32** %21, align 8
  %199 = load i32, i32* %22, align 4
  %200 = call i32 @Copy(i32* %197, i32* %198, i32 %199)
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %202 = load i32, i32* %26, align 4
  %203 = call i8* @IpChecksum(%struct.TYPE_19__* %201, i32 %202)
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %207 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @NnIpSendForInternet(%struct.TYPE_18__* %206, i64 %207, i32 0, i32 %208, i32 %209, %struct.TYPE_19__* %210, i32 %211, i32 %212)
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %215 = call i32 @Free(%struct.TYPE_19__* %214)
  br label %216

216:                                              ; preds = %165, %151
  br label %380

217:                                              ; preds = %136
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @ICMP_TYPE_DESTINATION_UNREACHABLE, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %217
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @ICMP_TYPE_TIME_EXCEEDED, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %379

229:                                              ; preds = %223, %217
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp uge i64 %231, 96
  br i1 %232, label %233, label %378

233:                                              ; preds = %229
  %234 = load i8*, i8** %11, align 8
  %235 = bitcast i8* %234 to i32*
  %236 = getelementptr inbounds i32, i32* %235, i64 40
  %237 = getelementptr inbounds i32, i32* %236, i64 16
  %238 = bitcast i32* %237 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %238, %struct.TYPE_19__** %27, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = sub i64 %240, 56
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %28, align 4
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %244 = bitcast %struct.TYPE_19__* %243 to i32*
  %245 = load i32, i32* %28, align 4
  %246 = call i32 @GetIpHeaderSize(i32* %244, i32 %245)
  store i32 %246, i32* %29, align 4
  %247 = load i32, i32* %29, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp uge i64 %248, 40
  br i1 %249, label %250, label %377

250:                                              ; preds = %233
  %251 = load i32, i32* %28, align 4
  %252 = load i32, i32* %29, align 4
  %253 = icmp sge i32 %251, %252
  br i1 %253, label %254, label %377

254:                                              ; preds = %250
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %376

260:                                              ; preds = %254
  %261 = load i32, i32* %28, align 4
  %262 = load i32, i32* %29, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* %30, align 4
  %264 = load i32, i32* %30, align 4
  %265 = sext i32 %264 to i64
  %266 = icmp uge i64 %265, 56
  br i1 %266, label %267, label %375

267:                                              ; preds = %260
  %268 = load i8*, i8** %11, align 8
  %269 = bitcast i8* %268 to i32*
  %270 = getelementptr inbounds i32, i32* %269, i64 40
  %271 = getelementptr inbounds i32, i32* %270, i64 16
  %272 = load i32, i32* %29, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = bitcast i32* %274 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %275, %struct.TYPE_19__** %31, align 8
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %374

281:                                              ; preds = %267
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %283 = bitcast %struct.TYPE_19__* %282 to i32*
  %284 = getelementptr inbounds i32, i32* %283, i64 40
  %285 = bitcast i32* %284 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %285, %struct.TYPE_20__** %32, align 8
  %286 = load i32, i32* @NAT_ICMP, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = call i8* @Endian16(i8* %292)
  %294 = call i32 @NnSetNat(%struct.TYPE_17__* %33, i32 %286, i32 0, i32 0, i32 0, i32 0, i32 %289, i8* %293)
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = call %struct.TYPE_17__* @SearchHash(i32 %297, %struct.TYPE_17__* %33)
  store %struct.TYPE_17__* %298, %struct.TYPE_17__** %34, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %300 = icmp ne %struct.TYPE_17__* %299, null
  br i1 %300, label %301, label %373

301:                                              ; preds = %281
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i8* @Endian16(i8* %311)
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 3
  store i8* null, i8** %316, align 8
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 2
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 3
  store i8* null, i8** %323, align 8
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %325 = load i32, i32* %29, align 4
  %326 = call i8* @IpChecksum(%struct.TYPE_19__* %324, i32 %325)
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  %329 = load i8*, i8** %11, align 8
  %330 = bitcast i8* %329 to i32*
  %331 = getelementptr inbounds i32, i32* %330, i64 40
  %332 = bitcast i32* %331 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %332, %struct.TYPE_20__** %37, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = icmp ult i64 %334, 56
  br i1 %335, label %336, label %337

336:                                              ; preds = %301
  br label %381

337:                                              ; preds = %301
  %338 = load i8*, i8** %11, align 8
  %339 = bitcast i8* %338 to i32*
  %340 = getelementptr inbounds i32, i32* %339, i64 40
  %341 = getelementptr inbounds i32, i32* %340, i64 16
  store i32* %341, i32** %35, align 8
  %342 = load i32, i32* %12, align 4
  %343 = sext i32 %342 to i64
  %344 = sub i64 %343, 56
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %36, align 4
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 3
  store i8* null, i8** %347, align 8
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i8* @Endian16(i8* %350)
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 0
  store i8* %351, i8** %353, align 8
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %355 = load i32, i32* %12, align 4
  %356 = call i8* @IpChecksum(%struct.TYPE_19__* %354, i32 %355)
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 3
  store i8* %356, i8** %358, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %360, align 8
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %9, align 4
  %366 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %368 = load i32, i32* %12, align 4
  %369 = load i32, i32* %13, align 4
  %370 = sub nsw i32 %369, 1
  %371 = call i32 @MAX(i32 %370, i32 1)
  %372 = call i32 @SendIpEx(%struct.TYPE_21__* %361, i32 %364, i32 %365, i64 %366, %struct.TYPE_19__* %367, i32 %368, i32 %371)
  br label %373

373:                                              ; preds = %337, %281
  br label %374

374:                                              ; preds = %373, %267
  br label %375

375:                                              ; preds = %374, %260
  br label %376

376:                                              ; preds = %375, %254
  br label %377

377:                                              ; preds = %376, %250, %233
  br label %378

378:                                              ; preds = %377, %229
  br label %379

379:                                              ; preds = %378, %223
  br label %380

380:                                              ; preds = %379, %216
  br label %381

381:                                              ; preds = %43, %52, %69, %150, %336, %380, %135
  ret void
}

declare dso_local i32 @NnSetNat(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @Endian16(i8*) #1

declare dso_local %struct.TYPE_17__* @SearchHash(i32, %struct.TYPE_17__*) #1

declare dso_local i8* @IpChecksum(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SendIpEx(%struct.TYPE_21__*, i32, i32, i64, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local %struct.TYPE_19__* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @NnIpSendForInternet(%struct.TYPE_18__*, i64, i32, i32, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_19__*) #1

declare dso_local i32 @GetIpHeaderSize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
