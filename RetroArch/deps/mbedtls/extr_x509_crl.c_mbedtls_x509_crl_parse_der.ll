; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_mbedtls_x509_crl_parse_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_mbedtls_x509_crl_parse_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_14__, i32, i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_DATE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_SIG_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crl_parse_der(%struct.TYPE_17__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %23, i32* %4, align 4
  br label %390

24:                                               ; preds = %19
  %25 = call i32 @memset(%struct.TYPE_18__* %12, i32 0, i32 16)
  %26 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 16)
  %27 = call i32 @memset(%struct.TYPE_18__* %14, i32 0, i32 16)
  br label %28

28:                                               ; preds = %40, %24
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 14
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = icmp ne %struct.TYPE_17__* %36, null
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 14
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %15, align 8
  br label %28

44:                                               ; preds = %38
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 14
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = icmp eq %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = call i8* @mbedtls_calloc(i32 1, i64 112)
  %56 = bitcast i8* %55 to %struct.TYPE_17__*
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 14
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 14
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = icmp eq %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %65 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %64)
  %66 = load i32, i32* @MBEDTLS_ERR_X509_ALLOC_FAILED, align 4
  store i32 %66, i32* %4, align 4
  br label %390

67:                                               ; preds = %54
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 14
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = call i32 @mbedtls_x509_crl_init(%struct.TYPE_17__* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 14
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %15, align 8
  br label %75

75:                                               ; preds = %67, %49, %44
  %76 = load i64, i64* %7, align 8
  %77 = call i8* @mbedtls_calloc(i32 1, i64 %76)
  store i8* %77, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @MBEDTLS_ERR_X509_ALLOC_FAILED, align 4
  store i32 %80, i32* %4, align 4
  br label %390

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @memcpy(i8* %82, i8* %83, i64 %84)
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %99 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %97, i64* %9, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %81
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %105 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %104)
  %106 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  store i32 %106, i32* %4, align 4
  br label %390

107:                                              ; preds = %81
  %108 = load i64, i64* %9, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = icmp ne i64 %108, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %117 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %116)
  %118 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %119 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %4, align 4
  br label %390

121:                                              ; preds = %107
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 13
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %128 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %126, i64* %9, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %121
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %134 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %133)
  %135 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %4, align 4
  br label %390

138:                                              ; preds = %121
  %139 = load i8*, i8** %10, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %11, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 13
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = ptrtoint i8* %142 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 13
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = call i32 @x509_crl_get_version(i8** %10, i8* %154, i32* %156)
  store i32 %157, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %138
  %160 = load i8*, i8** %11, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = call i32 @mbedtls_x509_get_alg(i8** %10, i8* %160, %struct.TYPE_18__* %162, %struct.TYPE_18__* %12)
  store i32 %163, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %159, %138
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %167 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %166)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %4, align 4
  br label %390

169:                                              ; preds = %159
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %176, 2
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %180 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %179)
  %181 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_VERSION, align 4
  store i32 %181, i32* %4, align 4
  br label %390

182:                                              ; preds = %169
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 12
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 11
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 10
  %191 = call i32 @mbedtls_x509_get_sig_alg(%struct.TYPE_18__* %184, %struct.TYPE_18__* %12, i32* %186, i32* %188, i32* %190)
  store i32 %191, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %195 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %194)
  %196 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG, align 4
  store i32 %196, i32* %4, align 4
  br label %390

197:                                              ; preds = %182
  %198 = load i8*, i8** %10, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  store i8* %198, i8** %201, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %204 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %202, i64* %9, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %197
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %210 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %209)
  %211 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %211, %212
  store i32 %213, i32* %4, align 4
  br label %390

214:                                              ; preds = %197
  %215 = load i8*, i8** %10, align 8
  %216 = load i64, i64* %9, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 9
  %220 = call i32 @mbedtls_x509_get_name(i8** %10, i8* %217, i32* %219)
  store i32 %220, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %224 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %223)
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %4, align 4
  br label %390

226:                                              ; preds = %214
  %227 = load i8*, i8** %10, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %227 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = trunc i64 %234 to i32
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 8
  %239 = load i8*, i8** %11, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 7
  %242 = call i32 @mbedtls_x509_get_time(i8** %10, i8* %239, i32* %241)
  store i32 %242, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %226
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %246 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %245)
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %4, align 4
  br label %390

