; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_verify_top.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_verify_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__, i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_18__*, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_EXPIRED = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_FUTURE = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_MD = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_PK = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_NOT_TRUSTED = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32*, i32, i32, i32*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i8*)* @x509_crt_verify_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_verify_top(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32* %6, i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %7, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 0, i32* %21, align 4
  %28 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %24, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %26, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = call i64 @mbedtls_x509_time_is_past(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %9
  %37 = load i32, i32* @MBEDTLS_X509_BADCERT_EXPIRED, align 4
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %9
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = call i64 @mbedtls_x509_time_is_future(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @MBEDTLS_X509_BADCERT_FUTURE, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @x509_profile_check_md_alg(i32* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_MD, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @x509_profile_check_pk_alg(i32* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_PK, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i32, i32* @MBEDTLS_X509_BADCERT_NOT_TRUSTED, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @mbedtls_md_info_from_type(i32 %82)
  store i32* %83, i32** %25, align 8
  %84 = load i32*, i32** %25, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  br label %98

87:                                               ; preds = %75
  %88 = load i32*, i32** %25, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mbedtls_md(i32* %88, i32 %92, i32 %96, i8* %31)
  br label %98

98:                                               ; preds = %87, %86
  br label %99

99:                                               ; preds = %197, %98
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = icmp ne %struct.TYPE_18__* %100, null
  br i1 %101, label %102, label %201

102:                                              ; preds = %99
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %105 = load i32, i32* %15, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @x509_crt_check_parent(%struct.TYPE_18__* %103, %struct.TYPE_18__* %104, i32 1, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %197

111:                                              ; preds = %102
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %117, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %111
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @memcmp(i32 %127, i32 %131, i32 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %22, align 4
  br label %141

141:                                              ; preds = %138, %123, %111
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %16, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %197

155:                                              ; preds = %146, %141
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %25, align 8
  %168 = call i32 @mbedtls_md_get_size(i32* %167)
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @mbedtls_pk_verify_ext(i32 %158, i32 %161, i32* %163, i32 %166, i8* %31, i32 %168, i32 %172, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %155
  br label %197

180:                                              ; preds = %155
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = call i64 @mbedtls_x509_time_is_past(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = call i64 @mbedtls_x509_time_is_future(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185, %180
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %192 = icmp eq %struct.TYPE_18__* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %194, %struct.TYPE_18__** %26, align 8
  br label %195

195:                                              ; preds = %193, %190
  br label %197

196:                                              ; preds = %185
  br label %201

197:                                              ; preds = %195, %179, %154, %110
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 10
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  store %struct.TYPE_18__* %200, %struct.TYPE_18__** %12, align 8
  br label %99

201:                                              ; preds = %196, %99
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %203 = icmp ne %struct.TYPE_18__* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %205, %struct.TYPE_18__** %12, align 8
  %206 = icmp ne %struct.TYPE_18__* %205, null
  br i1 %206, label %207, label %227

207:                                              ; preds = %204, %201
  %208 = load i32, i32* @MBEDTLS_X509_BADCERT_NOT_TRUSTED, align 4
  %209 = xor i32 %208, -1
  %210 = load i32*, i32** %17, align 8
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, %209
  store i32 %212, i32* %210, align 4
  %213 = load i32*, i32** %14, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 5
  %219 = call i64 @x509_profile_check_key(i32* %213, i32 %216, i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %207
  %222 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_KEY, align 4
  %223 = load i32*, i32** %17, align 8
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %222
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %221, %207
  br label %227

227:                                              ; preds = %226, %204
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %229 = icmp ne %struct.TYPE_18__* %228, null
  br i1 %229, label %230, label %289

230:                                              ; preds = %227
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %234, %238
  br i1 %239, label %255, label %240

240:                                              ; preds = %230
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @memcmp(i32 %244, i32 %248, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %289

255:                                              ; preds = %240, %230
  %256 = load i32*, i32** %13, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 2
  %259 = call i64 @mbedtls_x509_time_is_past(i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* @MBEDTLS_X509_BADCERT_EXPIRED, align 4
  %263 = load i32, i32* %21, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %21, align 4
  br label %265

265:                                              ; preds = %261, %255
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  %268 = call i64 @mbedtls_x509_time_is_future(i32* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load i32, i32* @MBEDTLS_X509_BADCERT_FUTURE, align 4
  %272 = load i32, i32* %21, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %21, align 4
  br label %274

274:                                              ; preds = %270, %265
  %275 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %18, align 8
  %276 = icmp ne i32 (i8*, %struct.TYPE_18__*, i32, i32*)* null, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %274
  %278 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %18, align 8
  %279 = load i8*, i8** %19, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %281 = load i32, i32* %15, align 4
  %282 = add nsw i32 %281, 1
  %283 = call i32 %278(i8* %279, %struct.TYPE_18__* %280, i32 %282, i32* %21)
  store i32 %283, i32* %20, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load i32, i32* %20, align 4
  store i32 %286, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %308

287:                                              ; preds = %277
  br label %288

288:                                              ; preds = %287, %274
  br label %289

289:                                              ; preds = %288, %240, %227
  %290 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %18, align 8
  %291 = icmp ne i32 (i8*, %struct.TYPE_18__*, i32, i32*)* null, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %289
  %293 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %18, align 8
  %294 = load i8*, i8** %19, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %296 = load i32, i32* %15, align 4
  %297 = load i32*, i32** %17, align 8
  %298 = call i32 %293(i8* %294, %struct.TYPE_18__* %295, i32 %296, i32* %297)
  store i32 %298, i32* %20, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i32, i32* %20, align 4
  store i32 %301, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %308

302:                                              ; preds = %292
  br label %303

303:                                              ; preds = %302, %289
  %304 = load i32, i32* %21, align 4
  %305 = load i32*, i32** %17, align 8
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %304
  store i32 %307, i32* %305, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %308

308:                                              ; preds = %303, %300, %285
  %309 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %10, align 4
  ret i32 %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mbedtls_x509_time_is_past(i32*) #2

declare dso_local i64 @mbedtls_x509_time_is_future(i32*) #2

declare dso_local i64 @x509_profile_check_md_alg(i32*, i32) #2

declare dso_local i64 @x509_profile_check_pk_alg(i32*, i32) #2

declare dso_local i32* @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_md(i32*, i32, i32, i8*) #2

declare dso_local i64 @x509_crt_check_parent(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32) #2

declare dso_local i64 @memcmp(i32, i32, i32) #2

declare dso_local i64 @mbedtls_pk_verify_ext(i32, i32, i32*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @mbedtls_md_get_size(i32*) #2

declare dso_local i64 @x509_profile_check_key(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
