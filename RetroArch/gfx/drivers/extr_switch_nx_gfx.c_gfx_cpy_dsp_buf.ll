; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_gfx_cpy_dsp_buf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_gfx_cpy_dsp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfx_cpy_dsp_buf(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %76, %6
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %32
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %18, align 4
  %53 = and i32 %52, -16777216
  %54 = lshr i32 %53, 24
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %20, align 8
  %56 = load i64, i64* %20, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* %18, align 4
  %60 = and i32 %59, 16777215
  store i32 %60, i32* %18, align 4
  br label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %18, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %14, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %28

75:                                               ; preds = %28
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %23

79:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
