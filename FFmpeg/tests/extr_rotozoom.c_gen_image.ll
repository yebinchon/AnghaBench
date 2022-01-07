; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_rotozoom.c_gen_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_rotozoom.c_gen_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h_cos = common dso_local global i32* null, align 8
@h_sin = common dso_local global i32* null, align 8
@FIXP = common dso_local global i32 0, align 4
@tab_r = common dso_local global i32 0, align 4
@tab_g = common dso_local global i32 0, align 4
@tab_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gen_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_image(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32*, i32** @h_cos, align 8
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %20, 360
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** @h_sin, align 8
  %26 = load i32, i32* %4, align 4
  %27 = srem i32 %26, 360
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 2
  %33 = sub nsw i32 0, %32
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 2
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 0, %41
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %109, %3
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %52
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @FIXP, align 4
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @FIXP, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %70, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %105, %56
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @tab_r, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @ipol(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @tab_g, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @ipol(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @tab_b, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @ipol(i32 %100, i32 %101, i32 %102)
  %104 = call i32 @put_pixel(i32 %90, i32 %91, i32 %95, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %83
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %79

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %52

112:                                              ; preds = %52
  ret void
}

declare dso_local i32 @put_pixel(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipol(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
