; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_octet_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_octet_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_octet_string(i8** %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @mbedtls_asn1_write_raw_buffer(i8** %12, i8* %13, i8* %14, i64 %15)
  %17 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %11, i32 %16)
  %18 = load i64, i64* %10, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @mbedtls_asn1_write_len(i8** %19, i8* %20, i64 %21)
  %23 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %18, i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %28 = call i32 @mbedtls_asn1_write_tag(i8** %25, i8* %26, i32 %27)
  %29 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %24, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_raw_buffer(i8**, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
