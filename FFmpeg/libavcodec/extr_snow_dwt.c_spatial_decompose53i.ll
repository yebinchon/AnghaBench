; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_decompose53i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_decompose53i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @spatial_decompose53i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spatial_decompose53i(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @avpriv_mirror(i32 -3, i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @avpriv_mirror(i32 -2, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  store i32* %31, i32** %13, align 8
  store i32 -2, i32* %11, align 4
  br label %32

32:                                               ; preds = %101, %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @avpriv_mirror(i32 %39, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %37, i64 %45
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 2
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @avpriv_mirror(i32 %49, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %47, i64 %55
  store i32* %56, i32** %15, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %9, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %36
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @horizontal_decompose53i(i32* %62, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %36
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 2
  %69 = load i32, i32* %9, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @horizontal_decompose53i(i32* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @vertical_decompose53iH0(i32* %82, i32* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 0
  %90 = load i32, i32* %9, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @vertical_decompose53iL0(i32* %93, i32* %94, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32*, i32** %14, align 8
  store i32* %99, i32** %12, align 8
  %100 = load i32*, i32** %15, align 8
  store i32* %100, i32** %13, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %11, align 4
  br label %32

104:                                              ; preds = %32
  ret void
}

declare dso_local i32 @avpriv_mirror(i32, i32) #1

declare dso_local i32 @horizontal_decompose53i(i32*, i32*, i32) #1

declare dso_local i32 @vertical_decompose53iH0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_decompose53iL0(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
