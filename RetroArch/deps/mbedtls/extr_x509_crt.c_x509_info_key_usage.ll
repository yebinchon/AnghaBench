; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_info_key_usage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_info_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MBEDTLS_X509_KU_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Digital Signature\00", align 1
@MBEDTLS_X509_KU_NON_REPUDIATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Non Repudiation\00", align 1
@MBEDTLS_X509_KU_KEY_ENCIPHERMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Key Encipherment\00", align 1
@MBEDTLS_X509_KU_DATA_ENCIPHERMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Data Encipherment\00", align 1
@MBEDTLS_X509_KU_KEY_AGREEMENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Key Agreement\00", align 1
@MBEDTLS_X509_KU_KEY_CERT_SIGN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Key Cert Sign\00", align 1
@MBEDTLS_X509_KU_CRL_SIGN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"CRL Sign\00", align 1
@MBEDTLS_X509_KU_ENCIPHER_ONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Encipher Only\00", align 1
@MBEDTLS_X509_KU_DECIPHER_ONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"Decipher Only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32)* @x509_info_key_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_key_usage(i8** %0, i64* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load i32, i32* @MBEDTLS_X509_KU_DIGITAL_SIGNATURE, align 4
  %16 = call i32 @KEY_USAGE(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @MBEDTLS_X509_KU_NON_REPUDIATION, align 4
  %18 = call i32 @KEY_USAGE(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @MBEDTLS_X509_KU_KEY_ENCIPHERMENT, align 4
  %20 = call i32 @KEY_USAGE(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @MBEDTLS_X509_KU_DATA_ENCIPHERMENT, align 4
  %22 = call i32 @KEY_USAGE(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* @MBEDTLS_X509_KU_KEY_AGREEMENT, align 4
  %24 = call i32 @KEY_USAGE(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* @MBEDTLS_X509_KU_KEY_CERT_SIGN, align 4
  %26 = call i32 @KEY_USAGE(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* @MBEDTLS_X509_KU_CRL_SIGN, align 4
  %28 = call i32 @KEY_USAGE(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %29 = load i32, i32* @MBEDTLS_X509_KU_ENCIPHER_ONLY, align 4
  %30 = call i32 @KEY_USAGE(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i32, i32* @MBEDTLS_X509_KU_DECIPHER_ONLY, align 4
  %32 = call i32 @KEY_USAGE(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i64, i64* %8, align 8
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8**, i8*** %4, align 8
  store i8* %35, i8** %36, align 8
  ret i32 0
}

declare dso_local i32 @KEY_USAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
