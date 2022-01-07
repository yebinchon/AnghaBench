; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_sig_alg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_sig_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_NULL = common dso_local global i64 0, align 8
@MBEDTLS_ERR_X509_INVALID_ALG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_PK_RSASSA_PSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_sig_alg(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i8**, i8*** %11, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %17, i32* %6, align 4
  br label %47

18:                                               ; preds = %5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = call i32 @mbedtls_oid_get_sig_alg(%struct.TYPE_9__* %19, i32* %20, i64* %21)
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG, align 4
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  br label %47

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MBEDTLS_ASN1_NULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44, %24, %16
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @mbedtls_oid_get_sig_alg(%struct.TYPE_9__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
