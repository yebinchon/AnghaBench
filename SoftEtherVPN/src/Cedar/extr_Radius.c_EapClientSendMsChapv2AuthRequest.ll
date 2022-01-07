; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_EapClientSendMsChapv2AuthRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_EapClientSendMsChapv2AuthRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_22__*, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i64*, i8*, i64 }
%struct.TYPE_20__ = type { i64 }

@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i8* null, align 8
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_EAP_MESSAGE = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i64 0, align 8
@EAP_TYPE_MS_AUTH = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_STATE = common dso_local global i32 0, align 4
@EAP_TYPE_LEGACY_NAK = common dso_local global i64 0, align 8
@EAP_MSCHAPV2_OP_CHALLENGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EapClientSendMsChapv2AuthRequest(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = icmp eq %struct.TYPE_23__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %235

17:                                               ; preds = %1
  %18 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = call %struct.TYPE_19__* @NewRadiusPacket(i32 %18, i32 %21)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %5, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = call i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_19__* %24, %struct.TYPE_23__* %25)
  %27 = call %struct.TYPE_22__* @ZeroMalloc(i32 40)
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %9, align 8
  %28 = load i8*, i8** @EAP_CODE_RESPONSE, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = call i32 @StrLen(%struct.TYPE_21__* %41)
  %43 = add nsw i32 %42, 5
  %44 = call i8* @Endian16(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = call i32 @StrLen(%struct.TYPE_21__* %58)
  %60 = call i32 @Copy(i64* %52, %struct.TYPE_21__* %55, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = call i32 @StrLen(%struct.TYPE_21__* %68)
  %70 = add nsw i32 %69, 5
  %71 = call i32 @NewRadiusAvp(i32 %64, i32 0, i32 0, %struct.TYPE_22__* %65, i32 %70)
  %72 = call i32 @Add(i32 %63, i32 %71)
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = call %struct.TYPE_19__* @EapSendPacketAndRecvResponse(%struct.TYPE_23__* %73, %struct.TYPE_19__* %74)
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %6, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = icmp ne %struct.TYPE_19__* %76, null
  br i1 %77, label %78, label %221

78:                                               ; preds = %17
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %220

83:                                               ; preds = %78
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = icmp ne %struct.TYPE_22__* %86, null
  br i1 %87, label %88, label %220

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  store %struct.TYPE_22__* %91, %struct.TYPE_22__** %11, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @EAP_CODE_REQUEST, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %219

97:                                               ; preds = %88
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %195

103:                                              ; preds = %97
  %104 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = call %struct.TYPE_19__* @NewRadiusPacket(i32 %104, i32 %107)
  store %struct.TYPE_19__* %109, %struct.TYPE_19__** %7, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %112 = call i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_19__* %110, %struct.TYPE_23__* %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %103
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RADIUS_ATTRIBUTE_STATE, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @NewRadiusAvp(i32 %121, i32 0, i32 0, %struct.TYPE_22__* %124, i32 %128)
  %130 = call i32 @Add(i32 %120, i32 %129)
  br label %131

131:                                              ; preds = %117, %103
  %132 = call %struct.TYPE_22__* @ZeroMalloc(i32 40)
  store %struct.TYPE_22__* %132, %struct.TYPE_22__** %10, align 8
  %133 = load i8*, i8** @EAP_CODE_RESPONSE, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = sext i32 %139 to i64
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = call i8* @Endian16(i32 6)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load i64, i64* @EAP_TYPE_LEGACY_NAK, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  store i64 %150, i64* %154, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 4
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %160 = call i32 @NewRadiusAvp(i32 %158, i32 0, i32 0, %struct.TYPE_22__* %159, i32 6)
  %161 = call i32 @Add(i32 %157, i32 %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = call %struct.TYPE_19__* @EapSendPacketAndRecvResponse(%struct.TYPE_23__* %162, %struct.TYPE_19__* %163)
  store %struct.TYPE_19__* %164, %struct.TYPE_19__** %8, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %166 = icmp ne %struct.TYPE_19__* %165, null
  br i1 %166, label %167, label %194

167:                                              ; preds = %131
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %167
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = icmp ne %struct.TYPE_22__* %175, null
  br i1 %176, label %177, label %194

177:                                              ; preds = %172
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  store %struct.TYPE_22__* %180, %struct.TYPE_22__** %11, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @EAP_CODE_REQUEST, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %177
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %196

193:                                              ; preds = %186, %177
  br label %194

194:                                              ; preds = %193, %172, %167, %131
  br label %218

195:                                              ; preds = %97
  br label %196

196:                                              ; preds = %195, %192
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %198 = bitcast %struct.TYPE_22__* %197 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %198, %struct.TYPE_20__** %12, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @EAP_MSCHAPV2_OP_CHALLENGE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %196
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %206 = bitcast %struct.TYPE_22__* %205 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %206, %struct.TYPE_21__** %13, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 16
  br i1 %210, label %211, label %216

211:                                              ; preds = %204
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %215 = call i32 @Copy(i64* %213, %struct.TYPE_21__* %214, i32 4)
  store i32 1, i32* %4, align 4
  br label %216

216:                                              ; preds = %211, %204
  br label %217

217:                                              ; preds = %216, %196
  br label %218

218:                                              ; preds = %217, %194
  br label %219

219:                                              ; preds = %218, %88
  br label %220

220:                                              ; preds = %219, %83, %78
  br label %221

221:                                              ; preds = %220, %17
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %223 = call i32 @FreeRadiusPacket(%struct.TYPE_19__* %222)
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %225 = call i32 @FreeRadiusPacket(%struct.TYPE_19__* %224)
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %227 = call i32 @FreeRadiusPacket(%struct.TYPE_19__* %226)
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %229 = call i32 @FreeRadiusPacket(%struct.TYPE_19__* %228)
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %231 = call i32 @Free(%struct.TYPE_22__* %230)
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %233 = call i32 @Free(%struct.TYPE_22__* %232)
  %234 = load i32, i32* %4, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %221, %16
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.TYPE_19__* @NewRadiusPacket(i32, i32) #1

declare dso_local i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_19__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ZeroMalloc(i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @StrLen(%struct.TYPE_21__*) #1

declare dso_local i32 @Copy(i64*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @Add(i32, i32) #1

declare dso_local i32 @NewRadiusAvp(i32, i32, i32, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_19__* @EapSendPacketAndRecvResponse(%struct.TYPE_23__*, %struct.TYPE_19__*) #1

declare dso_local i32 @FreeRadiusPacket(%struct.TYPE_19__*) #1

declare dso_local i32 @Free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
