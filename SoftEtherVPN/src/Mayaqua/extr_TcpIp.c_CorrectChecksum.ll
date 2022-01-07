; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_CorrectChecksum.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_CorrectChecksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_17__, %struct.TYPE_20__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i64, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@L3_IPV4 = common dso_local global i64 0, align 8
@L4_TCP = common dso_local global i64 0, align 8
@IP_PROTO_TCP = common dso_local global i32 0, align 4
@L4_UDP = common dso_local global i64 0, align 8
@IP_PROTO_UDP = common dso_local global i32 0, align 4
@L3_IPV6 = common dso_local global i64 0, align 8
@IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CorrectChecksum(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = icmp eq %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %405

23:                                               ; preds = %1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @L3_IPV4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %214

29:                                               ; preds = %23
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %3, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %36, label %213

36:                                               ; preds = %29
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %44 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_22__* %43)
  %45 = mul nsw i32 %44, 4
  %46 = call i32 @IpChecksum(%struct.TYPE_22__* %42, i32 %45)
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @L4_TCP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %123

55:                                               ; preds = %49
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = call i64 @IPV4_GET_OFFSET(%struct.TYPE_22__* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %122

59:                                               ; preds = %55
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_22__* %60)
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %122

64:                                               ; preds = %59
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %4, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = icmp ne %struct.TYPE_18__* %69, null
  br i1 %70, label %71, label %121

71:                                               ; preds = %64
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IP_PROTO_TCP, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @CalcChecksumForIPv4(i32 %74, i32 %77, i32 %78, %struct.TYPE_18__* null, i64 0, i64 %81)
  %83 = ptrtoint i8* %82 to i64
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = xor i64 %84, -1
  store i64 %85, i64* %6, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %71
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %96, %90, %71
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IP_PROTO_TCP, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @CalcChecksumForIPv4(i32 %107, i32 %110, i32 %111, %struct.TYPE_18__* %112, i64 %115, i64 0)
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %102, %96
  br label %121

121:                                              ; preds = %120, %64
  br label %122

122:                                              ; preds = %121, %59, %55
  br label %123

123:                                              ; preds = %122, %49
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @L4_UDP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %212

129:                                              ; preds = %123
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %131 = call i64 @IPV4_GET_OFFSET(%struct.TYPE_22__* %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_22__* %134)
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %211

138:                                              ; preds = %133, %129
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  store %struct.TYPE_18__* %142, %struct.TYPE_18__** %7, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = icmp ne %struct.TYPE_18__* %143, null
  br i1 %144, label %145, label %210

145:                                              ; preds = %138
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %210

150:                                              ; preds = %145
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @Endian16(i32 %153)
  store i64 %154, i64* %8, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IP_PROTO_UDP, align 4
  %162 = load i64, i64* %8, align 8
  %163 = call i8* @CalcChecksumForIPv4(i32 %157, i32 %160, i32 %161, %struct.TYPE_18__* null, i64 0, i64 %162)
  %164 = ptrtoint i8* %163 to i64
  store i64 %164, i64* %9, align 8
  %165 = load i64, i64* %9, align 8
  %166 = xor i64 %165, -1
  store i64 %166, i64* %10, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %150
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %172, %150
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %182 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_22__* %181)
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %178
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %8, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %185
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IP_PROTO_UDP, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %200 = load i64, i64* %8, align 8
  %201 = call i8* @CalcChecksumForIPv4(i32 %194, i32 %197, i32 %198, %struct.TYPE_18__* %199, i64 %200, i64 0)
  %202 = ptrtoint i8* %201 to i64
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  br label %208

205:                                              ; preds = %185, %178
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  store i64 0, i64* %207, align 8
  br label %208

208:                                              ; preds = %205, %191
  br label %209

209:                                              ; preds = %208, %172
  br label %210

210:                                              ; preds = %209, %145, %138
  br label %211

211:                                              ; preds = %210, %133
  br label %212

212:                                              ; preds = %211, %123
  br label %213

213:                                              ; preds = %212, %29
  br label %405

214:                                              ; preds = %23
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @L3_IPV6, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %404

220:                                              ; preds = %214
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  store %struct.TYPE_21__* %224, %struct.TYPE_21__** %11, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 4
  store %struct.TYPE_20__* %226, %struct.TYPE_20__** %12, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %228 = icmp ne %struct.TYPE_21__* %227, null
  br i1 %228, label %229, label %403

229:                                              ; preds = %220
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @L4_TCP, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %309

235:                                              ; preds = %229
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %308

240:                                              ; preds = %235
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %253, label %245

245:                                              ; preds = %240
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @IPV6_GET_FLAGS(i32* %248)
  %250 = load i32, i32* @IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %307

