; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SamAuthUserByPlainPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SamAuthUserByPlainPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i8*, i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@GSF_DISABLE_RADIUS_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@AUTHTYPE_RADIUS = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@AUTHTYPE_NT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"LH_NO_RADIUS_SETTING\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"MsChapV2_PPPUsername = %s, nt_name = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SamAuthUserByPlainPassword(i32* %0, %struct.TYPE_24__* %1, i8* %2, i8* %3, i32 %4, i32* %5, %struct.TYPE_22__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_26__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_23__, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca [8 x i32], align 16
  %41 = alloca [16 x i32], align 16
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 90, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %43 = icmp eq %struct.TYPE_24__* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %7
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %7
  store i32 0, i32* %8, align 4
  br label %361

51:                                               ; preds = %47
  %52 = load i32, i32* @GSF_DISABLE_RADIUS_AUTH, align 4
  %53 = call i64 @GetGlobalServerFlag(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %361

56:                                               ; preds = %51
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %21, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @AddRef(i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %63 = call i32 @AcLock(%struct.TYPE_24__* %62)
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i8*, i8** %11, align 8
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i8* [ %68, %67 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %69 ]
  %72 = call %struct.TYPE_21__* @AcGetUser(%struct.TYPE_24__* %64, i8* %71)
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %22, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %74 = icmp ne %struct.TYPE_21__* %73, null
  br i1 %74, label %75, label %192

75:                                               ; preds = %70
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @Lock(i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AUTHTYPE_RADIUS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %75
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %89, %struct.TYPE_25__** %23, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @UniStrLen(i32* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %97, %92, %85
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @IsEmptyStr(i8* %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load i32, i32* @MAX_SIZE, align 4
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %24, align 8
  %113 = alloca i8, i64 %111, align 16
  store i64 %111, i64* %25, align 8
  %114 = trunc i64 %111 to i32
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @StrCpy(i8* %113, i32 %114, i8* %115)
  %117 = trunc i64 %111 to i32
  %118 = call i32 @StrCat(i8* %113, i32 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %119 = trunc i64 %111 to i32
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @StrCat(i8* %113, i32 %119, i8* %122)
  %124 = call i8* @CopyStrToUni(i8* %113)
  store i8* %124, i8** %17, align 8
  %125 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %125)
  br label %129

126:                                              ; preds = %103
  %127 = load i8*, i8** %11, align 8
  %128 = call i8* @CopyStrToUni(i8* %127)
  store i8* %128, i8** %17, align 8
  br label %129

129:                                              ; preds = %126, %109
  br label %135

130:                                              ; preds = %97
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i8* @CopyUniStr(i32* %133)
  store i8* %134, i8** %17, align 8
  br label %135

135:                                              ; preds = %130, %129
  store i32 0, i32* %20, align 4
  br label %185

136:                                              ; preds = %75
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AUTHTYPE_NT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %184

142:                                              ; preds = %136
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %146, %struct.TYPE_26__** %26, align 8
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @UniStrLen(i32* %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154, %149, %142
  %161 = load i8*, i8** %11, align 8
  %162 = call i8* @CopyStrToUni(i8* %161)
  store i8* %162, i8** %17, align 8
  br label %168

163:                                              ; preds = %154
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i8* @CopyUniStr(i32* %166)
  store i8* %167, i8** %17, align 8
  br label %168

168:                                              ; preds = %163, %160
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @CopyStrToUni(i8* %171)
  store i8* %172, i8** %18, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = icmp ne %struct.TYPE_20__* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %168
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %19, align 4
  br label %183

183:                                              ; preds = %177, %168
  store i32 1, i32* %20, align 4
  br label %184

184:                                              ; preds = %183, %136
  br label %185

185:                                              ; preds = %184, %135
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @Unlock(i32 %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %191 = call i32 @ReleaseUser(%struct.TYPE_21__* %190)
  br label %192

192:                                              ; preds = %185, %70
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %194 = call i32 @AcUnlock(%struct.TYPE_24__* %193)
  %195 = load i8*, i8** %17, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %357

197:                                              ; preds = %192
  %198 = load i32, i32* %20, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %271

200:                                              ; preds = %197
  %201 = load i32, i32* @MAX_SIZE, align 4
  %202 = zext i32 %201 to i64
  %203 = call i8* @llvm.stacksave()
  store i8* %203, i8** %27, align 8
  %204 = alloca i8, i64 %202, align 16
  store i64 %202, i64* %28, align 8
  %205 = load i32, i32* @MAX_SIZE, align 4
  %206 = zext i32 %205 to i64
  %207 = alloca i8, i64 %206, align 16
  store i64 %206, i64* %30, align 8
  %208 = load i32, i32* @MAX_SIZE, align 4
  %209 = zext i32 %208 to i64
  %210 = alloca i8, i64 %209, align 16
  store i64 %209, i64* %31, align 8
  %211 = load i32, i32* @MAX_SIZE, align 4
  %212 = zext i32 %211 to i64
  %213 = alloca i8, i64 %212, align 16
  store i64 %212, i64* %32, align 8
  %214 = trunc i64 %209 to i32
  %215 = call i32 @Zero(i8* %210, i32 %214)
  %216 = trunc i64 %212 to i32
  %217 = call i32 @Zero(i8* %213, i32 %216)
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %219 = trunc i64 %202 to i32
  %220 = trunc i64 %206 to i32
  %221 = trunc i64 %209 to i32
  %222 = call i64 @GetRadiusServerEx2(%struct.TYPE_24__* %218, i8* %204, i32 %219, i32* %29, i8* %207, i32 %220, i32* %33, i8* %210, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %265

224:                                              ; preds = %200
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @Unlock(i32 %227)
  %229 = trunc i64 %212 to i32
  %230 = call i32 @StrToUni(i8* %213, i32 %229, i8* %210)
  %231 = call i64 @UniIsEmptyStr(i8* %213)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %224
  %234 = load i8*, i8** %17, align 8
  %235 = call i64 @UniEndWith(i8* %234, i8* %213)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %260

237:                                              ; preds = %233, %224
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %29, align 4
  %240 = call i32 @StrLen(i8* %207)
  %241 = load i8*, i8** %17, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = load i32, i32* %33, align 4
  %244 = load i32*, i32** %14, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @RadiusLogin(i32* %238, i8* %204, i32 %239, i8* %207, i32 %240, i8* %241, i8* %242, i32 %243, i32* %244, %struct.TYPE_22__* %245, i32 %248)
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %237
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %254 = icmp ne %struct.TYPE_22__* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  store i32 1, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %252
  br label %259

259:                                              ; preds = %258, %237
  br label %260

260:                                              ; preds = %259, %233
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @Lock(i32 %263)
  br label %269

265:                                              ; preds = %200
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %267 = load i8*, i8** %17, align 8
  %268 = call i32 @HLog(%struct.TYPE_24__* %266, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %265, %260
  %270 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %270)
  br label %348

271:                                              ; preds = %197
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @Unlock(i32 %274)
  %276 = load i32, i32* @MAX_SIZE, align 4
  %277 = zext i32 %276 to i64
  %278 = call i8* @llvm.stacksave()
  store i8* %278, i8** %35, align 8
  %279 = alloca i8, i64 %277, align 16
  store i64 %277, i64* %36, align 8
  %280 = load i32, i32* @MAX_SIZE, align 4
  %281 = zext i32 %280 to i64
  %282 = alloca i8, i64 %281, align 16
  store i64 %281, i64* %37, align 8
  %283 = load i32, i32* @MAX_SIZE, align 4
  %284 = zext i32 %283 to i64
  %285 = alloca i8, i64 %284, align 16
  store i64 %284, i64* %38, align 8
  %286 = load i32, i32* @MAX_SIZE, align 4
  %287 = zext i32 %286 to i64
  %288 = alloca i8, i64 %287, align 16
  store i64 %287, i64* %39, align 8
  %289 = getelementptr inbounds i8, i8* %285, i64 0
  store i8 0, i8* %289, align 16
  %290 = trunc i64 %277 to i32
  %291 = load i8*, i8** %17, align 8
  %292 = call i32 @UniToStr(i8* %279, i32 %290, i8* %291)
  %293 = load i8*, i8** %18, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %299

295:                                              ; preds = %271
  %296 = trunc i64 %284 to i32
  %297 = load i8*, i8** %18, align 8
  %298 = call i32 @UniToStr(i8* %285, i32 %296, i8* %297)
  br label %299

299:                                              ; preds = %295, %271
  %300 = trunc i64 %281 to i32
  %301 = trunc i64 %287 to i32
  %302 = call i32 @ParseNtUsername(i8* %279, i8* %282, i32 %300, i8* %288, i32 %301, i32 0)
  %303 = load i8*, i8** %12, align 8
  %304 = call i32 @ParseAndExtractMsChapV2InfoFromPassword(%struct.TYPE_23__* %34, i8* %303)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %299
  %307 = load i8*, i8** %12, align 8
  %308 = load i32, i32* %19, align 4
  %309 = call i32 @SmbCheckLogon(i8* %282, i8* %307, i8* %288, i8* %285, i32 %308)
  store i32 %309, i32* %16, align 4
  br label %342

310:                                              ; preds = %299
  %311 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 0
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @MsChapV2_GenerateChallenge8(i32* %311, i32 %313, i32 %315, i32 %317)
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %320, i8* %279)
  %322 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 0
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 0, i64 0
  %326 = load i32, i32* %19, align 4
  %327 = call i32 @SmbPerformMsChapV2Auth(i8* %282, i8* %288, i8* %285, i32* %322, i32 %324, i32* %325, i32 %326)
  store i32 %327, i32* %16, align 4
  %328 = load i32, i32* %16, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %341

330:                                              ; preds = %310
  %331 = load i32*, i32** %14, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %340

333:                                              ; preds = %330
  %334 = load i32*, i32** %14, align 8
  %335 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 0, i64 0
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 0
  %339 = call i32 @MsChapV2Server_GenerateResponse(i32* %334, i32* %335, i32 %337, i32* %338)
  br label %340

340:                                              ; preds = %333, %330
  br label %341

341:                                              ; preds = %340, %310
  br label %342

342:                                              ; preds = %341, %306
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @Lock(i32 %345)
  %347 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %347)
  br label %348

348:                                              ; preds = %342, %269
  %349 = load i8*, i8** %18, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i8*, i8** %18, align 8
  %353 = call i32 @Free(i8* %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = load i8*, i8** %17, align 8
  %356 = call i32 @Free(i8* %355)
  br label %357

357:                                              ; preds = %354, %192
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %359 = call i32 @ReleaseHub(%struct.TYPE_24__* %358)
  %360 = load i32, i32* %16, align 4
  store i32 %360, i32* %8, align 4
  br label %361

361:                                              ; preds = %357, %55, %50
  %362 = load i32, i32* %8, align 4
  ret i32 %362
}

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @AcLock(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_21__* @AcGetUser(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @UniStrLen(i32*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

declare dso_local i8* @CopyStrToUni(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @CopyUniStr(i32*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @ReleaseUser(%struct.TYPE_21__*) #1

declare dso_local i32 @AcUnlock(%struct.TYPE_24__*) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i64 @GetRadiusServerEx2(%struct.TYPE_24__*, i8*, i32, i32*, i8*, i32, i32*, i8*, i32) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i64 @UniIsEmptyStr(i8*) #1

declare dso_local i64 @UniEndWith(i8*, i8*) #1

declare dso_local i32 @RadiusLogin(i32*, i8*, i32, i8*, i32, i8*, i8*, i32, i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @HLog(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @UniToStr(i8*, i32, i8*) #1

declare dso_local i32 @ParseNtUsername(i8*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ParseAndExtractMsChapV2InfoFromPassword(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @SmbCheckLogon(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @MsChapV2_GenerateChallenge8(i32*, i32, i32, i32) #1

declare dso_local i32 @Debug(i8*, i32, i8*) #1

declare dso_local i32 @SmbPerformMsChapV2Auth(i8*, i8*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @MsChapV2Server_GenerateResponse(i32*, i32*, i32, i32*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
