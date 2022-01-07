; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_csr.c_mbedtls_x509_csr_parse_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_csr.c_mbedtls_x509_csr_parse_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_csr_parse_der(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %23, i32* %4, align 4
  br label %250

24:                                               ; preds = %19
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = call i32 @mbedtls_x509_csr_init(%struct.TYPE_11__* %25)
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %9, align 8
  %28 = call i8* @mbedtls_calloc(i32 1, i64 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @MBEDTLS_ERR_X509_ALLOC_FAILED, align 4
  store i32 %32, i32* %4, align 4
  br label %250

33:                                               ; preds = %24
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i8* %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %51 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %49, i64* %9, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %56)
  %58 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  store i32 %58, i32* %4, align 4
  br label %250

59:                                               ; preds = %33
  %60 = load i64, i64* %9, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %68)
  %70 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %71 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %4, align 4
  br label %250

73:                                               ; preds = %59
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 10
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %80 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %78, i64* %9, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %85)
  %87 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %4, align 4
  br label %250

90:                                               ; preds = %73
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %94 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 10
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = call i32 @x509_csr_get_version(i8** %10, i8* %106, i32* %108)
  store i32 %109, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %90
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %250

115:                                              ; preds = %90
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %125)
  %127 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_VERSION, align 4
  store i32 %127, i32* %4, align 4
  br label %250

128:                                              ; preds = %115
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %135 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %133, i64* %9, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %140)
  %142 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %4, align 4
  br label %250

145:                                              ; preds = %128
  %146 = load i8*, i8** %10, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 9
  %151 = call i32 @mbedtls_x509_get_name(i8** %10, i8* %148, i32* %150)
  store i32 %151, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %250

157:                                              ; preds = %145
  %158 = load i8*, i8** %10, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %158 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 7
  %173 = call i32 @mbedtls_pk_parse_subpubkey(i8** %10, i8* %170, i32* %172)
  store i32 %173, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %157
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %176)
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  br label %250

179:                                              ; preds = %157
  %180 = load i8*, i8** %11, align 8
  %181 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %182 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %180, i64* %9, i32 %183)
  store i32 %184, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %179
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %187)
  %189 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %189, %190
  store i32 %191, i32* %4, align 4
  br label %250

192:                                              ; preds = %179
  %193 = load i64, i64* %9, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 %193
  store i8* %195, i8** %10, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %199, i64 %203
  store i8* %204, i8** %11, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 5
  %208 = call i32 @mbedtls_x509_get_alg(i8** %10, i8* %205, i32* %207, i32* %12)
  store i32 %208, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %192
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %211)
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %4, align 4
  br label %250

214:                                              ; preds = %192
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = call i32 @mbedtls_x509_get_sig_alg(i32* %216, i32* %12, i32* %218, i32* %220, i32* %222)
  store i32 %223, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %214
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %227 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %226)
  %228 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG, align 4
  store i32 %228, i32* %4, align 4
  br label %250

229:                                              ; preds = %214
  %230 = load i8*, i8** %11, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = call i32 @mbedtls_x509_get_sig(i8** %10, i8* %230, i32* %232)
  store i32 %233, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %237 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %236)
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %4, align 4
  br label %250

239:                                              ; preds = %229
  %240 = load i8*, i8** %10, align 8
  %241 = load i8*, i8** %11, align 8
  %242 = icmp ne i8* %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %245 = call i32 @mbedtls_x509_csr_free(%struct.TYPE_11__* %244)
  %246 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_FORMAT, align 4
  %247 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %248 = add nsw i32 %246, %247
  store i32 %248, i32* %4, align 4
  br label %250

249:                                              ; preds = %239
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %249, %243, %235, %225, %210, %186, %175, %153, %139, %124, %111, %84, %67, %55, %31, %22
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mbedtls_x509_csr_init(%struct.TYPE_11__*) #1

declare dso_local i8* @mbedtls_calloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_x509_csr_free(%struct.TYPE_11__*) #1

declare dso_local i32 @x509_csr_get_version(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_name(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_pk_parse_subpubkey(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_alg(i8**, i8*, i32*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_sig_alg(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_sig(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
