; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_permute.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_permute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @permute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @permute(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %86 [
    i32 130, label %9
    i32 129, label %36
    i32 128, label %63
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %9
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 56
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 6
  %24 = ashr i32 %23, 1
  %25 = or i32 %21, %24
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1
  %28 = shl i32 %27, 2
  %29 = or i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %19, i64 %30
  store i32 %18, i32* %31, align 4
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %10

35:                                               ; preds = %10
  br label %104

36:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 64
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 36
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 3
  %51 = shl i32 %50, 3
  %52 = or i32 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 3
  %55 = and i32 %54, 3
  %56 = or i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %46, i64 %57
  store i32 %45, i32* %58, align 4
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %37

62:                                               ; preds = %37
  br label %104

63:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 64
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 3
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 %76, 3
  %78 = and i32 %77, 56
  %79 = or i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %73, i64 %80
  store i32 %72, i32* %81, align 4
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %64

85:                                               ; preds = %64
  br label %104

86:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 64
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %87

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %85, %62, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
