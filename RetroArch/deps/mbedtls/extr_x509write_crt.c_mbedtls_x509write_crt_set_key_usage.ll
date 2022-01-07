; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_set_key_usage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_set_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_OID_KEY_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_key_usage(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -255
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE, align 4
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %21 = call i32 @mbedtls_asn1_write_bitstring(i8** %8, i8* %20, i8* %7, i32 7)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %15
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @MBEDTLS_OID_KEY_USAGE, align 4
  %28 = load i32, i32* @MBEDTLS_OID_KEY_USAGE, align 4
  %29 = call i32 @MBEDTLS_OID_SIZE(i32 %28)
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %31 = call i32 @mbedtls_x509write_crt_set_extension(i32* %26, i32 %27, i32 %29, i32 1, i8* %30, i32 4)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %23, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mbedtls_asn1_write_bitstring(i8**, i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_x509write_crt_set_extension(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MBEDTLS_OID_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
