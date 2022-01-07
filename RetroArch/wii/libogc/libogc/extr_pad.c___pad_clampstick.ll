; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_clampstick.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_clampstick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @__pad_clampstick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pad_clampstick(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %29

26:                                               ; preds = %5
  store i32 -1, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %12, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %14, align 4
  br label %36

33:                                               ; preds = %29
  store i32 -1, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %132

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %60
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %78, %79
  %81 = mul nsw i32 %77, %80
  %82 = add nsw i32 %76, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %73
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %18, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = sdiv i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %18, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %15, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %86, %73
  br label %123

98:                                               ; preds = %60
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %103, %104
  %106 = mul nsw i32 %102, %105
  %107 = add nsw i32 %101, %106
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %98
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %15, align 4
  %116 = sdiv i32 %114, %115
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %18, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %15, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %111, %98
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %13, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  br label %135

132:                                              ; preds = %57
  %133 = load i32*, i32** %7, align 8
  store i32 0, i32* %133, align 4
  %134 = load i32*, i32** %6, align 8
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %123
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
