; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_md.c_mbedtls_md_hmac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_md.c_mbedtls_md_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_MD_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_hmac(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @MBEDTLS_ERR_MD_BAD_INPUT_DATA, align 4
  store i32 %19, i32* %7, align 4
  br label %37

20:                                               ; preds = %6
  %21 = call i32 @mbedtls_md_init(i32* %14)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @mbedtls_md_setup(i32* %14, i32* %22, i32 1)
  store i32 %23, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %37

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @mbedtls_md_hmac_starts(i32* %14, i8* %28, i64 %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @mbedtls_md_hmac_update(i32* %14, i8* %31, i64 %32)
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @mbedtls_md_hmac_finish(i32* %14, i8* %34)
  %36 = call i32 @mbedtls_md_free(i32* %14)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %27, %25, %18
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @mbedtls_md_init(i32*) #1

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_md_hmac_starts(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_hmac_update(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_hmac_finish(i32*, i8*) #1

declare dso_local i32 @mbedtls_md_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
