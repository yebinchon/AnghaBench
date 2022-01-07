; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_mbedtls_x509_write_sig.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_mbedtls_x509_write_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_BIT_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_write_sig(i8** %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %6
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %13, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20, %6
  %30 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %30, i32* %7, align 4
  br label %79

31:                                               ; preds = %20
  %32 = load i64, i64* %13, align 8
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = sub i64 0, %33
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %34, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp slt i64 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %51, i32* %7, align 4
  br label %79

52:                                               ; preds = %31
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %53, align 8
  store i8 0, i8* %55, align 1
  %56 = load i64, i64* %15, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @mbedtls_asn1_write_len(i8** %59, i8* %60, i64 %61)
  %63 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %58, i32 %62)
  %64 = load i64, i64* %15, align 8
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @MBEDTLS_ASN1_BIT_STRING, align 4
  %68 = call i32 @mbedtls_asn1_write_tag(i8** %65, i8* %66, i32 %67)
  %69 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %64, i32 %68)
  %70 = load i64, i64* %15, align 8
  %71 = load i8**, i8*** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @mbedtls_asn1_write_algorithm_identifier(i8** %71, i8* %72, i8* %73, i64 %74, i32 0)
  %76 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %70, i32 %75)
  %77 = load i64, i64* %15, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %52, %50, %29
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

declare dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8**, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
