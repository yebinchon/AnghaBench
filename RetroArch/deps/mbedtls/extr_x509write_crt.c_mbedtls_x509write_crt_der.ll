; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MBEDTLS_MPI_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_PK_ECKEY = common dso_local global i64 0, align 8
@MBEDTLS_PK_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_X509_RFC5280_UTC_TIME_LEN = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_der(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 (i8*, i8*, i64)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2048 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %14, align 8
  %28 = load i32, i32* @MBEDTLS_MPI_MAX_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %18, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %25, align 8
  %32 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 2048
  store i8* %33, i8** %15, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @mbedtls_pk_get_type(i32 %36)
  store i64 %37, i64* %26, align 8
  %38 = load i64, i64* %26, align 8
  %39 = load i64, i64* @MBEDTLS_PK_ECKEY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i64, i64* @MBEDTLS_PK_ECDSA, align 8
  store i64 %42, i64* %26, align 8
  br label %43

43:                                               ; preds = %41, %5
  %44 = load i64, i64* %26, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mbedtls_oid_get_oid_by_sig_alg(i64 %44, i32 %47, i8** %13, i64* %14)
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %264

52:                                               ; preds = %43
  %53 = load i64, i64* %25, align 8
  %54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mbedtls_x509_write_extensions(i8** %15, i8* %54, i32 %57)
  %59 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %53, i32 %58)
  %60 = load i64, i64* %25, align 8
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %62 = load i64, i64* %25, align 8
  %63 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %61, i64 %62)
  %64 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %60, i32 %63)
  %65 = load i64, i64* %25, align 8
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %67 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %68 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %66, i32 %69)
  %71 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %65, i32 %70)
  %72 = load i64, i64* %25, align 8
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %74 = load i64, i64* %25, align 8
  %75 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %73, i64 %74)
  %76 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %72, i32 %75)
  %77 = load i64, i64* %25, align 8
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %79 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %80 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %81 = or i32 %79, %80
  %82 = or i32 %81, 3
  %83 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %78, i32 %82)
  %84 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %77, i32 %83)
  %85 = load i64, i64* %22, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @mbedtls_pk_write_pubkey_der(i32 %88, i8* %89, i32 %95)
  %97 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %85, i32 %96)
  %98 = load i64, i64* %22, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = sub i64 0, %98
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %15, align 8
  %102 = load i64, i64* %22, align 8
  %103 = load i64, i64* %25, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %25, align 8
  %105 = load i64, i64* %25, align 8
  %106 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mbedtls_x509_write_names(i8** %15, i8* %106, i32 %109)
  %111 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %105, i32 %110)
  store i64 0, i64* %21, align 8
  %112 = load i64, i64* %21, align 8
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MBEDTLS_X509_RFC5280_UTC_TIME_LEN, align 4
  %118 = call i32 @x509_write_time(i8** %15, i8* %113, i32 %116, i32 %117)
  %119 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %112, i32 %118)
  %120 = load i64, i64* %21, align 8
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MBEDTLS_X509_RFC5280_UTC_TIME_LEN, align 4
  %126 = call i32 @x509_write_time(i8** %15, i8* %121, i32 %124, i32 %125)
  %127 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %120, i32 %126)
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %25, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %25, align 8
  %131 = load i64, i64* %25, align 8
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %133 = load i64, i64* %21, align 8
  %134 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %132, i64 %133)
  %135 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %131, i32 %134)
  %136 = load i64, i64* %25, align 8
  %137 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %138 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %139 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %137, i32 %140)
  %142 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %136, i32 %141)
  %143 = load i64, i64* %25, align 8
  %144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @mbedtls_x509_write_names(i8** %15, i8* %144, i32 %147)
  %149 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %143, i32 %148)
  %150 = load i64, i64* %25, align 8
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %152 = load i8*, i8** %13, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = call i32 @mbedtls_asn1_write_algorithm_identifier(i8** %15, i8* %151, i8* %152, i32 %154, i32 0)
  %156 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %150, i32 %155)
  %157 = load i64, i64* %25, align 8
  %158 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = call i32 @mbedtls_asn1_write_mpi(i8** %15, i8* %158, i32* %160)
  %162 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %157, i32 %161)
  store i64 0, i64* %21, align 8
  %163 = load i64, i64* %21, align 8
  %164 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @mbedtls_asn1_write_int(i8** %15, i8* %164, i32 %167)
  %169 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %163, i32 %168)
  %170 = load i64, i64* %21, align 8
  %171 = load i64, i64* %25, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %25, align 8
  %173 = load i64, i64* %25, align 8
  %174 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %175 = load i64, i64* %21, align 8
  %176 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %174, i64 %175)
  %177 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %173, i32 %176)
  %178 = load i64, i64* %25, align 8
  %179 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %180 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %181 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %179, i32 %182)
  %184 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %178, i32 %183)
  %185 = load i64, i64* %25, align 8
  %186 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %187 = load i64, i64* %25, align 8
  %188 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %186, i64 %187)
  %189 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %185, i32 %188)
  %190 = load i64, i64* %25, align 8
  %191 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %192 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %193 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %191, i32 %194)
  %196 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %190, i32 %195)
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @mbedtls_md_info_from_type(i32 %199)
  %201 = load i8*, i8** %15, align 8
  %202 = load i64, i64* %25, align 8
  %203 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %204 = call i32 @mbedtls_md(i32 %200, i8* %201, i64 %202, i8* %203)
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %212 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = call i32 @mbedtls_pk_sign(i32 %207, i32 %210, i8* %211, i32 0, i8* %31, i64* %24, i32 (i8*, i8*, i64)* %212, i8* %213)
  store i32 %214, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %52
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %264

