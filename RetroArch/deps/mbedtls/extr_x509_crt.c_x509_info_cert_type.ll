; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_info_cert_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_info_cert_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MBEDTLS_X509_NS_CERT_TYPE_SSL_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SSL Client\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_SSL_SERVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL Server\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_EMAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Email\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Object Signing\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_RESERVED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_SSL_CA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"SSL CA\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_EMAIL_CA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"Email CA\00", align 1
@MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING_CA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Object Signing CA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8)* @x509_info_cert_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_cert_type(i8** %0, i64* %1, i8 zeroext %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8 %2, i8* %6, align 1
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_SSL_CLIENT, align 4
  %16 = call i32 @CERT_TYPE(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_SSL_SERVER, align 4
  %18 = call i32 @CERT_TYPE(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_EMAIL, align 4
  %20 = call i32 @CERT_TYPE(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING, align 4
  %22 = call i32 @CERT_TYPE(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_RESERVED, align 4
  %24 = call i32 @CERT_TYPE(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_SSL_CA, align 4
  %26 = call i32 @CERT_TYPE(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_EMAIL_CA, align 4
  %28 = call i32 @CERT_TYPE(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %29 = load i32, i32* @MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING_CA, align 4
  %30 = call i32 @CERT_TYPE(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i64, i64* %8, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8**, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  ret i32 0
}

declare dso_local i32 @CERT_TYPE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
