; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_verify_with_profile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_verify_with_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, i32, %struct.TYPE_19__, %struct.TYPE_20__ }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_18__, i32 }

@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_X509_EXT_SUBJECT_ALT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"*.\00", align 1
@MBEDTLS_X509_BADCERT_CN_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_OID_AT_CN = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_PK = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_KEY = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_CERT_VERIFY_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_verify_with_profile(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i32* %2, i32* %3, i8* %4, i32* %5, i32 (i8*, %struct.TYPE_21__*, i32, i32*)* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (i8*, %struct.TYPE_21__*, i32, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 (i8*, %struct.TYPE_21__*, i32, i32*)* %6, i32 (i8*, %struct.TYPE_21__*, i32, i32*)** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %24, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %29, i32* %9, align 4
  br label %291

30:                                               ; preds = %8
  %31 = load i32*, i32** %15, align 8
  store i32 0, i32* %31, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %163

34:                                               ; preds = %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 4
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %23, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %18, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MBEDTLS_X509_EXT_SUBJECT_ALT_NAME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %34
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 3
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %24, align 8
  br label %48

48:                                               ; preds = %88, %45
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %50 = icmp ne %struct.TYPE_19__* %49, null
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %18, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %18, align 8
  %65 = call i64 @x509_memcasecmp(i8* %59, i8* %63, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %92

68:                                               ; preds = %58, %51
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ugt i64 %72, 2
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @memcmp(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = call i64 @x509_check_wildcard(i8* %82, %struct.TYPE_18__* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %92

88:                                               ; preds = %81, %74, %68
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %24, align 8
  br label %48

92:                                               ; preds = %87, %67, %48
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %94 = icmp eq %struct.TYPE_19__* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* @MBEDTLS_X509_BADCERT_CN_MISMATCH, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %92
  br label %162

101:                                              ; preds = %34
  br label %102

102:                                              ; preds = %149, %101
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %104 = icmp ne %struct.TYPE_20__* %103, null
  br i1 %104, label %105, label %153

105:                                              ; preds = %102
  %106 = load i32, i32* @MBEDTLS_OID_AT_CN, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = call i64 @MBEDTLS_OID_CMP(i32 %106, i32* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %149

111:                                              ; preds = %105
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %18, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = load i64, i64* %18, align 8
  %125 = call i64 @x509_memcasecmp(i8* %122, i8* %123, i64 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %153

128:                                              ; preds = %118, %111
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ugt i64 %132, 2
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @memcmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i8*, i8** %14, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = call i64 @x509_check_wildcard(i8* %142, %struct.TYPE_18__* %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %153

148:                                              ; preds = %141, %134, %128
  br label %149

149:                                              ; preds = %148, %105
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  store %struct.TYPE_20__* %152, %struct.TYPE_20__** %23, align 8
  br label %102

153:                                              ; preds = %147, %127, %102
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %155 = icmp eq %struct.TYPE_20__* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* @MBEDTLS_X509_BADCERT_CN_MISMATCH, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %157
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %156, %153
  br label %162

162:                                              ; preds = %161, %100
  br label %163

163:                                              ; preds = %162, %30
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = call i32 @mbedtls_pk_get_type(i32* %165)
  store i32 %166, i32* %25, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %25, align 4
  %169 = call i64 @x509_profile_check_pk_alg(i32* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_PK, align 4
  %173 = load i32*, i32** %15, align 8
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %171, %163
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %25, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 2
  %181 = call i64 @x509_profile_check_key(i32* %177, i32 %178, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_KEY, align 4
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %184
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %183, %176
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %189, %struct.TYPE_21__** %22, align 8
  br label %190

190:                                              ; preds = %203, %188
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %192 = icmp ne %struct.TYPE_21__* %191, null
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %196 = load i32, i32* %20, align 4
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i64 @x509_crt_check_parent(%struct.TYPE_21__* %194, %struct.TYPE_21__* %195, i32 0, i32 %198)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %207

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %205, align 8
  store %struct.TYPE_21__* %206, %struct.TYPE_21__** %22, align 8
  br label %190

207:                                              ; preds = %201, %190
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %209 = icmp ne %struct.TYPE_21__* %208, null
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = load i32*, i32** %13, align 8
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* %21, align 4
  %217 = load i32*, i32** %15, align 8
  %218 = load i32 (i8*, %struct.TYPE_21__*, i32, i32*)*, i32 (i8*, %struct.TYPE_21__*, i32, i32*)** %16, align 8
  %219 = load i8*, i8** %17, align 8
  %220 = call i32 @x509_crt_verify_top(%struct.TYPE_21__* %211, %struct.TYPE_21__* %212, i32* %213, i32* %214, i32 %215, i32 %216, i32* %217, i32 (i8*, %struct.TYPE_21__*, i32, i32*)* %218, i8* %219)
  store i32 %220, i32* %19, align 4
  %221 = load i32, i32* %19, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %210
  %224 = load i32, i32* %19, align 4
  store i32 %224, i32* %9, align 4
  br label %291

225:                                              ; preds = %210
  br label %284

226:                                              ; preds = %207
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  store %struct.TYPE_21__* %229, %struct.TYPE_21__** %22, align 8
  br label %230

230:                                              ; preds = %243, %226
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %232 = icmp ne %struct.TYPE_21__* %231, null
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %236 = load i32, i32* %20, align 4
  %237 = icmp eq i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i64 @x509_crt_check_parent(%struct.TYPE_21__* %234, %struct.TYPE_21__* %235, i32 0, i32 %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  br label %247

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %245, align 8
  store %struct.TYPE_21__* %246, %struct.TYPE_21__** %22, align 8
  br label %230

247:                                              ; preds = %241, %230
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %249 = icmp ne %struct.TYPE_21__* %248, null
  br i1 %249, label %250, label %267

250:                                              ; preds = %247
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %254 = load i32*, i32** %12, align 8
  %255 = load i32*, i32** %13, align 8
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32*, i32** %15, align 8
  %259 = load i32 (i8*, %struct.TYPE_21__*, i32, i32*)*, i32 (i8*, %struct.TYPE_21__*, i32, i32*)** %16, align 8
  %260 = load i8*, i8** %17, align 8
  %261 = call i32 @x509_crt_verify_child(%struct.TYPE_21__* %251, %struct.TYPE_21__* %252, %struct.TYPE_21__* %253, i32* %254, i32* %255, i32 %256, i32 %257, i32* %258, i32 (i8*, %struct.TYPE_21__*, i32, i32*)* %259, i8* %260)
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %19, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %250
  %265 = load i32, i32* %19, align 4
  store i32 %265, i32* %9, align 4
  br label %291

266:                                              ; preds = %250
  br label %283

267:                                              ; preds = %247
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %270 = load i32*, i32** %12, align 8
  %271 = load i32*, i32** %13, align 8
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* %21, align 4
  %274 = load i32*, i32** %15, align 8
  %275 = load i32 (i8*, %struct.TYPE_21__*, i32, i32*)*, i32 (i8*, %struct.TYPE_21__*, i32, i32*)** %16, align 8
  %276 = load i8*, i8** %17, align 8
  %277 = call i32 @x509_crt_verify_top(%struct.TYPE_21__* %268, %struct.TYPE_21__* %269, i32* %270, i32* %271, i32 %272, i32 %273, i32* %274, i32 (i8*, %struct.TYPE_21__*, i32, i32*)* %275, i8* %276)
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %19, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %267
  %281 = load i32, i32* %19, align 4
  store i32 %281, i32* %9, align 4
  br label %291

282:                                              ; preds = %267
  br label %283

283:                                              ; preds = %282, %266
  br label %284

284:                                              ; preds = %283, %225
  %285 = load i32*, i32** %15, align 8
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load i32, i32* @MBEDTLS_ERR_X509_CERT_VERIFY_FAILED, align 4
  store i32 %289, i32* %9, align 4
  br label %291

290:                                              ; preds = %284
  store i32 0, i32* %9, align 4
  br label %291

291:                                              ; preds = %290, %288, %280, %264, %223, %28
  %292 = load i32, i32* %9, align 4
  ret i32 %292
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @x509_memcasecmp(i8*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @x509_check_wildcard(i8*, %struct.TYPE_18__*) #1

declare dso_local i64 @MBEDTLS_OID_CMP(i32, i32*) #1

declare dso_local i32 @mbedtls_pk_get_type(i32*) #1

declare dso_local i64 @x509_profile_check_pk_alg(i32*, i32) #1

declare dso_local i64 @x509_profile_check_key(i32*, i32, i32*) #1

declare dso_local i64 @x509_crt_check_parent(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @x509_crt_verify_top(%struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*, i32, i32, i32*, i32 (i8*, %struct.TYPE_21__*, i32, i32*)*, i8*) #1

declare dso_local i32 @x509_crt_verify_child(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*, i32, i32, i32*, i32 (i8*, %struct.TYPE_21__*, i32, i32*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
