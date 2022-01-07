; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_unfilter.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_unfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @unfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unfilter(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = add i32 %18, 7
  %20 = udiv i32 %19, 8
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %22, %23
  %25 = add i32 %24, 7
  %26 = udiv i32 %25, 8
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %62, %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %33, %35
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add i64 1, %37
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %38, %40
  store i64 %41, i64* %16, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %17, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %16, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i8, i8* %17, align 1
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @unfilterScanline(i8* %48, i8* %52, i8* %53, i64 %54, i8 zeroext %55, i64 %56)
  %58 = call i32 @CERROR_TRY_RETURN(i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %32
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %28

65:                                               ; preds = %28
  ret i32 0
}

declare dso_local i32 @CERROR_TRY_RETURN(i32) #1

declare dso_local i32 @unfilterScanline(i8*, i8*, i8*, i64, i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
