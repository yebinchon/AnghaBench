; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_aesxts.c_xts_encrypt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_aesxts.c_xts_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ccmode_xts* }
%struct.ccmode_xts = type { i32 (i32, i32, i64, i32*, i32*)*, i32 (i32, i32, i32*)*, i32 }
%struct.TYPE_4__ = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_5__* null, align 8
@tweak = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"xts encrypt not a multiple of block size\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xts_encrypt(i32* %0, i64 %1, i32* %2, i32* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.ccmode_xts*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_crypto_funcs, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ccmode_xts*, %struct.ccmode_xts** %13, align 8
  store %struct.ccmode_xts* %14, %struct.ccmode_xts** %11, align 8
  %15 = load %struct.ccmode_xts*, %struct.ccmode_xts** %11, align 8
  %16 = getelementptr inbounds %struct.ccmode_xts, %struct.ccmode_xts* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @tweak, align 4
  %19 = call i32 @ccxts_tweak_decl(i32 %17, i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = urem i64 %20, 16
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %5
  %26 = load %struct.ccmode_xts*, %struct.ccmode_xts** %11, align 8
  %27 = getelementptr inbounds %struct.ccmode_xts, %struct.ccmode_xts* %26, i32 0, i32 1
  %28 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @tweak, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 %28(i32 %31, i32 %32, i32* %33)
  %35 = load %struct.ccmode_xts*, %struct.ccmode_xts** %11, align 8
  %36 = getelementptr inbounds %struct.ccmode_xts, %struct.ccmode_xts* %35, i32 0, i32 0
  %37 = load i32 (i32, i32, i64, i32*, i32*)*, i32 (i32, i32, i64, i32*, i32*)** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @tweak, align 4
  %42 = load i64, i64* %7, align 8
  %43 = udiv i64 %42, 16
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 %37(i32 %40, i32 %41, i64 %43, i32* %44, i32* %45)
  ret i32 0
}

declare dso_local i32 @ccxts_tweak_decl(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
