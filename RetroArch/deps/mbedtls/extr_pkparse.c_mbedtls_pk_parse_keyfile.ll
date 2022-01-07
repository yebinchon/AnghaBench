; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_mbedtls_pk_parse_keyfile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_mbedtls_pk_parse_keyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_parse_keyfile(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @mbedtls_pk_load_file(i8* %11, i8** %10, i64* %9)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @mbedtls_pk_parse_key(i32* %20, i8* %21, i64 %22, i8* null, i32 0)
  store i32 %23, i32* %8, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @mbedtls_pk_parse_key(i32* %25, i8* %26, i64 %27, i8* %28, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @mbedtls_zeroize(i8* %33, i64 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @mbedtls_free(i8* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @mbedtls_pk_load_file(i8*, i8**, i64*) #1

declare dso_local i32 @mbedtls_pk_parse_key(i32*, i8*, i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i64) #1

declare dso_local i32 @mbedtls_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
