; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_csr.c_mbedtls_x509write_csr_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_csr.c_mbedtls_x509write_csr_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MBEDTLS_MPI_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SET = common dso_local global i32 0, align 4
@MBEDTLS_OID_PKCS9_CSR_EXT_REQ = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_PK_ECKEY = common dso_local global i64 0, align 8
@MBEDTLS_PK_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_der(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 (i8*, i8*, i64)* %3, i8* %4) #0 {
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
  %26 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %14, align 8
  %27 = load i32, i32* @MBEDTLS_MPI_MAX_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %18, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %24, align 8
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 2048
  store i8* %32, i8** %15, align 8
  %33 = load i64, i64* %24, align 8
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mbedtls_x509_write_extensions(i8** %15, i8* %34, i32 %37)
  %39 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %33, i32 %38)
  %40 = load i64, i64* %24, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %5
  %43 = load i64, i64* %24, align 8
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %45 = load i64, i64* %24, align 8
  %46 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %44, i64 %45)
  %47 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %43, i32 %46)
  %48 = load i64, i64* %24, align 8
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %50 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %51 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %49, i32 %52)
  %54 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %48, i32 %53)
  %55 = load i64, i64* %24, align 8
  %56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %57 = load i64, i64* %24, align 8
  %58 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %56, i64 %57)
  %59 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %55, i32 %58)
  %60 = load i64, i64* %24, align 8
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %62 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %63 = load i32, i32* @MBEDTLS_ASN1_SET, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %61, i32 %64)
  %66 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %60, i32 %65)
  %67 = load i64, i64* %24, align 8
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %69 = load i32, i32* @MBEDTLS_OID_PKCS9_CSR_EXT_REQ, align 4
  %70 = load i32, i32* @MBEDTLS_OID_PKCS9_CSR_EXT_REQ, align 4
  %71 = call i32 @MBEDTLS_OID_SIZE(i32 %70)
  %72 = call i32 @mbedtls_asn1_write_oid(i8** %15, i8* %68, i32 %69, i32 %71)
  %73 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %67, i32 %72)
  %74 = load i64, i64* %24, align 8
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %76 = load i64, i64* %24, align 8
  %77 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %75, i64 %76)
  %78 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %74, i32 %77)
  %79 = load i64, i64* %24, align 8
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %81 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %82 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %80, i32 %83)
  %85 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %79, i32 %84)
  br label %86

86:                                               ; preds = %42, %5
  %87 = load i64, i64* %24, align 8
  %88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %89 = load i64, i64* %24, align 8
  %90 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %88, i64 %89)
  %91 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %87, i32 %90)
  %92 = load i64, i64* %24, align 8
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %94 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %95 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %93, i32 %96)
  %98 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %92, i32 %97)
  %99 = load i64, i64* %21, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @mbedtls_pk_write_pubkey_der(i32 %102, i8* %103, i32 %109)
  %111 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %99, i32 %110)
  %112 = load i64, i64* %21, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = sub i64 0, %112
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %15, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %24, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %24, align 8
  %119 = load i64, i64* %24, align 8
  %120 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mbedtls_x509_write_names(i8** %15, i8* %120, i32 %123)
  %125 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %119, i32 %124)
  %126 = load i64, i64* %24, align 8
  %127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %128 = call i32 @mbedtls_asn1_write_int(i8** %15, i8* %127, i32 0)
  %129 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %126, i32 %128)
  %130 = load i64, i64* %24, align 8
  %131 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %132 = load i64, i64* %24, align 8
  %133 = call i32 @mbedtls_asn1_write_len(i8** %15, i8* %131, i64 %132)
  %134 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %130, i32 %133)
  %135 = load i64, i64* %24, align 8
  %136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %137 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %138 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @mbedtls_asn1_write_tag(i8** %15, i8* %136, i32 %139)
  %141 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %135, i32 %140)
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mbedtls_md_info_from_type(i32 %144)
  %146 = load i8*, i8** %15, align 8
  %147 = load i64, i64* %24, align 8
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %149 = call i32 @mbedtls_md(i32 %145, i8* %146, i64 %147, i8* %148)
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @mbedtls_pk_get_type(i32 %152)
  store i64 %153, i64* %25, align 8
  %154 = load i64, i64* %25, align 8
  %155 = load i64, i64* @MBEDTLS_PK_ECKEY, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %86
  %158 = load i64, i64* @MBEDTLS_PK_ECDSA, align 8
  store i64 %158, i64* %25, align 8
  br label %159

159:                                              ; preds = %157, %86
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %167 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @mbedtls_pk_sign(i32 %162, i32 %165, i8* %166, i32 0, i8* %30, i64* %23, i32 (i8*, i8*, i64)* %167, i8* %168)
  store i32 %169, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %159
  %172 = load i64, i64* %25, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @mbedtls_oid_get_oid_by_sig_alg(i64 %172, i32 %175, i8** %13, i64* %14)
  store i32 %176, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171, %159
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %226

180:                                              ; preds = %171
  %181 = load i8*, i8** %8, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %16, align 8
  %184 = load i64, i64* %22, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %23, align 8
  %189 = call i32 @mbedtls_x509_write_sig(i8** %16, i8* %185, i8* %186, i64 %187, i8* %30, i64 %188)
  %190 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %184, i32 %189)
  %191 = load i64, i64* %24, align 8
  %192 = load i8*, i8** %16, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = icmp ugt i64 %191, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %180
  %199 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %199, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %226

200:                                              ; preds = %180
  %201 = load i64, i64* %24, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = sub i64 0, %201
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %16, align 8
  %205 = load i8*, i8** %16, align 8
  %206 = load i8*, i8** %15, align 8
  %207 = load i64, i64* %24, align 8
  %208 = call i32 @memcpy(i8* %205, i8* %206, i64 %207)
  %209 = load i64, i64* %22, align 8
  %210 = load i64, i64* %24, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %24, align 8
  %212 = load i64, i64* %24, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = load i64, i64* %24, align 8
  %215 = call i32 @mbedtls_asn1_write_len(i8** %16, i8* %213, i64 %214)
  %216 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %212, i32 %215)
  %217 = load i64, i64* %24, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %220 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @mbedtls_asn1_write_tag(i8** %16, i8* %218, i32 %221)
  %223 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %217, i32 %222)
  %224 = load i64, i64* %24, align 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %226

226:                                              ; preds = %200, %198, %178
  %227 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #2

declare dso_local i32 @mbedtls_x509_write_extensions(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_asn1_write_oid(i8**, i8*, i32, i32) #2

declare dso_local i32 @MBEDTLS_OID_SIZE(i32) #2

declare dso_local i32 @mbedtls_pk_write_pubkey_der(i32, i8*, i32) #2

declare dso_local i32 @mbedtls_x509_write_names(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_asn1_write_int(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_md(i32, i8*, i64, i8*) #2

declare dso_local i32 @mbedtls_md_info_from_type(i32) #2

declare dso_local i64 @mbedtls_pk_get_type(i32) #2

declare dso_local i32 @mbedtls_pk_sign(i32, i32, i8*, i32, i8*, i64*, i32 (i8*, i8*, i64)*, i8*) #2

declare dso_local i32 @mbedtls_oid_get_oid_by_sig_alg(i64, i32, i8**, i64*) #2

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
