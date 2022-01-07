; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i8*, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i64, i64, i8*, i8*)*, i32 (i64, i64, i64, i32, i8*, i8*)*, i32 (i64, i64, i64, i64*, i32, i8*, i8*)*, i32 (i64, i64, i64*, i32, i8*, i8*, i8*)*, i32 (i64, i64, i8*, i8*)* }

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_MODE_ECB = common dso_local global i64 0, align 8
@MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_INVALID_CONTEXT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_DECRYPT = common dso_local global i64 0, align 8
@MBEDTLS_ENCRYPT = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CBC = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CFB = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CTR = common dso_local global i64 0, align 8
@MBEDTLS_MODE_GCM = common dso_local global i64 0, align 8
@MBEDTLS_MODE_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_update(%struct.TYPE_8__* %0, i8* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp eq %struct.TYPE_8__* null, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp eq %struct.TYPE_7__* null, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i64*, i64** %11, align 8
  %23 = icmp eq i64* null, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %16, %5
  %25 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %25, i32* %6, align 4
  br label %89

26:                                               ; preds = %21
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = call i64 @mbedtls_cipher_get_block_size(%struct.TYPE_8__* %28)
  store i64 %29, i64* %13, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MBEDTLS_MODE_ECB, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %26
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED, align 4
  store i32 %42, i32* %6, align 4
  br label %89

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64*, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (i64, i64, i8*, i8*)*, i32 (i64, i64, i8*, i8*)** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 %52(i64 %55, i64 %58, i8* %59, i8* %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp ne i32 0, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %89

65:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %89

66:                                               ; preds = %26
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 0, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @MBEDTLS_ERR_CIPHER_INVALID_CONTEXT, align 4
  store i32 %70, i32* %6, align 4
  br label %89

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %13, align 8
  %83 = urem i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %75
  %86 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %86, i32* %6, align 4
  br label %89

87:                                               ; preds = %80, %71
  %88 = load i32, i32* @MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %85, %69, %65, %63, %41, %24
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @mbedtls_cipher_get_block_size(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
