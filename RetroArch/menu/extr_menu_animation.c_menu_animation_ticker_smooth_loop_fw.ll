; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_loop_fw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_loop_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @menu_animation_ticker_smooth_loop_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_ticker_smooth_loop_fw(i32 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i64 %2, i64* %17, align 8
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %18, align 4
  %37 = add i32 %35, %36
  store i32 %37, i32* %29, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %29, align 4
  %40 = urem i32 %38, %39
  store i32 %40, i32* %30, align 4
  %41 = load i32, i32* %21, align 4
  store i32 %41, i32* %31, align 4
  %42 = load i32*, i32** %22, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %23, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %24, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** %25, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** %26, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %27, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %28, align 8
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %17, align 8
  %50 = icmp ult i64 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %14
  %52 = load i64, i64* %19, align 8
  %53 = icmp ult i64 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %14
  br label %138

55:                                               ; preds = %51
  %56 = load i32, i32* %30, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32, i32* %30, align 4
  store i32 %60, i32* %32, align 4
  %61 = load i64, i64* %17, align 8
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %31, align 4
  %64 = load i32, i32* %32, align 4
  %65 = load i32*, i32** %22, align 8
  %66 = load i32*, i32** %23, align 8
  %67 = load i32*, i32** %28, align 8
  %68 = call i32 @ticker_smooth_scan_string_fw(i64 %61, i32 %62, i32 %63, i32 %64, i32* %65, i32* %66, i32* %67)
  %69 = load i32*, i32** %28, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %23, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %20, align 4
  %74 = mul i32 %72, %73
  %75 = add i32 %70, %74
  %76 = load i32, i32* %31, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %31, align 4
  br label %78

78:                                               ; preds = %59, %55
  %79 = load i32, i32* %31, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %78
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %83 = load i32, i32* %30, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %16, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %33, align 4
  br label %91

90:                                               ; preds = %82
  store i32 0, i32* %33, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i64, i64* %19, align 8
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %31, align 4
  %95 = load i32, i32* %33, align 4
  %96 = load i32*, i32** %24, align 8
  %97 = load i32*, i32** %25, align 8
  %98 = call i32 @ticker_smooth_scan_string_fw(i64 %92, i32 %93, i32 %94, i32 %95, i32* %96, i32* %97, i32* %34)
  %99 = load i32, i32* %34, align 4
  %100 = load i32*, i32** %25, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %20, align 4
  %103 = mul i32 %101, %102
  %104 = add i32 %99, %103
  %105 = load i32, i32* %31, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %31, align 4
  %107 = load i32, i32* %33, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %91
  %110 = load i32, i32* %34, align 4
  %111 = load i32*, i32** %28, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %91
  br label %113

113:                                              ; preds = %112, %78
  %114 = load i32, i32* %31, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %113
  %118 = load i32*, i32** %26, align 8
  store i32 0, i32* %118, align 4
  %119 = load i32, i32* %31, align 4
  %120 = load i32, i32* %20, align 4
  %121 = udiv i32 %119, %120
  %122 = load i32*, i32** %27, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32*, i32** %27, align 8
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %17, align 8
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i64, i64* %17, align 8
  br label %134

130:                                              ; preds = %117
  %131 = load i32*, i32** %27, align 8
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  br label %134

134:                                              ; preds = %130, %128
  %135 = phi i64 [ %129, %128 ], [ %133, %130 ]
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %27, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %54, %134, %113
  ret void
}

declare dso_local i32 @ticker_smooth_scan_string_fw(i64, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
