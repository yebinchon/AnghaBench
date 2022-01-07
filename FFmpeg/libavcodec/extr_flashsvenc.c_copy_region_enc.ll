; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsvenc.c_copy_region_enc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsvenc.c_copy_region_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32, i32, i32*)* @copy_region_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_region_enc(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %18, align 4
  br label %26

26:                                               ; preds = %88, %8
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %16, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %20, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %16, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %21, align 8
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %79, %30
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 3
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load i32*, i32** %21, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %61, %66
  %68 = load i32, i32* %22, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %22, align 4
  %70 = load i32*, i32** %20, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %56
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %19, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load i32, i32* %15, align 4
  %84 = mul nsw i32 %83, 3
  %85 = load i32*, i32** %11, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %11, align 8
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %18, align 4
  br label %26

91:                                               ; preds = %26
  %92 = load i32, i32* %22, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  br label %96

95:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
