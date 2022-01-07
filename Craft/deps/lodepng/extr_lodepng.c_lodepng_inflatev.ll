; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_inflatev.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_inflatev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*)* @lodepng_inflatev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lodepng_inflatev(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %9, align 8
  br label %16

16:                                               ; preds = %61, %4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %21, 2
  %23 = load i64, i64* %8, align 8
  %24 = mul i64 %23, 8
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 52, i32* %5, align 4
  br label %70

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @readBitFromStream(i64* %10, i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @readBitFromStream(i64* %10, i8* %30)
  %32 = mul nsw i32 1, %31
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @readBitFromStream(i64* %10, i8* %33)
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* %14, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 20, i32* %5, align 4
  br label %70

41:                                               ; preds = %27
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @inflateNoCompression(i32* %45, i8* %46, i64* %10, i64* %12, i64 %47)
  store i32 %48, i32* %13, align 4
  br label %55

49:                                               ; preds = %41
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @inflateHuffmanBlock(i32* %50, i8* %51, i64* %10, i64* %12, i64 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %70

61:                                               ; preds = %56
  br label %16

62:                                               ; preds = %16
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @ucvector_resize(i32* %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 83, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %59, %40, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @readBitFromStream(i64*, i8*) #1

declare dso_local i32 @inflateNoCompression(i32*, i8*, i64*, i64*, i64) #1

declare dso_local i32 @inflateHuffmanBlock(i32*, i8*, i64*, i64*, i64, i32) #1

declare dso_local i32 @ucvector_resize(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