218:                                              ; preds = %52
  %219 = load i8*, i8** %8, align 8
  %220 = load i64, i64* %9, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %16, align 8
  %222 = load i64, i64* %23, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i64, i64* %14, align 8
  %226 = load i64, i64* %24, align 8
  %227 = call i32 @mbedtls_x509_write_sig(i8** %16, i8* %223, i8* %224, i64 %225, i8* %31, i64 %226)
  %228 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %222, i32 %227)
  %229 = load i64, i64* %25, align 8
  %230 = load i8*, i8** %16, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = ptrtoint i8* %230 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = icmp ugt i64 %229, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %218
  %237 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %237, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %264

238:                                              ; preds = %218
  %239 = load i64, i64* %25, align 8
  %240 = load i8*, i8** %16, align 8
  %241 = sub i64 0, %239
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  store i8* %242, i8** %16, align 8
  %243 = load i8*, i8** %16, align 8
  %244 = load i8*, i8** %15, align 8
  %245 = load i64, i64* %25, align 8
  %246 = call i32 @memcpy(i8* %243, i8* %244, i64 %245)
  %247 = load i64, i64* %23, align 8
  %248 = load i64, i64* %25, align 8
  %249 = add i64 %248, %247
  store i64 %249, i64* %25, align 8
  %250 = load i64, i64* %25, align 8
  %251 = load i8*, i8** %8, align 8
  %252 = load i64, i64* %25, align 8
  %253 = call i32 @mbedtls_asn1_write_len(i8** %16, i8* %251, i64 %252)
  %254 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %250, i32 %253)
  %255 = load i64, i64* %25, align 8
  %256 = load i8*, i8** %8, align 8
  %257 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %258 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @mbedtls_asn1_write_tag(i8** %16, i8* %256, i32 %259)
  %261 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %255, i32 %260)
  %262 = load i64, i64* %25, align 8
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %264

264:                                              ; preds = %238, %236, %216, %50
  %265 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %6, align 4
  ret i32 %266
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mbedtls_pk_get_type(i32) #2

declare dso_local i32 @mbedtls_oid_get_oid_by_sig_alg(i64, i32, i8**, i64*) #2

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #2

declare dso_local i32 @mbedtls_x509_write_extensions(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_pk_write_pubkey_der(i32, i8*, i32) #2

declare dso_local i32 @mbedtls_x509_write_names(i8**, i8*, i32) #2

declare dso_local i32 @x509_write_time(i8**, i8*, i32, i32) #2

declare dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8**, i8*, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mbedtls_asn1_write_mpi(i8**, i8*, i32*) #2

declare dso_local i32 @mbedtls_asn1_write_int(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_md(i32, i8*, i64, i8*) #2

declare dso_local i32 @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_pk_sign(i32, i32, i8*, i32, i8*, i64*, i32 (i8*, i8*, i64)*, i8*) #2

declare dso_local i32 @mbedtls_x509_write_sig(i8**, i8*, i8*, i64, i8*, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
