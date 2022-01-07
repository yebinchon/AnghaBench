; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_aes.c_aes_decrypt_cbc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_aes.c_aes_decrypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ccmode_cbc* }
%struct.ccmode_cbc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_5__* null, align 8
@ctx_iv = common dso_local global i32 0, align 4
@aes_good = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_decrypt_cbc(i8* %0, i8* %1, i32 %2, i8* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.ccmode_cbc*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_crypto_funcs, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %13, align 8
  store %struct.ccmode_cbc* %14, %struct.ccmode_cbc** %11, align 8
  %15 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %11, align 8
  %16 = getelementptr inbounds %struct.ccmode_cbc, %struct.ccmode_cbc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ctx_iv, align 4
  %19 = call i32 @cccbc_iv_decl(i32 %17, i32 %18)
  %20 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %11, align 8
  %21 = load i32, i32* @ctx_iv, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @cccbc_set_iv(%struct.ccmode_cbc* %20, i32 %21, i8* %22)
  %24 = load %struct.ccmode_cbc*, %struct.ccmode_cbc** %11, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ctx_iv, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @cccbc_update(%struct.ccmode_cbc* %24, i32 %28, i32 %29, i32 %30, i8* %31, i8* %32)
  %34 = load i32, i32* @aes_good, align 4
  ret i32 %34
}

declare dso_local i32 @cccbc_iv_decl(i32, i32) #1

declare dso_local i32 @cccbc_set_iv(%struct.ccmode_cbc*, i32, i8*) #1

declare dso_local i32 @cccbc_update(%struct.ccmode_cbc*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
