; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_bool.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_BOOLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_bool(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %11 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp slt i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 255, i32 0
  %24 = trunc i32 %23 to i8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %27, i8** %25, align 8
  store i8 %24, i8* %27, align 1
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @mbedtls_asn1_write_len(i8** %31, i8* %32, i64 %33)
  %35 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %30, i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @MBEDTLS_ASN1_BOOLEAN, align 4
  %40 = call i32 @mbedtls_asn1_write_tag(i8** %37, i8* %38, i32 %39)
  %41 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %36, i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
