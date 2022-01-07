; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_loop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*)* @menu_animation_ticker_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_ticker_loop(i32 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  store i64* %9, i64** %20, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = add i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %21, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %22, align 4
  %33 = load i64, i64* %13, align 8
  %34 = trunc i64 %33 to i32
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = load i32, i32* %22, align 4
  br label %39

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  store i32 %40, i32* %23, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* %22, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %41, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %24, align 4
  %46 = load i32, i32* %24, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %24, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  store i32 %52, i32* %24, align 4
  %53 = load i32, i32* %24, align 4
  %54 = load i64, i64* %12, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %24, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %59, %57 ], [ %61, %60 ]
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %23, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %15, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64*, i64** %16, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* %22, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %13, align 8
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %23, align 4
  %75 = load i32, i32* %23, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %23, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ 0, %77 ], [ %79, %78 ]
  store i32 %81, i32* %23, align 4
  %82 = load i64, i64* %12, align 8
  %83 = load i64*, i64** %16, align 8
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %82, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %24, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i64, i64* %14, align 8
  %89 = trunc i64 %88 to i32
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i64, i64* %14, align 8
  %93 = trunc i64 %92 to i32
  br label %96

94:                                               ; preds = %80
  %95 = load i32, i32* %24, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %93, %91 ], [ %95, %94 ]
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %23, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %23, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %17, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** %18, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64*, i64** %16, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %18, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %109, %111
  %113 = sub i64 %107, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %24, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %96
  br label %120

118:                                              ; preds = %96
  %119 = load i32, i32* %24, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i32 [ 0, %117 ], [ %119, %118 ]
  store i32 %121, i32* %24, align 4
  %122 = load i64*, i64** %19, align 8
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64*, i64** %20, align 8
  store i64 %124, i64* %125, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
