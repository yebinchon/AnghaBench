; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8
@reg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m3(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32**, i32*** @linebuf, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 32
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** @vram, align 8
  %15 = load i32*, i32** @reg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 10
  %19 = and i32 %18, 15360
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 248
  %22 = shl i32 %21, 2
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %14, i64 %24
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** @vram, align 8
  %27 = load i32*, i32** @reg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 11
  %31 = and i32 %30, 14336
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 2
  %34 = and i32 %33, 7
  %35 = add nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %26, i64 %36
  store i32* %37, i32** %9, align 8
  store i32 32, i32* %4, align 4
  br label %38

38:                                               ; preds = %96, %2
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 15
  %51 = or i32 16, %50
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 15
  %57 = or i32 16, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = or i32 16, %62
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 4
  %68 = and i32 %67, 15
  %69 = or i32 16, %68
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 0
  %74 = and i32 %73, 15
  %75 = or i32 16, %74
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 0
  %80 = and i32 %79, 15
  %81 = or i32 16, %80
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 0
  %86 = and i32 %85, 15
  %87 = or i32 16, %86
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 0
  %92 = and i32 %91, 15
  %93 = or i32 16, %92
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  br label %96

96:                                               ; preds = %38
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %38, label %100

100:                                              ; preds = %96
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
