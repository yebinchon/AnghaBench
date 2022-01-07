; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_parse_der_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_parse_der_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i32, i8* }

@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_SIG_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i64)* @x509_crt_parse_der_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_parse_der_core(%struct.TYPE_19__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = call i32 @memset(%struct.TYPE_20__* %13, i32 0, i32 16)
  %17 = call i32 @memset(%struct.TYPE_20__* %14, i32 0, i32 16)
  %18 = call i32 @memset(%struct.TYPE_20__* %15, i32 0, i32 16)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = icmp eq %struct.TYPE_19__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %25, i32* %4, align 4
  br label %433

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %34 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %32, i64* %9, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %39)
  %41 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  store i32 %41, i32* %4, align 4
  br label %433

42:                                               ; preds = %26
  %43 = load i64, i64* %9, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp ugt i64 %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %51)
  %53 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %54 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %4, align 4
  br label %433

56:                                               ; preds = %42
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 17
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 17
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @mbedtls_calloc(i32 1, i32 %72)
  store i8* %73, i8** %10, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 17
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %56
  %80 = load i32, i32* @MBEDTLS_ERR_X509_ALLOC_FAILED, align 4
  store i32 %80, i32* %4, align 4
  br label %433

81:                                               ; preds = %56
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 17
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i8* %82, i8* %83, i32 %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 17
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %9, align 8
  %95 = sub i64 %93, %94
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %12, align 8
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 16
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %107 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %105, i64* %9, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %81
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %112)
  %114 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %4, align 4
  br label %433

117:                                              ; preds = %81
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 16
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = ptrtoint i8* %121 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 16
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = call i32 @x509_get_version(i8** %10, i8* %133, i32* %135)
  store i32 %136, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %117
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 15
  %142 = call i32 @mbedtls_x509_get_serial(i8** %10, i8* %139, i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %11, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = call i32 @mbedtls_x509_get_alg(i8** %10, i8* %145, %struct.TYPE_20__* %147, %struct.TYPE_20__* %13)
  store i32 %148, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144, %138, %117
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %151)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %4, align 4
  br label %433

154:                                              ; preds = %144
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 3
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %165 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %164)
  %166 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_VERSION, align 4
  store i32 %166, i32* %4, align 4
  br label %433

167:                                              ; preds = %154
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 14
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 13
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 12
  %176 = call i32 @mbedtls_x509_get_sig_alg(%struct.TYPE_20__* %169, %struct.TYPE_20__* %13, i32* %171, i32* %173, i32* %175)
  store i32 %176, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %179)
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %4, align 4
  br label %433

182:                                              ; preds = %167
  %183 = load i8*, i8** %10, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 10
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  store i8* %183, i8** %186, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %189 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %187, i64* %9, i32 %190)
  store i32 %191, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %182
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %195 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %194)
  %196 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %4, align 4
  br label %433

199:                                              ; preds = %182
  %200 = load i8*, i8** %10, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 11
  %205 = call i32 @mbedtls_x509_get_name(i8** %10, i8* %202, i32* %204)
  store i32 %205, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %199
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %209 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %208)
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %4, align 4
  br label %433

211:                                              ; preds = %199
  %212 = load i8*, i8** %10, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 10
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = ptrtoint i8* %212 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 10
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 8
  %224 = load i8*, i8** %11, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 9
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 8
  %229 = call i32 @x509_get_dates(i8** %10, i8* %224, i32* %226, i32* %228)
  store i32 %229, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %211
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %233 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %232)
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %4, align 4
  br label %433

235:                                              ; preds = %211
  %236 = load i8*, i8** %10, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  store i8* %236, i8** %239, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %242 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %240, i64* %9, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %235
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %247)
  %249 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %249, %250
  store i32 %251, i32* %4, align 4
  br label %433

252:                                              ; preds = %235
  %253 = load i64, i64* %9, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %252
  %256 = load i8*, i8** %10, align 8
  %257 = load i64, i64* %9, align 8
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 7
  %261 = call i32 @mbedtls_x509_get_name(i8** %10, i8* %258, i32* %260)
  store i32 %261, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %255
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %265 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %264)
  %266 = load i32, i32* %8, align 4
  store i32 %266, i32* %4, align 4
  br label %433

267:                                              ; preds = %255, %252
  %268 = load i8*, i8** %10, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = ptrtoint i8* %268 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  %276 = trunc i64 %275 to i32
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 8
  %280 = load i8*, i8** %11, align 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 5
  %283 = call i32 @mbedtls_pk_parse_subpubkey(i8** %10, i8* %280, i32* %282)
  store i32 %283, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %267
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %287 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %286)
  %288 = load i32, i32* %8, align 4
  store i32 %288, i32* %4, align 4
  br label %433

