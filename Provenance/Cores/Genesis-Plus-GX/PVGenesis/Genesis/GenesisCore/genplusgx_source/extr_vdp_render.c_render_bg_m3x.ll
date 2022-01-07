; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m3x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m3x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8
@reg = common dso_local global i32* null, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m3x(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32**, i32*** @linebuf, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 32
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** @vram, align 8
  %16 = load i32*, i32** @reg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 10
  %20 = and i32 %19, 15360
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 248
  %23 = shl i32 %22, 2
  %24 = add nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %15, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** @reg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 11
  %31 = xor i32 -14337, %30
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* @system_hw, align 8
  %33 = load i64, i64* @SYSTEM_SMS, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, 6144
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i32*, i32** @vram, align 8
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 192
  %42 = shl i32 %41, 5
  %43 = add nsw i32 8192, %42
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 2
  %48 = and i32 %47, 7
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %39, i64 %50
  store i32* %51, i32** %7, align 8
  store i32 32, i32* %4, align 4
  br label %52

52:                                               ; preds = %110, %38
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %9, align 8
  %55 = load i32, i32* %53, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 4
  %64 = and i32 %63, 15
  %65 = or i32 16, %64
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  %71 = or i32 16, %70
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 4
  %76 = and i32 %75, 15
  %77 = or i32 16, %76
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 4
  %82 = and i32 %81, 15
  %83 = or i32 16, %82
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = ashr i32 %86, 0
  %88 = and i32 %87, 15
  %89 = or i32 16, %88
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 0
  %94 = and i32 %93, 15
  %95 = or i32 16, %94
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = ashr i32 %98, 0
  %100 = and i32 %99, 15
  %101 = or i32 16, %100
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, 0
  %106 = and i32 %105, 15
  %107 = or i32 16, %106
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  br label %110

110:                                              ; preds = %52
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %52, label %114

114:                                              ; preds = %110
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
