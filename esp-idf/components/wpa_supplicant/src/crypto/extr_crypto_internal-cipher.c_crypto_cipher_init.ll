; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal-cipher.c_crypto_cipher_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal-cipher.c_crypto_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_cipher* @crypto_cipher_init(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_cipher*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i64 @os_zalloc(i32 72)
  %12 = inttoptr i64 %11 to %struct.crypto_cipher*
  store %struct.crypto_cipher* %12, %struct.crypto_cipher** %10, align 8
  %13 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %14 = icmp eq %struct.crypto_cipher* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %96

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %19 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %91 [
    i32 128, label %21
    i32 130, label %42
  ]

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %26 = call i32 @os_free(%struct.crypto_cipher* %25)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %96

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %30 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %34 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @os_memcpy(i32 %37, i32* %38, i32 %40)
  br label %94

42:                                               ; preds = %16
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32* @aes_encrypt_init(i32* %43, i64 %44)
  %46 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %47 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32* %45, i32** %49, align 8
  %50 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %51 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %58 = call i32 @os_free(%struct.crypto_cipher* %57)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %96

59:                                               ; preds = %42
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32* @aes_decrypt_init(i32* %60, i64 %61)
  %63 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %64 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32* %62, i32** %66, align 8
  %67 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %68 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %59
  %74 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %75 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @aes_encrypt_deinit(i32* %78)
  %80 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %81 = call i32 @os_free(%struct.crypto_cipher* %80)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %96

82:                                               ; preds = %59
  %83 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %84 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %90 = call i32 @os_memcpy(i32 %87, i32* %88, i32 %89)
  br label %94

91:                                               ; preds = %16
  %92 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %93 = call i32 @os_free(%struct.crypto_cipher* %92)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %96

94:                                               ; preds = %82, %27
  %95 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  store %struct.crypto_cipher* %95, %struct.crypto_cipher** %5, align 8
  br label %96

96:                                               ; preds = %94, %91, %73, %56, %24, %15
  %97 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  ret %struct.crypto_cipher* %97
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.crypto_cipher*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32* @aes_encrypt_init(i32*, i64) #1

declare dso_local i32* @aes_decrypt_init(i32*, i64) #1

declare dso_local i32 @aes_encrypt_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
