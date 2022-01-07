; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_mbedtls_camellia_crypt_ctr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_mbedtls_camellia_crypt_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_CAMELLIA_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_crypt_ctr(i32* %0, i64 %1, i64* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %52, %7
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %9, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = load i64, i64* %17, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @MBEDTLS_CAMELLIA_ENCRYPT, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @mbedtls_camellia_crypt_ecb(i32* %28, i32 %29, i8* %30, i8* %31)
  store i32 16, i32* %16, align 4
  br label %33

33:                                               ; preds = %48, %27
  %34 = load i32, i32* %16, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %16, align 4
  br label %33

51:                                               ; preds = %46, %33
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %13, align 8
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %17, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %57, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i64, i64* %17, align 8
  %68 = add i64 %67, 1
  %69 = and i64 %68, 15
  store i64 %69, i64* %17, align 8
  br label %20

70:                                               ; preds = %20
  %71 = load i64, i64* %17, align 8
  %72 = load i64*, i64** %10, align 8
  store i64 %71, i64* %72, align 8
  ret i32 0
}

declare dso_local i32 @mbedtls_camellia_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
