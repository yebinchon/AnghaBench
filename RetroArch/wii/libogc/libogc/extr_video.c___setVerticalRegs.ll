; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setVerticalRegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setVerticalRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs = common dso_local global i32* null, align 8
@changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i64)* @__setVerticalRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setVerticalRegs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  store i32 2, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i32 1, i32* %20, align 4
  store i32 2, i32* %21, align 4
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %23, align 4
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %20, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %40, %41
  %43 = mul nsw i32 %35, %42
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* %10, align 4
  %45 = srem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %31
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %23, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %22, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %24, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %23, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %26, align 4
  br label %73

60:                                               ; preds = %31
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %23, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %22, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %23, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %26, align 4
  br label %73

73:                                               ; preds = %60, %47
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %20, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %19, align 4
  %77 = load i64, i64* %18, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load i32, i32* %19, align 4
  %81 = shl i32 %80, 1
  %82 = sub nsw i32 %81, 2
  %83 = load i32, i32* %25, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %25, align 4
  %85 = load i32, i32* %19, align 4
  %86 = shl i32 %85, 1
  %87 = sub nsw i32 %86, 2
  %88 = load i32, i32* %27, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %24, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %26, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %26, align 4
  store i32 0, i32* %19, align 4
  br label %94

94:                                               ; preds = %79, %73
  %95 = load i32, i32* %19, align 4
  %96 = shl i32 %95, 4
  %97 = and i32 %96, -16
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %97, %98
  %100 = load i32*, i32** @regs, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %99, i32* %101, align 4
  %102 = call i32 @VI_REGCHANGE(i32 0)
  %103 = load i32, i32* @changed, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* @changed, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32*, i32** @regs, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %25, align 4
  %109 = load i32*, i32** @regs, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  store i32 %108, i32* %110, align 4
  %111 = call i32 @VI_REGCHANGE(i32 6)
  %112 = load i32, i32* @changed, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* @changed, align 4
  %114 = call i32 @VI_REGCHANGE(i32 7)
  %115 = load i32, i32* @changed, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* @changed, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32*, i32** @regs, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 8
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32*, i32** @regs, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 9
  store i32 %120, i32* %122, align 4
  %123 = call i32 @VI_REGCHANGE(i32 8)
  %124 = load i32, i32* @changed, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* @changed, align 4
  %126 = call i32 @VI_REGCHANGE(i32 9)
  %127 = load i32, i32* @changed, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* @changed, align 4
  ret void
}

declare dso_local i32 @VI_REGCHANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
