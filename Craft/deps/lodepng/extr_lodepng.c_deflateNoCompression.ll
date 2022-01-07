; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_deflateNoCompression.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_deflateNoCompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @deflateNoCompression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflateNoCompression(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, 65534
  %18 = udiv i64 %17, 65535
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %98, %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %101

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %25, 1
  %27 = icmp eq i64 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 1
  %33 = add i32 %29, %32
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 2
  %36 = shl i32 %35, 1
  %37 = add i32 %33, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %15, align 1
  %39 = load i32*, i32** %4, align 8
  %40 = load i8, i8* %15, align 1
  %41 = call i32 @ucvector_push_back(i32* %39, i8 zeroext %40)
  store i32 65535, i32* %13, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = sub i64 %42, %44
  %46 = icmp ult i64 %45, 65535
  br i1 %46, label %47, label %52

47:                                               ; preds = %23
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %10, align 4
  %51 = sub i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %47, %23
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 65535, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %13, align 4
  %57 = urem i32 %56, 256
  %58 = trunc i32 %57 to i8
  %59 = call i32 @ucvector_push_back(i32* %55, i8 zeroext %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %13, align 4
  %62 = udiv i32 %61, 256
  %63 = trunc i32 %62 to i8
  %64 = call i32 @ucvector_push_back(i32* %60, i8 zeroext %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %14, align 4
  %67 = urem i32 %66, 256
  %68 = trunc i32 %67 to i8
  %69 = call i32 @ucvector_push_back(i32* %65, i8 zeroext %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %14, align 4
  %72 = udiv i32 %71, 256
  %73 = trunc i32 %72 to i8
  %74 = call i32 @ucvector_push_back(i32* %70, i8 zeroext %73)
  store i64 0, i64* %8, align 8
  br label %75

75:                                               ; preds = %94, %52
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %76, 65535
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %6, align 8
  %82 = icmp ult i64 %80, %81
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi i1 [ false, %75 ], [ %82, %78 ]
  br i1 %84, label %85, label %97

85:                                               ; preds = %83
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @ucvector_push_back(i32* %86, i8 zeroext %92)
  br label %94

94:                                               ; preds = %85
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %75

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %19

101:                                              ; preds = %19
  ret i32 0
}

declare dso_local i32 @ucvector_push_back(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
