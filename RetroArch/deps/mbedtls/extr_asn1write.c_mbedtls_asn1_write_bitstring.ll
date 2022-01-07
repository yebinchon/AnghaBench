; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_bitstring.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_bitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_BIT_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_bitstring(i8** %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = udiv i64 %13, 8
  %15 = load i64, i64* %9, align 8
  %16 = urem i64 %15, 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = sext i32 %19 to i64
  %21 = add i64 %14, %20
  store i64 %21, i64* %12, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %33, 1
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %4
  %37 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %37, i32* %5, align 4
  br label %73

38:                                               ; preds = %26
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = sub i64 0, %41
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %42, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @memcpy(i8* %47, i8* %48, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = mul i64 %51, 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %56, align 8
  store i8 %55, i8* %58, align 1
  %59 = load i64, i64* %11, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @mbedtls_asn1_write_len(i8** %60, i8* %61, i64 %62)
  %64 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %59, i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @MBEDTLS_ASN1_BIT_STRING, align 4
  %69 = call i32 @mbedtls_asn1_write_tag(i8** %66, i8* %67, i32 %68)
  %70 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %65, i32 %69)
  %71 = load i64, i64* %11, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %38, %36
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
