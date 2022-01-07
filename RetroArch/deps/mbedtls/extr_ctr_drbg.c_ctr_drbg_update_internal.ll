; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_ctr_drbg_update_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_ctr_drbg_update_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@MBEDTLS_CTR_DRBG_SEEDLEN = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_BLOCKSIZE = common dso_local global i32 0, align 4
@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_KEYBITS = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @ctr_drbg_update_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_drbg_update_internal(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %56, %2
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %40, %22
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  br label %24

43:                                               ; preds = %38, %24
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @mbedtls_aes_crypt_ecb(i32* %45, i32 %46, i64* %49, i8* %50)
  %52 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %18

60:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %15, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = xor i32 %76, %71
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %61

82:                                               ; preds = %61
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYBITS, align 4
  %86 = call i32 @mbedtls_aes_setkey_enc(i32* %84, i8* %15, i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYSIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %15, i64 %91
  %93 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %94 = call i32 @memcpy(i64* %89, i8* %92, i32 %93)
  %95 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %95)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_aes_crypt_ecb(i32*, i32, i64*, i8*) #2

declare dso_local i32 @mbedtls_aes_setkey_enc(i32*, i8*, i32) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
