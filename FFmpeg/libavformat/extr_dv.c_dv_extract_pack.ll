; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_dv_extract_pack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_dv_extract_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @dv_extract_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dv_extract_pack(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %64, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %67

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %53 [
    i32 130, label %13
    i32 131, label %26
    i32 128, label %39
    i32 129, label %52
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 12000
  %20 = add nsw i32 483, %19
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 12000
  %24 = add nsw i32 4323, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %54

26:                                               ; preds = %11
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 12000
  %33 = add nsw i32 1763, %32
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 12000
  %37 = add nsw i32 5603, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %54

39:                                               ; preds = %11
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 12000
  %46 = add nsw i32 248, %45
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 12000
  %50 = add nsw i32 453, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %54

52:                                               ; preds = %11
  store i32 86, i32* %6, align 4
  br label %54

53:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %83

54:                                               ; preds = %52, %51, %38, %25
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %8

67:                                               ; preds = %62, %8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  br label %81

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %75
  %82 = phi i32* [ %79, %75 ], [ null, %80 ]
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %53
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
