; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_alt_check_pair.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_alt_check_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_MPI_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_RSA_KEY_CHECK_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_MD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rsa_alt_check_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_check_pair(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MBEDTLS_MPI_MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @rsa_alt_get_bitlen(i8* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @rsa_get_bitlen(i8* %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_CHECK_FAILED, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

23:                                               ; preds = %2
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 42, i32 32)
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @MBEDTLS_MD_NONE, align 4
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %29 = call i32 @rsa_alt_sign_wrap(i8* %26, i32 %27, i8* %28, i32 32, i8* %15, i64* %9, i32* null, i32* null)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

33:                                               ; preds = %23
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @MBEDTLS_MD_NONE, align 4
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @rsa_verify_wrap(i8* %34, i32 %35, i8* %36, i32 32, i8* %15, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_CHECK_FAILED, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %40, %31, %21
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rsa_alt_get_bitlen(i8*) #2

declare dso_local i64 @rsa_get_bitlen(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @rsa_alt_sign_wrap(i8*, i32, i8*, i32, i8*, i64*, i32*, i32*) #2

declare dso_local i64 @rsa_verify_wrap(i8*, i32, i8*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
