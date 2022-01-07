; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_set_authority_key_identifier.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_set_authority_key_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MBEDTLS_MPI_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_OID_AUTHORITY_KEY_IDENTIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_authority_key_identifier(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @MBEDTLS_MPI_MAX_SIZE, align 4
  %9 = mul nsw i32 %8, 2
  %10 = add nsw i32 %9, 20
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %11
  store i8* %14, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = trunc i64 %11 to i32
  %16 = call i32 @memset(i8* %13, i32 0, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mbedtls_pk_write_pubkey(i8** %6, i8* %13, i32 %20)
  %22 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %17, i32 %21)
  %23 = getelementptr inbounds i8, i8* %13, i64 %11
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %13, i64 %11
  %29 = getelementptr inbounds i8, i8* %28, i64 -20
  %30 = call i32 @mbedtls_sha1(i8* %26, i64 %27, i8* %29)
  %31 = getelementptr inbounds i8, i8* %13, i64 %11
  %32 = getelementptr inbounds i8, i8* %31, i64 -20
  store i8* %32, i8** %6, align 8
  store i64 20, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @mbedtls_asn1_write_len(i8** %6, i8* %13, i64 %34)
  %36 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %33, i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %39 = call i32 @mbedtls_asn1_write_tag(i8** %6, i8* %13, i32 %38)
  %40 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %37, i32 %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @mbedtls_asn1_write_len(i8** %6, i8* %13, i64 %42)
  %44 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %41, i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %47 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @mbedtls_asn1_write_tag(i8** %6, i8* %13, i32 %48)
  %50 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %45, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = load i32, i32* @MBEDTLS_OID_AUTHORITY_KEY_IDENTIFIER, align 4
  %53 = load i32, i32* @MBEDTLS_OID_AUTHORITY_KEY_IDENTIFIER, align 4
  %54 = call i32 @MBEDTLS_OID_SIZE(i32 %53)
  %55 = getelementptr inbounds i8, i8* %13, i64 %11
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @mbedtls_x509write_crt_set_extension(%struct.TYPE_4__* %51, i32 %52, i32 %54, i32 0, i8* %58, i64 %59)
  %61 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #2

declare dso_local i32 @mbedtls_pk_write_pubkey(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_sha1(i8*, i64, i8*) #2

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #2

declare dso_local i32 @mbedtls_x509write_crt_set_extension(%struct.TYPE_4__*, i32, i32, i32, i8*, i64) #2

declare dso_local i32 @MBEDTLS_OID_SIZE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
