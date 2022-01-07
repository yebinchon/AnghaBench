; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_set_basic_constraints.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_set_basic_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_OID_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_basic_constraints(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [9 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %13 = getelementptr inbounds i8, i8* %12, i64 9
  store i8* %13, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 9)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 127
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mbedtls_asn1_write_int(i8** %10, i8* %31, i32 %32)
  %34 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %38 = call i32 @mbedtls_asn1_write_bool(i8** %10, i8* %37, i32 1)
  %39 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %23
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @mbedtls_asn1_write_len(i8** %10, i8* %42, i64 %43)
  %45 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %41, i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %49 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @mbedtls_asn1_write_tag(i8** %10, i8* %47, i32 %50)
  %52 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %46, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @MBEDTLS_OID_BASIC_CONSTRAINTS, align 4
  %55 = load i32, i32* @MBEDTLS_OID_BASIC_CONSTRAINTS, align 4
  %56 = call i32 @MBEDTLS_OID_SIZE(i32 %55)
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 9
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @mbedtls_x509write_crt_set_extension(i32* %53, i32 %54, i32 %56, i32 0, i8* %61, i64 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %40, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_int(i8**, i8*, i32) #1

declare dso_local i32 @mbedtls_asn1_write_bool(i8**, i8*, i32) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

declare dso_local i32 @mbedtls_x509write_crt_set_extension(i32*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @MBEDTLS_OID_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