253:                                              ; preds = %245, %240
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  store %struct.TYPE_18__* %257, %struct.TYPE_18__** %13, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %259 = icmp ne %struct.TYPE_18__* %258, null
  br i1 %259, label %260, label %306

260:                                              ; preds = %253
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i32, i32* @IP_PROTO_TCP, align 4
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = call i8* @CalcChecksumForIPv6(i32* %262, i32* %264, i32 %265, %struct.TYPE_18__* null, i64 0, i64 %268)
  %270 = ptrtoint i8* %269 to i64
  store i64 %270, i64* %14, align 8
  %271 = load i64, i64* %14, align 8
  %272 = xor i64 %271, -1
  store i64 %272, i64* %15, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %289, label %277

277:                                              ; preds = %260
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %14, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %289, label %283

283:                                              ; preds = %277
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %15, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %283, %277, %260
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  store i64 0, i64* %291, align 8
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load i32, i32* @IP_PROTO_TCP, align 4
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = call i8* @CalcChecksumForIPv6(i32* %293, i32* %295, i32 %296, %struct.TYPE_18__* %297, i64 %300, i64 0)
  %302 = ptrtoint i8* %301 to i64
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  store i64 %302, i64* %304, align 8
  br label %305

305:                                              ; preds = %289, %283
  br label %306

306:                                              ; preds = %305, %253
  br label %307

307:                                              ; preds = %306, %245
  br label %308

308:                                              ; preds = %307, %235
  br label %402

309:                                              ; preds = %229
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @L4_UDP, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %401

315:                                              ; preds = %309
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %400

320:                                              ; preds = %315
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %323, align 8
  store %struct.TYPE_18__* %324, %struct.TYPE_18__** %16, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %326 = icmp ne %struct.TYPE_18__* %325, null
  br i1 %326, label %327, label %399

327:                                              ; preds = %320
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %399

332:                                              ; preds = %327
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = call i64 @Endian16(i32 %335)
  store i64 %336, i64* %17, align 8
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = load i32, i32* @IP_PROTO_UDP, align 4
  %342 = load i64, i64* %17, align 8
  %343 = call i8* @CalcChecksumForIPv6(i32* %338, i32* %340, i32 %341, %struct.TYPE_18__* null, i64 0, i64 %342)
  %344 = ptrtoint i8* %343 to i64
  store i64 %344, i64* %18, align 8
  %345 = load i64, i64* %18, align 8
  %346 = xor i64 %345, -1
  store i64 %346, i64* %19, align 8
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %363, label %351

351:                                              ; preds = %332
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* %18, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %363, label %357

357:                                              ; preds = %351
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* %19, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %398

363:                                              ; preds = %357, %351, %332
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 0
  store i64 0, i64* %365, align 8
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = icmp eq i32* %368, null
  br i1 %369, label %378, label %370

370:                                              ; preds = %363
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = call i32 @IPV6_GET_FLAGS(i32* %373)
  %375 = load i32, i32* @IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS, align 4
  %376 = and i32 %374, %375
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %396

378:                                              ; preds = %370, %363
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* %17, align 8
  %383 = icmp sge i64 %381, %382
  br i1 %383, label %384, label %396

384:                                              ; preds = %378
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 0
  %389 = load i32, i32* @IP_PROTO_UDP, align 4
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %391 = load i64, i64* %17, align 8
  %392 = call i8* @CalcChecksumForIPv6(i32* %386, i32* %388, i32 %389, %struct.TYPE_18__* %390, i64 %391, i64 0)
  %393 = ptrtoint i8* %392 to i64
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 0
  store i64 %393, i64* %395, align 8
  br label %397

396:                                              ; preds = %378, %370
  br label %397

397:                                              ; preds = %396, %384
  br label %398

398:                                              ; preds = %397, %357
  br label %399

399:                                              ; preds = %398, %327, %320
  br label %400

400:                                              ; preds = %399, %315
  br label %401

401:                                              ; preds = %400, %309
  br label %402

402:                                              ; preds = %401, %308
  br label %403

403:                                              ; preds = %402, %220
  br label %404

404:                                              ; preds = %403, %214
  br label %405

405:                                              ; preds = %22, %404, %213
  ret void
}

declare dso_local i32 @IpChecksum(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_22__*) #1

declare dso_local i64 @IPV4_GET_OFFSET(%struct.TYPE_22__*) #1

declare dso_local i32 @IPV4_GET_FLAGS(%struct.TYPE_22__*) #1

declare dso_local i8* @CalcChecksumForIPv4(i32, i32, i32, %struct.TYPE_18__*, i64, i64) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local i32 @IPV6_GET_FLAGS(i32*) #1

declare dso_local i8* @CalcChecksumForIPv6(i32*, i32*, i32, %struct.TYPE_18__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
