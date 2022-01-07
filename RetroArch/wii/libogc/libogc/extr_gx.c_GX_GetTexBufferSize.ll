; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_GetTexBufferSize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_GetTexBufferSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GX_GetTexBufferSize(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %25 [
    i32 137, label %22
    i32 138, label %22
    i32 147, label %22
    i32 145, label %22
    i32 141, label %22
    i32 128, label %23
    i32 136, label %23
    i32 135, label %23
    i32 151, label %23
    i32 146, label %23
    i32 149, label %23
    i32 150, label %23
    i32 143, label %23
    i32 148, label %23
    i32 139, label %23
    i32 140, label %23
    i32 134, label %24
    i32 130, label %24
    i32 129, label %24
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
    i32 142, label %24
    i32 144, label %24
  ]

22:                                               ; preds = %5, %5, %5, %5, %5
  store i32 3, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %26

23:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i32 3, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %26

24:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  store i32 2, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %26

25:                                               ; preds = %5
  store i32 2, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  store i32 32, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 64, i32* %16, align 4
  br label %33

33:                                               ; preds = %32, %29
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %99

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 255
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %94, %36
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 65535
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 65535
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 1, %48
  %50 = add nsw i32 %47, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 1, %55
  %57 = add nsw i32 %54, %56
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %13, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %42
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %6, align 4
  br label %124

65:                                               ; preds = %42
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %16, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* %20, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %6, align 4
  br label %124

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %19, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %87

86:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %20, align 4
  %92 = ashr i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %94

93:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %18, align 4
  br label %39

97:                                               ; preds = %39
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %6, align 4
  br label %124

99:                                               ; preds = %33
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 65535
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 1, %103
  %105 = sub nsw i32 %104, 1
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %12, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 65535
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %113, 1
  %115 = add nsw i32 %111, %114
  %116 = load i32, i32* %13, align 4
  %117 = ashr i32 %115, %116
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 %120, %121
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %99, %97, %78, %63
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
