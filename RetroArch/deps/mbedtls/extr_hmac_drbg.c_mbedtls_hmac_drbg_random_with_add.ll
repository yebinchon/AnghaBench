; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_random_with_add.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_random_with_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }

@MBEDTLS_HMAC_DRBG_MAX_REQUEST = common dso_local global i64 0, align 8
@MBEDTLS_ERR_HMAC_DRBG_REQUEST_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_HMAC_DRBG_MAX_INPUT = common dso_local global i64 0, align 8
@MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_HMAC_DRBG_PR_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_random_with_add(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mbedtls_md_get_size(i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %16, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @MBEDTLS_HMAC_DRBG_MAX_REQUEST, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_REQUEST_TOO_BIG, align 4
  store i32 %31, i32* %6, align 4
  br label %128

32:                                               ; preds = %5
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @MBEDTLS_HMAC_DRBG_MAX_INPUT, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG, align 4
  store i32 %37, i32* %6, align 4
  br label %128

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MBEDTLS_HMAC_DRBG_PR_ON, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49, %43
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @mbedtls_hmac_drbg_reseed(%struct.TYPE_7__* %58, i8* %59, i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %128

65:                                               ; preds = %57
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %65, %49, %38
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @mbedtls_hmac_drbg_update(%struct.TYPE_7__* %73, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %69, %66
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* %14, align 8
  br label %89

87:                                               ; preds = %81
  %88 = load i64, i64* %15, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  store i64 %90, i64* %17, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = call i32 @mbedtls_md_hmac_reset(%struct.TYPE_8__* %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_8__* %95, i32 %98, i64 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mbedtls_md_hmac_finish(%struct.TYPE_8__* %102, i32 %105)
  %107 = load i8*, i8** %16, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @memcpy(i8* %107, i32 %110, i64 %111)
  %113 = load i64, i64* %17, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  store i8* %115, i8** %16, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load i64, i64* %15, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %15, align 8
  br label %78

119:                                              ; preds = %78
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @mbedtls_hmac_drbg_update(%struct.TYPE_7__* %120, i8* %121, i64 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %119, %63, %36, %30
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @mbedtls_md_get_size(i32) #1

declare dso_local i32 @mbedtls_hmac_drbg_reseed(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @mbedtls_hmac_drbg_update(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
