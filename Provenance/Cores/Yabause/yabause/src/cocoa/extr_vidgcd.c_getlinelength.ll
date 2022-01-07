; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_getlinelength.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_getlinelength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @getlinelength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getlinelength(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %77, %45
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %16, align 4
  br label %76

69:                                               ; preds = %59
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %69, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %121

83:                                               ; preds = %41
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %115, %83
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %16, align 4
  br label %114

107:                                              ; preds = %97
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %107, %103
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %93

118:                                              ; preds = %93
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %80
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
