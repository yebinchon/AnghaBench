; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jvdec.c_decode2x2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jvdec.c_decode2x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @decode2x2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode2x2(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @get_bits(i32* %10, i32 2)
  switch i32 %11, label %95 [
    i32 1, label %12
    i32 2, label %33
    i32 3, label %68
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @get_bits(i32* %13, i32 8)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32* %25, i32 %27, i32 2)
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %16

32:                                               ; preds = %16
  br label %95

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @get_bits(i32* %34, i32 8)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @get_bits(i32* %37, i32 8)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %64, %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @get_bits1(i32* %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %44

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %40

67:                                               ; preds = %40
  br label %95

68:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @get_bits(i32* %77, i32 8)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %73

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %69

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94, %3, %67, %32
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
