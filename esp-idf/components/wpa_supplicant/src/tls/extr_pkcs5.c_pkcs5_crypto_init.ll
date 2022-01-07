; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs5.c_pkcs5_crypto_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs5.c_pkcs5_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.pkcs5_params = type { i64, i64, i32, i32* }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@PKCS5_ALG_MD5_DES_CBC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PKCS #5: DES key\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PKCS #5: DES IV\00", align 1
@CRYPTO_CIPHER_ALG_DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_cipher* (%struct.pkcs5_params*, i8*)* @pkcs5_crypto_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_cipher* @pkcs5_crypto_init(%struct.pkcs5_params* %0, i8* %1) #0 {
  %3 = alloca %struct.crypto_cipher*, align 8
  %4 = alloca %struct.pkcs5_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  store %struct.pkcs5_params* %0, %struct.pkcs5_params** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MD5_MAC_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %17 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PKCS5_ALG_MD5_DES_CBC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %72

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %24, i32** %25, align 16
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @os_strlen(i8* %26)
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %30 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  store i32* %31, i32** %32, align 8
  %33 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %34 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %39 = call i64 @md5_vector(i32 2, i32** %37, i64* %38, i32* %15)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %72

42:                                               ; preds = %22
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %15, i32** %43, align 16
  %44 = load i32, i32* @MD5_MAC_LEN, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %45, i64* %46, align 16
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %60, %42
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %50 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %56 = call i64 @md5_vector(i32 1, i32** %54, i64* %55, i32* %15)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %72

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_hexdump_key(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %15, i32 8)
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = getelementptr inbounds i32, i32* %15, i64 8
  %68 = call i32 @wpa_hexdump_key(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32 8)
  %69 = load i32, i32* @CRYPTO_CIPHER_ALG_DES, align 4
  %70 = getelementptr inbounds i32, i32* %15, i64 8
  %71 = call %struct.crypto_cipher* @crypto_cipher_init(i32 %69, i32* %70, i32* %15, i32 8)
  store %struct.crypto_cipher* %71, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %63, %58, %41, %21
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  ret %struct.crypto_cipher* %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @md5_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local %struct.crypto_cipher* @crypto_cipher_init(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
