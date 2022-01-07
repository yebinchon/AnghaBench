; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_ccrypto.c_ccpad_cts3_encrypt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_ccrypto.c_ccpad_cts3_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.ccmode_cbc*, i32*, i32*, i64, i8*, i8*)* }
%struct.ccmode_cbc = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ccpad_cts3_encrypt(%struct.ccmode_cbc* %0, i32* %1, i32* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.ccmode_cbc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.ccmode_cbc* %0, %struct.ccmode_cbc** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.ccmode_cbc*, i32*, i32*, i64, i8*, i8*)*, i64 (%struct.ccmode_cbc*, i32*, i32*, i64, i8*, i8*)** %18, align 8
  %20 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i64 %19(%struct.ccmode_cbc* %20, i32* %21, i32* %22, i64 %23, i8* %24, i8* %25)
  store i64 %26, i64* %7, align 8
  br label %28

27:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i64, i64* %7, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
