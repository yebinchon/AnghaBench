; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_gfx_slow_swizzling_blit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_gfx_slow_swizzling_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfx_slow_swizzling_blit(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %35 = load i32*, i32** %8, align 8
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %9, align 8
  store i32* %36, i32** %16, align 8
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %20, align 4
  store i32 128, i32* %21, align 4
  store i32 1280, i32* %22, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @swizzle_x(i32 %45)
  store i32 %46, i32* %23, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @swizzle_y(i32 %47)
  store i32 %48, i32* %24, align 4
  %49 = call i32 @swizzle_x(i32 -1)
  store i32 %49, i32* %25, align 4
  %50 = call i32 @swizzle_y(i32 -1)
  store i32 %50, i32* %26, align 4
  %51 = call i32 @swizzle_x(i32 1280)
  store i32 %51, i32* %27, align 4
  %52 = load i32, i32* %27, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sdiv i32 %53, 128
  %55 = mul nsw i32 %52, %54
  %56 = load i32, i32* %23, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* %29, align 4
  br label %59

59:                                               ; preds = %125, %7
  %60 = load i32, i32* %29, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %128

63:                                               ; preds = %59
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %24, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %30, align 8
  %68 = load i32, i32* %23, align 4
  store i32 %68, i32* %31, align 4
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %28, align 4
  br label %70

70:                                               ; preds = %109, %63
  %71 = load i32, i32* %28, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load i32*, i32** %16, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %16, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %32, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load i32*, i32** %30, align 8
  %82 = load i32, i32* %31, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %33, align 4
  %86 = load i32, i32* %32, align 4
  %87 = and i32 %86, -16777216
  %88 = lshr i32 %87, 24
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %34, align 8
  %90 = load i64, i64* %34, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* %32, align 4
  %94 = and i32 %93, 16777215
  store i32 %94, i32* %32, align 4
  br label %97

95:                                               ; preds = %80
  %96 = load i32, i32* %33, align 4
  store i32 %96, i32* %32, align 4
  br label %97

97:                                               ; preds = %95, %92
  br label %98

98:                                               ; preds = %97, %74
  %99 = load i32, i32* %32, align 4
  %100 = load i32*, i32** %30, align 8
  %101 = load i32, i32* %31, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %31, align 4
  %105 = load i32, i32* %25, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %25, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %31, align 4
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %28, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %28, align 4
  br label %70

112:                                              ; preds = %70
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %26, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %26, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %24, align 4
  %118 = load i32, i32* %24, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %27, align 4
  %122 = load i32, i32* %23, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %23, align 4
  br label %124

124:                                              ; preds = %120, %112
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %29, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %29, align 4
  br label %59

128:                                              ; preds = %59
  ret void
}

declare dso_local i32 @swizzle_x(i32) #1

declare dso_local i32 @swizzle_y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
