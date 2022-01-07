; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_md5.c_MD5Update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_md5.c_MD5Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ccdigest_info*, i32, i32, i8*)*, %struct.ccdigest_info* }
%struct.ccdigest_info = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_2__* null, align 8
@di_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MD5Update(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccdigest_info*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.ccdigest_info*, %struct.ccdigest_info** %9, align 8
  store %struct.ccdigest_info* %10, %struct.ccdigest_info** %7, align 8
  %11 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %12 = load i32, i32* @di_ctx, align 4
  %13 = call i32 @ccdigest_di_decl(%struct.ccdigest_info* %11, i32 %12)
  %14 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @di_ctx, align 4
  %17 = call i32 @MD5ToDi(%struct.ccdigest_info* %14, i32* %15, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ccdigest_info*, i32, i32, i8*)*, i32 (%struct.ccdigest_info*, i32, i32, i8*)** %19, align 8
  %21 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %22 = load i32, i32* @di_ctx, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 %20(%struct.ccdigest_info* %21, i32 %22, i32 %23, i8* %24)
  %26 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  %27 = load i32, i32* @di_ctx, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @DiToMD5(%struct.ccdigest_info* %26, i32 %27, i32* %28)
  ret void
}

declare dso_local i32 @ccdigest_di_decl(%struct.ccdigest_info*, i32) #1

declare dso_local i32 @MD5ToDi(%struct.ccdigest_info*, i32*, i32) #1

declare dso_local i32 @DiToMD5(%struct.ccdigest_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
