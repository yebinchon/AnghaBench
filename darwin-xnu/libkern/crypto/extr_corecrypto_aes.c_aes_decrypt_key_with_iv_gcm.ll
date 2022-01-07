; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_aes.c_aes_decrypt_key_with_iv_gcm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_aes.c_aes_decrypt_key_with_iv_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ccmode_gcm*, i32*, i32, i8*, i8*)*, %struct.ccmode_gcm* }
%struct.ccmode_gcm = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_2__* null, align 8
@aes_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_decrypt_key_with_iv_gcm(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ccmode_gcm*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.ccmode_gcm*, %struct.ccmode_gcm** %12, align 8
  store %struct.ccmode_gcm* %13, %struct.ccmode_gcm** %10, align 8
  %14 = load %struct.ccmode_gcm*, %struct.ccmode_gcm** %10, align 8
  %15 = icmp ne %struct.ccmode_gcm* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @aes_error, align 4
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ccmode_gcm*, i32*, i32, i8*, i8*)*, i32 (%struct.ccmode_gcm*, i32*, i32, i8*, i8*)** %20, align 8
  %22 = load %struct.ccmode_gcm*, %struct.ccmode_gcm** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 %21(%struct.ccmode_gcm* %22, i32* %23, i32 %24, i8* %25, i8* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
