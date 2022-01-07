; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_algorithm_identifier.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_algorithm_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8** %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i64, i64* %12, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @mbedtls_asn1_write_null(i8** %17, i8* %18)
  %20 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %16, i32 %19)
  br label %25

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i64, i64* %12, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @mbedtls_asn1_write_oid(i8** %27, i8* %28, i8* %29, i64 %30)
  %32 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %26, i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @mbedtls_asn1_write_len(i8** %34, i8* %35, i64 %36)
  %38 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %33, i32 %37)
  %39 = load i64, i64* %12, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %43 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @mbedtls_asn1_write_tag(i8** %40, i8* %41, i32 %44)
  %46 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %39, i32 %45)
  %47 = load i64, i64* %12, align 8
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_null(i8**, i8*) #1

declare dso_local i32 @mbedtls_asn1_write_oid(i8**, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
