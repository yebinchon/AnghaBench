; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_mbedtls_ctr_drbg_random_with_add.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_mbedtls_ctr_drbg_random_with_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64*, i32, i64 }

@MBEDTLS_CTR_DRBG_SEEDLEN = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_BLOCKSIZE = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_MAX_REQUEST = common dso_local global i64 0, align 8
@MBEDTLS_ERR_CTR_DRBG_REQUEST_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_MAX_INPUT = common dso_local global i64 0, align 8
@MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_random_with_add(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %13, align 8
  %23 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @MBEDTLS_CTR_DRBG_MAX_REQUEST, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @MBEDTLS_ERR_CTR_DRBG_REQUEST_TOO_BIG, align 4
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %135

36:                                               ; preds = %5
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MBEDTLS_CTR_DRBG_MAX_INPUT, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %135

42:                                               ; preds = %36
  %43 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %44 = call i32 @memset(i8* %26, i32 0, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52, %42
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @mbedtls_ctr_drbg_reseed(%struct.TYPE_4__* %58, i8* %59, i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %135

65:                                               ; preds = %57
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i64, i64* %11, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @block_cipher_df(i8* %26, i8* %70, i64 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %74 = call i32 @ctr_drbg_update_internal(%struct.TYPE_4__* %73, i8* %26)
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %117, %75
  %77 = load i64, i64* %9, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %76
  %80 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %97, %79
  %82 = load i32, i32* %18, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %100

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %18, align 4
  br label %81

100:                                              ; preds = %95, %81
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @mbedtls_aes_crypt_ecb(i32* %102, i32 %103, i64* %106, i8* %30)
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %114 = sext i32 %113 to i64
  br label %117

115:                                              ; preds = %100
  %116 = load i64, i64* %9, align 8
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi i64 [ %114, %112 ], [ %116, %115 ]
  store i64 %118, i64* %19, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = load i64, i64* %19, align 8
  %121 = call i32 @memcpy(i8* %119, i8* %30, i64 %120)
  %122 = load i64, i64* %19, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %16, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %9, align 8
  br label %76

128:                                              ; preds = %76
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %130 = call i32 @ctr_drbg_update_internal(%struct.TYPE_4__* %129, i8* %26)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %135

135:                                              ; preds = %128, %63, %40, %34
  %136 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_ctr_drbg_reseed(%struct.TYPE_4__*, i8*, i64) #2

declare dso_local i32 @block_cipher_df(i8*, i8*, i64) #2

declare dso_local i32 @ctr_drbg_update_internal(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @mbedtls_aes_crypt_ecb(i32*, i32, i64*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