289:                                              ; preds = %267
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 2
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 3
  br i1 %298, label %299, label %311

299:                                              ; preds = %294, %289
  %300 = load i8*, i8** %11, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 4
  %303 = call i32 @x509_get_uid(i8** %10, i8* %300, i32* %302, i32 1)
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %299
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %308 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %307)
  %309 = load i32, i32* %8, align 4
  store i32 %309, i32* %4, align 4
  br label %433

310:                                              ; preds = %299
  br label %311

311:                                              ; preds = %310, %294
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 2
  br i1 %315, label %321, label %316

316:                                              ; preds = %311
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 3
  br i1 %320, label %321, label %333

321:                                              ; preds = %316, %311
  %322 = load i8*, i8** %11, align 8
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 3
  %325 = call i32 @x509_get_uid(i8** %10, i8* %322, i32* %324, i32 2)
  store i32 %325, i32* %8, align 4
  %326 = load i32, i32* %8, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %330 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %329)
  %331 = load i32, i32* %8, align 4
  store i32 %331, i32* %4, align 4
  br label %433

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332, %316
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 3
  br i1 %337, label %338, label %349

338:                                              ; preds = %333
  %339 = load i8*, i8** %11, align 8
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %341 = call i32 @x509_get_crt_ext(i8** %10, i8* %339, %struct.TYPE_19__* %340)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %338
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %346 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %345)
  %347 = load i32, i32* %8, align 4
  store i32 %347, i32* %4, align 4
  br label %433

348:                                              ; preds = %338
  br label %349

349:                                              ; preds = %348, %333
  %350 = load i8*, i8** %10, align 8
  %351 = load i8*, i8** %11, align 8
  %352 = icmp ne i8* %350, %351
  br i1 %352, label %353, label %359

353:                                              ; preds = %349
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %355 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %354)
  %356 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %357 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %358 = add nsw i32 %356, %357
  store i32 %358, i32* %4, align 4
  br label %433

359:                                              ; preds = %349
  %360 = load i8*, i8** %12, align 8
  store i8* %360, i8** %11, align 8
  %361 = load i8*, i8** %11, align 8
  %362 = call i32 @mbedtls_x509_get_alg(i8** %10, i8* %361, %struct.TYPE_20__* %15, %struct.TYPE_20__* %14)
  store i32 %362, i32* %8, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %366 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %365)
  %367 = load i32, i32* %8, align 4
  store i32 %367, i32* %4, align 4
  br label %433

368:                                              ; preds = %359
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %372, %374
  br i1 %375, label %408, label %376

376:                                              ; preds = %368
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = call i64 @memcmp(i32 %380, i32 %382, i64 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %408, label %389

389:                                              ; preds = %376
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %391, %393
  br i1 %394, label %408, label %395

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %412

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = call i64 @memcmp(i32 %401, i32 %403, i64 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %399, %389, %376, %368
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %410 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %409)
  %411 = load i32, i32* @MBEDTLS_ERR_X509_SIG_MISMATCH, align 4
  store i32 %411, i32* %4, align 4
  br label %433

412:                                              ; preds = %399, %395
  %413 = load i8*, i8** %11, align 8
  %414 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 1
  %416 = call i32 @mbedtls_x509_get_sig(i8** %10, i8* %413, i32* %415)
  store i32 %416, i32* %8, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %412
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %420 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %419)
  %421 = load i32, i32* %8, align 4
  store i32 %421, i32* %4, align 4
  br label %433

422:                                              ; preds = %412
  %423 = load i8*, i8** %10, align 8
  %424 = load i8*, i8** %11, align 8
  %425 = icmp ne i8* %423, %424
  br i1 %425, label %426, label %432

426:                                              ; preds = %422
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %428 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_19__* %427)
  %429 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %430 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %431 = add nsw i32 %429, %430
  store i32 %431, i32* %4, align 4
  br label %433

432:                                              ; preds = %422
  store i32 0, i32* %4, align 4
  br label %433

433:                                              ; preds = %432, %426, %418, %408, %364, %353, %344, %328, %306, %285, %263, %246, %231, %207, %193, %178, %163, %150, %111, %79, %50, %38, %24
  %434 = load i32, i32* %4, align 4
  ret i32 %434
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_x509_crt_free(%struct.TYPE_19__*) #1

declare dso_local i8* @mbedtls_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @x509_get_version(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_serial(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_alg(i8**, i8*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mbedtls_x509_get_sig_alg(%struct.TYPE_20__*, %struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_name(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_dates(i8**, i8*, i32*, i32*) #1

declare dso_local i32 @mbedtls_pk_parse_subpubkey(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_uid(i8**, i8*, i32*, i32) #1

declare dso_local i32 @x509_get_crt_ext(i8**, i8*, %struct.TYPE_19__*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @mbedtls_x509_get_sig(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
