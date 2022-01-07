; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/ew/extr_ccv_nnc_ew.c__ccv_nnc_ewsum_forw_bitmask.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/ew/extr_ccv_nnc_ew.c__ccv_nnc_ewsum_forw_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32*, i32)* @_ccv_nnc_ewsum_forw_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_ewsum_forw_bitmask(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %89

20:                                               ; preds = %6
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %89

25:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %15, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %90

48:                                               ; preds = %44
  br label %50

49:                                               ; preds = %34
  br label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %31

54:                                               ; preds = %49, %31
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %90

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %62

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %7, align 4
  br label %90

89:                                               ; preds = %20, %6
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %84, %75, %47
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
