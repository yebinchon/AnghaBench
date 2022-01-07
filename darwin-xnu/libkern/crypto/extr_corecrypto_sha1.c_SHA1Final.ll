; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_sha1.c_SHA1Final.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_sha1.c_SHA1Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ccdigest_info* }
%struct.ccdigest_info = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_2__* null, align 8
@di_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1Final(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ccdigest_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ccdigest_info*, %struct.ccdigest_info** %7, align 8
  store %struct.ccdigest_info* %8, %struct.ccdigest_info** %5, align 8
  %9 = load %struct.ccdigest_info*, %struct.ccdigest_info** %5, align 8
  %10 = load i32, i32* @di_ctx, align 4
  %11 = call i32 @ccdigest_di_decl(%struct.ccdigest_info* %9, i32 %10)
  %12 = load %struct.ccdigest_info*, %struct.ccdigest_info** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @di_ctx, align 4
  %15 = call i32 @SHA1ToDi(%struct.ccdigest_info* %12, i32* %13, i32 %14)
  %16 = load %struct.ccdigest_info*, %struct.ccdigest_info** %5, align 8
  %17 = load i32, i32* @di_ctx, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @ccdigest_final(%struct.ccdigest_info* %16, i32 %17, i8* %18)
  ret void
}

declare dso_local i32 @ccdigest_di_decl(%struct.ccdigest_info*, i32) #1

declare dso_local i32 @SHA1ToDi(%struct.ccdigest_info*, i32*, i32) #1

declare dso_local i32 @ccdigest_final(%struct.ccdigest_info*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
