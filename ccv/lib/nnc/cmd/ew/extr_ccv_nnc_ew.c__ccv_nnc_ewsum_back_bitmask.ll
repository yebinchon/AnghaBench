; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/ew/extr_ccv_nnc_ew.c__ccv_nnc_ewsum_back_bitmask.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/ew/extr_ccv_nnc_ew.c__ccv_nnc_ewsum_back_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32*, i32)* @_ccv_nnc_ewsum_back_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_ewsum_back_bitmask(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %90

20:                                               ; preds = %6
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %90

26:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %82, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %91

49:                                               ; preds = %45
  br label %51

50:                                               ; preds = %35
  br label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %32

55:                                               ; preds = %50, %32
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %16, align 4
  br label %62

62:                                               ; preds = %61, %55
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 64
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %15, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %91

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %63

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %27

85:                                               ; preds = %27
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %7, align 4
  br label %91

90:                                               ; preds = %20, %6
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %85, %76, %48
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
