; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_finish.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 (i8*, i64, i64*)*, i32, i32, i32, %struct.TYPE_8__*, i32 (i32, i32, i64)* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i64, i64, i32, i32, i8*)* }

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_MODE_CFB = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CTR = common dso_local global i64 0, align 8
@MBEDTLS_MODE_GCM = common dso_local global i64 0, align 8
@MBEDTLS_MODE_STREAM = common dso_local global i64 0, align 8
@MBEDTLS_MODE_ECB = common dso_local global i64 0, align 8
@MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_DECRYPT = common dso_local global i64 0, align 8
@MBEDTLS_ENCRYPT = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CBC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_finish(%struct.TYPE_9__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = icmp eq %struct.TYPE_9__* null, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp eq %struct.TYPE_8__* null, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %10, %3
  %19 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %15
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* @MBEDTLS_MODE_CFB, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %20
  %30 = load i64, i64* @MBEDTLS_MODE_CTR, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %30, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* @MBEDTLS_MODE_GCM, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* @MBEDTLS_MODE_STREAM, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37, %29, %20
  store i32 0, i32* %4, align 4
  br label %73

54:                                               ; preds = %45
  %55 = load i64, i64* @MBEDTLS_MODE_ECB, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED, align 4
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %73

70:                                               ; preds = %54
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* @MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %69, %67, %53, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
