; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_ecdsa_signature_to_asn1.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_ecdsa_signature_to_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ECDSA_MAX_LEN = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64*)* @ecdsa_signature_to_asn1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_signature_to_asn1(i32* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i32, i32* @MBEDTLS_ECDSA_MAX_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 %15
  store i8* %18, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @mbedtls_asn1_write_mpi(i8** %12, i8* %17, i32* %20)
  %22 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %19, i32 %21)
  %23 = load i64, i64* %13, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @mbedtls_asn1_write_mpi(i8** %12, i8* %17, i32* %24)
  %26 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %23, i32 %25)
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @mbedtls_asn1_write_len(i8** %12, i8* %17, i64 %28)
  %30 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %27, i32 %29)
  %31 = load i64, i64* %13, align 8
  %32 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %33 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mbedtls_asn1_write_tag(i8** %12, i8* %17, i32 %34)
  %36 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %31, i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i64, i64* %13, align 8
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #2

declare dso_local i32 @mbedtls_asn1_write_mpi(i8**, i8*, i32*) #2

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #2

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
