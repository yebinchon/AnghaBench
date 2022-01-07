; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_verify_wrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_verify_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MBEDTLS_ERR_RSA_VERIFY_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PUBLIC = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_SIG_LEN_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*, i64)* @rsa_verify_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_verify_wrap(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @MBEDTLS_ERR_RSA_VERIFY_FAILED, align 4
  store i32 %22, i32* %7, align 4
  br label %46

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_3__*
  %26 = load i32, i32* @MBEDTLS_RSA_PUBLIC, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @mbedtls_rsa_pkcs1_verify(%struct.TYPE_3__* %25, i32* null, i32* null, i32 %26, i64 %27, i32 %29, i8* %30, i8* %31)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %23
  %37 = load i64, i64* %13, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @MBEDTLS_ERR_PK_SIG_LEN_MISMATCH, align 4
  store i32 %44, i32* %7, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %43, %34, %21
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @mbedtls_rsa_pkcs1_verify(%struct.TYPE_3__*, i32*, i32*, i32, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