248:                                              ; preds = %226
  %249 = load i8*, i8** %11, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 6
  %252 = call i32 @mbedtls_x509_get_time(i8** %10, i8* %249, i32* %251)
  store i32 %252, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %271

254:                                              ; preds = %248
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  %257 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %258 = add nsw i32 %256, %257
  %259 = icmp ne i32 %255, %258
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  %263 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %264 = add nsw i32 %262, %263
  %265 = icmp ne i32 %261, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %268 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %267)
  %269 = load i32, i32* %8, align 4
  store i32 %269, i32* %4, align 4
  br label %390

270:                                              ; preds = %260, %254
  br label %271

271:                                              ; preds = %270, %248
  %272 = load i8*, i8** %11, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 5
  %275 = call i32 @x509_get_entries(i8** %10, i8* %272, i32* %274)
  store i32 %275, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %279 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %278)
  %280 = load i32, i32* %8, align 4
  store i32 %280, i32* %4, align 4
  br label %390

281:                                              ; preds = %271
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %298

286:                                              ; preds = %281
  %287 = load i8*, i8** %11, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 4
  %290 = call i32 @x509_get_crl_ext(i8** %10, i8* %287, i32* %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %286
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %295 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %294)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %4, align 4
  br label %390

297:                                              ; preds = %286
  br label %298

298:                                              ; preds = %297, %281
  %299 = load i8*, i8** %10, align 8
  %300 = load i8*, i8** %11, align 8
  %301 = icmp ne i8* %299, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %298
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %304 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %303)
  %305 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %306 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %307 = add nsw i32 %305, %306
  store i32 %307, i32* %4, align 4
  br label %390

308:                                              ; preds = %298
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds i8, i8* %312, i64 %316
  store i8* %317, i8** %11, align 8
  %318 = load i8*, i8** %11, align 8
  %319 = call i32 @mbedtls_x509_get_alg(i8** %10, i8* %318, %struct.TYPE_18__* %14, %struct.TYPE_18__* %13)
  store i32 %319, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %308
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %323 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %322)
  %324 = load i32, i32* %8, align 4
  store i32 %324, i32* %4, align 4
  br label %390

325:                                              ; preds = %308
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %329, %331
  br i1 %332, label %365, label %333

333:                                              ; preds = %325
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = call i64 @memcmp(i32 %337, i32 %339, i64 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %365, label %346

346:                                              ; preds = %333
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %348, %350
  br i1 %351, label %365, label %352

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = call i64 @memcmp(i32 %358, i32 %360, i64 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %356, %346, %333, %325
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %367 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %366)
  %368 = load i32, i32* @MBEDTLS_ERR_X509_SIG_MISMATCH, align 4
  store i32 %368, i32* %4, align 4
  br label %390

369:                                              ; preds = %356, %352
  %370 = load i8*, i8** %11, align 8
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 1
  %373 = call i32 @mbedtls_x509_get_sig(i8** %10, i8* %370, i32* %372)
  store i32 %373, i32* %8, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %369
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %377 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %376)
  %378 = load i32, i32* %8, align 4
  store i32 %378, i32* %4, align 4
  br label %390

379:                                              ; preds = %369
  %380 = load i8*, i8** %10, align 8
  %381 = load i8*, i8** %11, align 8
  %382 = icmp ne i8* %380, %381
  br i1 %382, label %383, label %389

383:                                              ; preds = %379
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %385 = call i32 @mbedtls_x509_crl_free(%struct.TYPE_17__* %384)
  %386 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %387 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %388 = add nsw i32 %386, %387
  store i32 %388, i32* %4, align 4
  br label %390

389:                                              ; preds = %379
  store i32 0, i32* %4, align 4
  br label %390

390:                                              ; preds = %389, %383, %375, %365, %321, %302, %293, %277, %266, %244, %222, %208, %193, %178, %165, %132, %115, %103, %79, %63, %22
  %391 = load i32, i32* %4, align 4
  ret i32 %391
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @mbedtls_calloc(i32, i64) #1

declare dso_local i32 @mbedtls_x509_crl_free(%struct.TYPE_17__*) #1

declare dso_local i32 @mbedtls_x509_crl_init(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @x509_crl_get_version(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_alg(i8**, i8*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mbedtls_x509_get_sig_alg(%struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_name(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_time(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_entries(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_crl_ext(i8**, i8*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @mbedtls_x509_get_sig(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
