; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_EthGetPacketLinuxIpRawForSock.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_EthGetPacketLinuxIpRawForSock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i32, i32, i64, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, %struct.TYPE_18__*, i32* }
%struct.TYPE_21__ = type { i64, i64, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }

@INFINITE = common dso_local global i32 0, align 4
@SOCK_LATER = common dso_local global i32 0, align 4
@L3_IPV4 = common dso_local global i64 0, align 8
@L4_TCP = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@L4_ICMPV4 = common dso_local global i64 0, align 8
@ICMP_TYPE_DESTINATION_UNREACHABLE = common dso_local global i64 0, align 8
@ICMP_TYPE_TIME_EXCEEDED = common dso_local global i64 0, align 8
@IP_PROTO_ICMPV4 = common dso_local global i64 0, align 8
@ICMP_TYPE_ECHO_REQUEST = common dso_local global i64 0, align 8
@L4_FRAGMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EthGetPacketLinuxIpRawForSock(%struct.TYPE_22__* %0, i8** %1, %struct.TYPE_19__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_21__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  %34 = load i32, i32* @INFINITE, align 4
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = icmp eq %struct.TYPE_22__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i8**, i8*** %7, align 8
  %39 = icmp eq i8** %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %4
  %41 = load i32, i32* @INFINITE, align 4
  store i32 %41, i32* %5, align 4
  br label %362

42:                                               ; preds = %37
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %355, %42
  %47 = load i8**, i8*** %7, align 8
  store i8* null, i8** %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @RecvFrom(%struct.TYPE_19__* %48, i32* %12, i32* %13, i32* %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SOCK_LATER, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %362

58:                                               ; preds = %46
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %362

67:                                               ; preds = %61
  %68 = load i32, i32* @INFINITE, align 4
  store i32 %68, i32* %5, align 4
  br label %362

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 14, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32* @Malloc(i32 %72)
  store i32* %73, i32** %15, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @Copy(i32* %77, i32* %80, i32 6)
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @Copy(i32* %83, i32* %86, i32 6)
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 12
  store i32 8, i32* %89, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 13
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 14
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @Copy(i32* %93, i32* %94, i32 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call %struct.TYPE_20__* @ParsePacket(i32* %97, i32 %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %16, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %101 = icmp ne %struct.TYPE_20__* %100, null
  br i1 %101, label %102, label %352

102:                                              ; preds = %69
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @L3_IPV4, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %349

108:                                              ; preds = %102
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  store %struct.TYPE_21__* %112, %struct.TYPE_21__** %18, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @UINTToIP(i32* %19, i8* %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 3
  %119 = call i32 @IsZeroIP(i32* %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 3
  %124 = call i64 @CmpIpAddr(i32* %123, i32* %19)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %121, %108
  %127 = call i64 @IsIPMyHost(i32* %19)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %348

129:                                              ; preds = %126
  %130 = call i32 @IsLocalHostIP(i32* %19)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %348

132:                                              ; preds = %129
  %133 = call i64 @IsHostIPAddress4(i32* %19)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %348

135:                                              ; preds = %132, %121
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = call i32 @IsZeroIP(i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 4
  %143 = call i64 @CmpIpAddr(i32* %142, i32* %19)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 4
  %148 = call i32 @Copy(i32* %147, i32* %19, i32 4)
  br label %149

149:                                              ; preds = %145, %140, %135
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  %152 = call i32 @IsZeroIP(i32* %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 3
  %159 = call i32 @Copy(i32* %156, i32* %158, i32 4)
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 5
  %163 = call i8* @IPToUINT(i32* %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 2
  store i8* null, i8** %167, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %170 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_21__* %169)
  %171 = mul nsw i32 %170, 5
  %172 = call i8* @IpChecksum(%struct.TYPE_21__* %168, i32 %171)
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @L4_TCP, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %160
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %20, align 8
  store i32 1, i32* %17, align 4
  br label %347

185:                                              ; preds = %160
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @L4_UDP, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %21, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  store i32 1, i32* %17, align 4
  br label %346

198:                                              ; preds = %185
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @L4_ICMPV4, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %337

204:                                              ; preds = %198
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  store %struct.TYPE_21__* %208, %struct.TYPE_21__** %22, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ICMP_TYPE_DESTINATION_UNREACHABLE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %204
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ICMP_TYPE_TIME_EXCEEDED, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %327

220:                                              ; preds = %214, %204
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %226 = bitcast %struct.TYPE_21__* %225 to i32*
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  %231 = ptrtoint i32* %226 to i64
  %232 = ptrtoint i32* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 4
  %235 = sub nsw i64 %224, %234
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %23, align 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %238 = bitcast %struct.TYPE_21__* %237 to i32*
  store i32* %238, i32** %24, align 8
  %239 = load i32*, i32** %24, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 40
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  %242 = bitcast i32* %241 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %25, align 8
  %243 = load i32, i32* %23, align 4
  %244 = sext i32 %243 to i64
  %245 = sub i64 %244, 44
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %26, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %248 = bitcast %struct.TYPE_21__* %247 to i32*
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @GetIpHeaderSize(i32* %248, i32 %249)
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %27, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp uge i64 %252, 40
  br i1 %253, label %254, label %326

254:                                              ; preds = %220
  %255 = load i32, i32* %26, align 4
  %256 = load i32, i32* %27, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %326

258:                                              ; preds = %254
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @IP_PROTO_ICMPV4, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %325

264:                                              ; preds = %258
  %265 = load i32, i32* %26, align 4
  %266 = load i32, i32* %27, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %28, align 4
  %268 = load i32, i32* %28, align 4
  %269 = sext i32 %268 to i64
  %270 = icmp uge i64 %269, 44
  br i1 %270, label %271, label %324

271:                                              ; preds = %264
  %272 = load i32*, i32** %24, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 40
  %274 = getelementptr inbounds i32, i32* %273, i64 4
  %275 = load i32, i32* %27, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = bitcast i32* %277 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %278, %struct.TYPE_21__** %29, align 8
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %323

284:                                              ; preds = %271
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %286 = bitcast %struct.TYPE_21__* %285 to i32*
  %287 = getelementptr inbounds i32, i32* %286, i64 40
  store i32* %287, i32** %30, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 2
  store i8* null, i8** %289, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 5
  %292 = call i8* @IPToUINT(i32* %291)
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 2
  store i8* null, i8** %296, align 8
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %298 = load i32, i32* %27, align 4
  %299 = call i8* @IpChecksum(%struct.TYPE_21__* %297, i32 %298)
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 2
  store i8* %299, i8** %301, align 8
  %302 = load i32*, i32** %24, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 40
  store i32* %303, i32** %33, align 8
  %304 = load i32, i32* %23, align 4
  %305 = sext i32 %304 to i64
  %306 = icmp uge i64 %305, 44
  br i1 %306, label %307, label %322

307:                                              ; preds = %284
  %308 = load i32*, i32** %24, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 40
  %310 = getelementptr inbounds i32, i32* %309, i64 4
  store i32* %310, i32** %31, align 8
  %311 = load i32, i32* %23, align 4
  %312 = sext i32 %311 to i64
  %313 = sub i64 %312, 44
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %32, align 4
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 2
  store i8* null, i8** %316, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %318 = load i32, i32* %23, align 4
  %319 = call i8* @IpChecksum(%struct.TYPE_21__* %317, i32 %318)
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  br label %322

322:                                              ; preds = %307, %284
  br label %323

323:                                              ; preds = %322, %271
  br label %324

324:                                              ; preds = %323, %264
  br label %325

325:                                              ; preds = %324, %258
  br label %326

326:                                              ; preds = %325, %254, %220
  br label %327

327:                                              ; preds = %326, %214
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 2
  store i8* null, i8** %329, align 8
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = call i8* @IpChecksum(%struct.TYPE_21__* %330, i32 %333)
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 2
  store i8* %334, i8** %336, align 8
  store i32 1, i32* %17, align 4
  br label %345

337:                                              ; preds = %198
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @L4_FRAGMENT, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %337
  store i32 1, i32* %17, align 4
  br label %344

344:                                              ; preds = %343, %337
  br label %345

345:                                              ; preds = %344, %327
  br label %346

346:                                              ; preds = %345, %191
  br label %347

347:                                              ; preds = %346, %180
  br label %348

348:                                              ; preds = %347, %132, %129, %126
  br label %349

349:                                              ; preds = %348, %102
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %351 = call i32 @FreePacket(%struct.TYPE_20__* %350)
  br label %352

352:                                              ; preds = %349, %69
  %353 = load i32, i32* %17, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = load i8**, i8*** %7, align 8
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @Free(i8* %357)
  %359 = load i8**, i8*** %7, align 8
  store i8* null, i8** %359, align 8
  br label %46

360:                                              ; preds = %352
  %361 = load i32, i32* %14, align 4
  store i32 %361, i32* %5, align 4
  br label %362

362:                                              ; preds = %360, %67, %66, %57, %40
  %363 = load i32, i32* %5, align 4
  ret i32 %363
}

declare dso_local i32 @RecvFrom(%struct.TYPE_19__*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_20__* @ParsePacket(i32*, i32) #1

declare dso_local i32 @UINTToIP(i32*, i8*) #1

declare dso_local i32 @IsZeroIP(i32*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i64 @IsIPMyHost(i32*) #1

declare dso_local i32 @IsLocalHostIP(i32*) #1

declare dso_local i64 @IsHostIPAddress4(i32*) #1

declare dso_local i8* @IPToUINT(i32*) #1

declare dso_local i8* @IpChecksum(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_21__*) #1

declare dso_local i32 @GetIpHeaderSize(i32*, i32) #1

declare dso_local i32 @FreePacket(%struct.TYPE_20__*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
