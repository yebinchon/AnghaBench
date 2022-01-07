; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_cfx_unwrap_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_cfx_unwrap_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_27__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i64*, i64, i32, i32*, i32*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__* }

@GSS_C_QOP_REVERSE = common dso_local global i64 0, align 8
@wrap_cfx_token = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Token id does not match\0A\00", align 1
@CFXSentByAcceptor = common dso_local global i32 0, align 4
@CFXAcceptorSubkey = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Bad flags %x\0A\00", align 1
@GSS_C_QOP_DEFAULT = common dso_local global i64 0, align 8
@CFXSealed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"krb5_cfx_crypt_mbuf %d\0A\00", align 1
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Encrypted token mismach\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_cfx_unwrap_mbuf(i32* %0, %struct.TYPE_25__* %1, i32* %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_23__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_26__, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %15, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load i64*, i64** %13, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GSS_C_QOP_REVERSE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %22, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %6
  %44 = load i32, i32* %22, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  br label %53

48:                                               ; preds = %6
  %49 = load i32, i32* %22, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %47, %43 ], [ %52, %48 ]
  store i32 %54, i32* %23, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mbuf_copydata(i32 %56, i64 0, i32 48, %struct.TYPE_23__* %14)
  store i32 %57, i32* %17, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gss_strip_mbuf(i32 %59, i32 48)
  %61 = load i64, i64* %11, align 8
  %62 = sub i64 %61, 48
  store i64 %62, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @wrap_cfx_token, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %85, label %71

71:                                               ; preds = %53
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @wrap_cfx_token, i32 0, i32 0), align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @wrap_cfx_token, i32 0, i32 1), align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %71, %53
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %288

87:                                               ; preds = %80
  %88 = load i32, i32* %23, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CFXSentByAcceptor, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90, %87
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CFXAcceptorSubkey, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104, %90
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %288

114:                                              ; preds = %104, %96
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @memcpy(i32* %21, i32 %116, i32 4)
  %118 = load i32, i32* %21, align 4
  %119 = call i32 @ntohll(i32 %118)
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %127, %131
  store i32 %132, i32* %19, align 4
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %137, %141
  store i32 %142, i32* %20, align 4
  %143 = load i64, i64* @GSS_C_QOP_DEFAULT, align 8
  %144 = load i64*, i64** %13, align 8
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CFXSealed, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @CFXSealed, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %18, align 4
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %114
  %155 = load i32, i32* %18, align 4
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %114
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %217

160:                                              ; preds = %157
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @gss_krb5_cfx_unwrap_rrc_mbuf(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %160
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %22, align 4
  %172 = call i32 @krb5_cfx_crypt_mbuf(%struct.TYPE_27__* %169, i32* %170, i64* %11, i32 0, i32 %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* %17, align 4
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %17, align 4
  %179 = load i32*, i32** %8, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %180, i32* %7, align 4
  br label %292

181:                                              ; preds = %168
  %182 = load i64, i64* %11, align 8
  %183 = icmp uge i64 %182, 48
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i64, i64* %11, align 8
  %186 = sub i64 %185, 48
  store i64 %186, i64* %11, align 8
  br label %188

187:                                              ; preds = %181
  br label %288

188:                                              ; preds = %184
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @mbuf_copydata(i32 %190, i64 %191, i32 48, %struct.TYPE_23__* %24)
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 0, i32* %195, align 4
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 0, i32* %198, align 4
  %199 = call i64 @memcmp(%struct.TYPE_23__* %14, %struct.TYPE_23__* %24, i32 48)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %188
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %288

203:                                              ; preds = %188
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 48, %207
  %209 = sub i64 0, %208
  %210 = trunc i64 %209 to i32
  %211 = call i32 @gss_strip_mbuf(i32 %205, i32 %210)
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = add i64 48, %213
  %215 = load i64, i64* %11, align 8
  %216 = sub i64 %215, %214
  store i64 %216, i64* %11, align 8
  br label %286

217:                                              ; preds = %157
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  %222 = call i8* @llvm.stacksave()
  store i8* %222, i8** %25, align 8
  %223 = alloca %struct.TYPE_23__, i64 %221, align 16
  store i64 %221, i64* %26, align 8
  %224 = load i32, i32* %19, align 4
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %224, %227
  br i1 %228, label %236, label %229

229:                                              ; preds = %217
  %230 = load i64, i64* %11, align 8
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp uge i64 %230, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %229, %217
  store i32 2, i32* %29, align 4
  br label %282

237:                                              ; preds = %229
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %11, align 8
  %243 = sub i64 %242, %241
  store i64 %243, i64* %11, align 8
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %244, align 4
  %246 = load i64, i64* %11, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @mbuf_copydata(i32 %245, i64 %246, i32 %249, %struct.TYPE_23__* %223)
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 0, %255
  %257 = call i32 @gss_strip_mbuf(i32 %252, i32 %256)
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  store i32 0, i32* %260, align 4
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 0, i32* %266, align 4
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  store i32 0, i32* %269, align 4
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %270, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  store i32 48, i32* %271, align 8
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %273 = load i32*, i32** %10, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i64, i64* %11, align 8
  %276 = load i32, i32* %22, align 4
  %277 = call i32 @krb5_mic_mbuf(%struct.TYPE_27__* %272, i32* null, i32 %274, i32 0, i64 %275, %struct.TYPE_26__* %28, %struct.TYPE_23__* %223, i32* %27, i32 1, i32 %276)
  store i32 %277, i32* %17, align 4
  %278 = load i32, i32* %17, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %237
  store i32 2, i32* %29, align 4
  br label %282

281:                                              ; preds = %237
  store i32 0, i32* %29, align 4
  br label %282

282:                                              ; preds = %280, %236, %281
  %283 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %283)
  %284 = load i32, i32* %29, align 4
  switch i32 %284, label %294 [
    i32 0, label %285
    i32 2, label %288
  ]

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %285, %203
  %287 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %287, i32* %7, align 4
  br label %292

288:                                              ; preds = %282, %201, %187, %110, %85
  %289 = load i32, i32* @EBADRPC, align 4
  %290 = load i32*, i32** %8, align 8
  store i32 %289, i32* %290, align 4
  %291 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %288, %286, %175
  %293 = load i32, i32* %7, align 4
  ret i32 %293

294:                                              ; preds = %282
  unreachable
}

declare dso_local i32 @mbuf_copydata(i32, i64, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @gss_strip_mbuf(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ntohll(i32) #1

declare dso_local i32 @gss_krb5_cfx_unwrap_rrc_mbuf(i32, i32) #1

declare dso_local i32 @krb5_cfx_crypt_mbuf(%struct.TYPE_27__*, i32*, i64*, i32, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @krb5_mic_mbuf(%struct.TYPE_27__*, i32*, i32, i32, i64, %struct.TYPE_26__*, %struct.TYPE_23__*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
