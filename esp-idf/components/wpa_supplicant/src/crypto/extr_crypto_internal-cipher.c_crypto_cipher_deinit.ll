; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal-cipher.c_crypto_cipher_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal-cipher.c_crypto_cipher_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_cipher_deinit(%struct.crypto_cipher* %0) #0 {
  %2 = alloca %struct.crypto_cipher*, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %2, align 8
  %3 = load %struct.crypto_cipher*, %struct.crypto_cipher** %2, align 8
  %4 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %19 [
    i32 128, label %6
  ]

6:                                                ; preds = %1
  %7 = load %struct.crypto_cipher*, %struct.crypto_cipher** %2, align 8
  %8 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @aes_encrypt_deinit(i32 %11)
  %13 = load %struct.crypto_cipher*, %struct.crypto_cipher** %2, align 8
  %14 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @aes_decrypt_deinit(i32 %17)
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %6
  %21 = load %struct.crypto_cipher*, %struct.crypto_cipher** %2, align 8
  %22 = call i32 @os_free(%struct.crypto_cipher* %21)
  ret void
}

declare dso_local i32 @aes_encrypt_deinit(i32) #1

declare dso_local i32 @aes_decrypt_deinit(i32) #1

declare dso_local i32 @os_free(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
