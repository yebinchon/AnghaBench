; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk.c_mbedtls_pk_verify_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk.c_mbedtls_pk_verify_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }

@MBEDTLS_ERR_PK_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_TYPE_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_PK_RSASSA_PSS = common dso_local global i64 0, align 8
@MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_SIG_LEN_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_RSA_VERIFY_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@MBEDTLS_RSA_PUBLIC = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_verify_ext(i64 %0, i8* %1, %struct.TYPE_9__* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %8
  %26 = load i32, i32* @MBEDTLS_ERR_PK_BAD_INPUT_DATA, align 4
  store i32 %26, i32* %9, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @mbedtls_pk_can_do(%struct.TYPE_9__* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @MBEDTLS_ERR_PK_TYPE_MISMATCH, align 4
  store i32 %33, i32* %9, align 4
  br label %53

34:                                               ; preds = %27
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @MBEDTLS_PK_RSASSA_PSS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE, align 4
  store i32 %39, i32* %9, align 4
  br label %53

40:                                               ; preds = %34
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @MBEDTLS_ERR_PK_BAD_INPUT_DATA, align 4
  store i32 %44, i32* %9, align 4
  br label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call i32 @mbedtls_pk_verify(%struct.TYPE_9__* %46, i64 %47, i8* %48, i64 %49, i8* %50, i64 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %43, %38, %32, %25
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @mbedtls_pk_can_do(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @mbedtls_pk_verify(%struct.TYPE_9__*, i64, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
