; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_rsa.c_test_cert.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_rsa.c_test_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"parse cert\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"check cert pubkey\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pki_input = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"RSA PK operation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @test_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cert(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %9, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @bzero(i8* %13, i64 %14)
  %16 = call i32 @mbedtls_x509_crt_init(%struct.TYPE_6__* %7)
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %20, 1
  %22 = call i32 @mbedtls_x509_crt_parse(%struct.TYPE_6__* %7, i32* %18, i64 %21)
  %23 = sub nsw i32 0, %22
  %24 = call i32 @TEST_ASSERT_EQUAL_HEX16_MESSAGE(i32 0, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @mbedtls_pk_rsa(i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @TEST_ASSERT_NOT_NULL(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @mbedtls_rsa_check_pubkey(i32* %30)
  %32 = sub nsw i32 0, %31
  %33 = call i32 @TEST_ASSERT_EQUAL_HEX16_MESSAGE(i32 0, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %34 = trunc i64 %11 to i32
  %35 = call i32 @mbedtls_x509_crt_info(i8* %13, i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %7)
  %36 = call i32 @puts(i8* %13)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @pki_input, align 4
  %39 = bitcast i8* %13 to i32*
  %40 = call i32 @mbedtls_rsa_public(i32* %37, i32 %38, i32* %39)
  %41 = sub nsw i32 0, %40
  %42 = call i32 @TEST_ASSERT_EQUAL_HEX16_MESSAGE(i32 0, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @TEST_ASSERT_EQUAL_HEX8_ARRAY(i32* %43, i8* %13, i64 %44)
  %46 = call i32 @mbedtls_x509_crt_free(%struct.TYPE_6__* %7)
  %47 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8*, i64) #2

declare dso_local i32 @mbedtls_x509_crt_init(%struct.TYPE_6__*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX16_MESSAGE(i32, i32, i8*) #2

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.TYPE_6__*, i32*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @mbedtls_pk_rsa(i32) #2

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #2

declare dso_local i32 @mbedtls_rsa_check_pubkey(i32*) #2

declare dso_local i32 @mbedtls_x509_crt_info(i8*, i32, i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @mbedtls_rsa_public(i32*, i32, i32*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8_ARRAY(i32*, i8*, i64) #2

declare dso_local i32 @mbedtls_x509_crt_free(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
