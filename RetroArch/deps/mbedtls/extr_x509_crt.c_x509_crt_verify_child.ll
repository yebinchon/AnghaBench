; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_verify_child.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_verify_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_17__, i32, i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_X509_MAX_INTERMEDIATE_CA = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_NOT_TRUSTED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_CERT_VERIFY_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_EXPIRED = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_FUTURE = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_MD = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_PK = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32*, i32, i32, i32*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i8*)* @x509_crt_verify_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_verify_child(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32* %7, i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %8, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %29 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %24, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %25, align 8
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %10
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 11
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 10
  %40 = call i64 @x509_name_cmp(i32* %37, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %18, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %42, %35, %10
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 1, %46
  %48 = load i32, i32* @MBEDTLS_X509_MAX_INTERMEDIATE_CA, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @MBEDTLS_X509_BADCERT_NOT_TRUSTED, align 4
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @MBEDTLS_ERR_X509_CERT_VERIFY_FAILED, align 4
  store i32 %55, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %296

56:                                               ; preds = %45
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 9
  %59 = call i64 @mbedtls_x509_time_is_past(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @MBEDTLS_X509_BADCERT_EXPIRED, align 4
  %63 = load i32*, i32** %19, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 8
  %69 = call i64 @mbedtls_x509_time_is_future(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @MBEDTLS_X509_BADCERT_FUTURE, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32*, i32** %16, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @x509_profile_check_md_alg(i32* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_MD, align 4
  %85 = load i32*, i32** %19, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %76
  %89 = load i32*, i32** %16, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @x509_profile_check_pk_alg(i32* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_PK, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @mbedtls_md_info_from_type(i32 %103)
  store i32* %104, i32** %27, align 8
  %105 = load i32*, i32** %27, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i32, i32* @MBEDTLS_X509_BADCERT_NOT_TRUSTED, align 4
  %109 = load i32*, i32** %19, align 8
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  br label %166

112:                                              ; preds = %100
  %113 = load i32*, i32** %27, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @mbedtls_md(i32* %113, i32 %117, i32 %121, i8* %32)
  %123 = load i32*, i32** %16, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  %129 = call i64 @x509_profile_check_key(i32* %123, i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %112
  %132 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_KEY, align 4
  %133 = load i32*, i32** %19, align 8
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %131, %112
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %27, align 8
  %149 = call i32 @mbedtls_md_get_size(i32* %148)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @mbedtls_pk_verify_ext(i32 %139, i32 %142, i32* %144, i32 %147, i8* %32, i32 %149, i32 %153, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %136
  %161 = load i32, i32* @MBEDTLS_X509_BADCERT_NOT_TRUSTED, align 4
  %162 = load i32*, i32** %19, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %160, %136
  br label %166

166:                                              ; preds = %165, %107
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %167, %struct.TYPE_18__** %26, align 8
  br label %168

168:                                              ; preds = %181, %166
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %170 = icmp ne %struct.TYPE_18__* %169, null
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %174 = load i32, i32* %17, align 4
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i64 @x509_crt_check_parent(%struct.TYPE_18__* %172, %struct.TYPE_18__* %173, i32 0, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %185

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  store %struct.TYPE_18__* %184, %struct.TYPE_18__** %26, align 8
  br label %168

185:                                              ; preds = %179, %168
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %187 = icmp ne %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %204

188:                                              ; preds = %185
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = load i32*, i32** %16, align 8
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  %195 = load i32, i32* %18, align 4
  %196 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %20, align 8
  %197 = load i8*, i8** %21, align 8
  %198 = call i32 @x509_crt_verify_top(%struct.TYPE_18__* %189, %struct.TYPE_18__* %190, i32* %191, i32* %192, i32 %194, i32 %195, i32* %23, i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %196, i8* %197)
  store i32 %198, i32* %22, align 4
  %199 = load i32, i32* %22, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %188
  %202 = load i32, i32* %22, align 4
  store i32 %202, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %296

203:                                              ; preds = %188
  br label %277

204:                                              ; preds = %185
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  store %struct.TYPE_18__* %207, %struct.TYPE_18__** %26, align 8
  br label %208

208:                                              ; preds = %236, %204
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %210 = icmp ne %struct.TYPE_18__* %209, null
  br i1 %210, label %211, label %240

211:                                              ; preds = %208
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 2, %220
  %222 = load i32, i32* %18, align 4
  %223 = sub nsw i32 %221, %222
  %224 = icmp slt i32 %219, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %236

226:                                              ; preds = %216, %211
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %229 = load i32, i32* %17, align 4
  %230 = icmp eq i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i64 @x509_crt_check_parent(%struct.TYPE_18__* %227, %struct.TYPE_18__* %228, i32 0, i32 %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %240

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235, %225
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %238, align 8
  store %struct.TYPE_18__* %239, %struct.TYPE_18__** %26, align 8
  br label %208

240:                                              ; preds = %234, %208
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %242 = icmp ne %struct.TYPE_18__* %241, null
  br i1 %242, label %243, label %260

243:                                              ; preds = %240
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %247 = load i32*, i32** %15, align 8
  %248 = load i32*, i32** %16, align 8
  %249 = load i32, i32* %17, align 4
  %250 = add nsw i32 %249, 1
  %251 = load i32, i32* %18, align 4
  %252 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %20, align 8
  %253 = load i8*, i8** %21, align 8
  %254 = call i32 @x509_crt_verify_child(%struct.TYPE_18__* %244, %struct.TYPE_18__* %245, %struct.TYPE_18__* %246, i32* %247, i32* %248, i32 %250, i32 %251, i32* %23, i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %252, i8* %253)
  store i32 %254, i32* %22, align 4
  %255 = load i32, i32* %22, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %243
  %258 = load i32, i32* %22, align 4
  store i32 %258, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %296

259:                                              ; preds = %243
  br label %276

260:                                              ; preds = %240
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %263 = load i32*, i32** %15, align 8
  %264 = load i32*, i32** %16, align 8
  %265 = load i32, i32* %17, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %18, align 4
  %268 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %20, align 8
  %269 = load i8*, i8** %21, align 8
  %270 = call i32 @x509_crt_verify_top(%struct.TYPE_18__* %261, %struct.TYPE_18__* %262, i32* %263, i32* %264, i32 %266, i32 %267, i32* %23, i32 (i8*, %struct.TYPE_18__*, i32, i32*)* %268, i8* %269)
  store i32 %270, i32* %22, align 4
  %271 = load i32, i32* %22, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %260
  %274 = load i32, i32* %22, align 4
  store i32 %274, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %296

275:                                              ; preds = %260
  br label %276

276:                                              ; preds = %275, %259
  br label %277

277:                                              ; preds = %276, %203
  %278 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %20, align 8
  %279 = icmp ne i32 (i8*, %struct.TYPE_18__*, i32, i32*)* null, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %277
  %281 = load i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)** %20, align 8
  %282 = load i8*, i8** %21, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %284 = load i32, i32* %17, align 4
  %285 = load i32*, i32** %19, align 8
  %286 = call i32 %281(i8* %282, %struct.TYPE_18__* %283, i32 %284, i32* %285)
  store i32 %286, i32* %22, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = load i32, i32* %22, align 4
  store i32 %289, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %296

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290, %277
  %292 = load i32, i32* %23, align 4
  %293 = load i32*, i32** %19, align 8
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %292
  store i32 %295, i32* %293, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %296

296:                                              ; preds = %291, %288, %273, %257, %201, %50
  %297 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i32, i32* %11, align 4
  ret i32 %298
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @x509_name_cmp(i32*, i32*) #2

declare dso_local i64 @mbedtls_x509_time_is_past(i32*) #2

declare dso_local i64 @mbedtls_x509_time_is_future(i32*) #2

declare dso_local i64 @x509_profile_check_md_alg(i32*, i32) #2

declare dso_local i64 @x509_profile_check_pk_alg(i32*, i32) #2

declare dso_local i32* @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_md(i32*, i32, i32, i8*) #2

declare dso_local i64 @x509_profile_check_key(i32*, i32, i32*) #2

declare dso_local i64 @mbedtls_pk_verify_ext(i32, i32, i32*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @mbedtls_md_get_size(i32*) #2

declare dso_local i64 @x509_crt_check_parent(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @x509_crt_verify_top(%struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32*, i32, i32, i32*, i32 (i8*, %struct.TYPE_18__*, i32, i32*)*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
