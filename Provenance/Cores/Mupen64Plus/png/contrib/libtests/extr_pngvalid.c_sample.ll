; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_sample.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32)* @sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %7
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %16, align 4
  %31 = mul nsw i32 %30, 3
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 6
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %16, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %7
  %52 = load i32, i32* %16, align 4
  %53 = ashr i32 %52, 3
  %54 = load i32*, i32** %9, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %8, align 4
  br label %102

63:                                               ; preds = %51
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 8
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  br label %102

76:                                               ; preds = %66
  %77 = load i32, i32* %17, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %8, align 4
  br label %102

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %16, align 4
  %86 = and i32 %85, 7
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 8, %90
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 1, %98
  %100 = sub i32 %99, 1
  %101 = and i32 %97, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %94, %76, %69, %61
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
