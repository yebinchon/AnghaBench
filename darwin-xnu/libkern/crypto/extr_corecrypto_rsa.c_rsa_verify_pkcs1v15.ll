; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_rsa.c_rsa_verify_pkcs1v15.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_rsa.c_rsa_verify_pkcs1v15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32*, i64, i32*, i64, i32*, i32*)* }
%struct.TYPE_4__ = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_verify_pkcs1v15(%struct.TYPE_4__* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_crypto_funcs, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32*, i64, i32*, i64, i32*, i32*)*, i32 (i32, i32*, i64, i32*, i64, i32*, i32*)** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 %17(i32 %20, i32* %21, i64 %22, i32* %23, i64 %24, i32* %25, i32* %26)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
