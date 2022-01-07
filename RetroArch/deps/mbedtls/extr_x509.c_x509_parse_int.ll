; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_parse_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_X509_INVALID_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i32*)* @x509_parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_int(i8** %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %16, 48
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sgt i32 %22, 57
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12
  %25 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 10
  store i32 %29, i32* %27, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %34, 48
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %6, align 8
  br label %9

42:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
