; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = common dso_local global i32* null, align 8
@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** @reg, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 7
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32**, i32*** @linebuf, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 32
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** @vram, align 8
  %18 = load i32*, i32** @reg, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 10
  %22 = and i32 %21, 15360
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 3
  %25 = mul nsw i32 %24, 40
  %26 = add nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %17, i64 %27
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** @vram, align 8
  %30 = load i32*, i32** @reg, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 11
  %34 = and i32 %33, 14336
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 7
  %37 = add nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %29, i64 %38
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @memset(i32* %40, i32 64, i32 8)
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %7, align 8
  store i32 40, i32* %4, align 4
  br label %44

44:                                               ; preds = %112, %2
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %46, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 7
  %55 = and i32 %54, 1
  %56 = shl i32 %55, 2
  %57 = ashr i32 %52, %56
  %58 = and i32 %57, 15
  %59 = or i32 16, %58
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 6
  %65 = and i32 %64, 1
  %66 = shl i32 %65, 2
  %67 = ashr i32 %62, %66
  %68 = and i32 %67, 15
  %69 = or i32 16, %68
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 5
  %75 = and i32 %74, 1
  %76 = shl i32 %75, 2
  %77 = ashr i32 %72, %76
  %78 = and i32 %77, 15
  %79 = or i32 16, %78
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 1
  %86 = shl i32 %85, 2
  %87 = ashr i32 %82, %86
  %88 = and i32 %87, 15
  %89 = or i32 16, %88
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = ashr i32 %93, 3
  %95 = and i32 %94, 1
  %96 = shl i32 %95, 2
  %97 = ashr i32 %92, %96
  %98 = and i32 %97, 15
  %99 = or i32 16, %98
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = ashr i32 %103, 2
  %105 = and i32 %104, 1
  %106 = shl i32 %105, 2
  %107 = ashr i32 %102, %106
  %108 = and i32 %107, 15
  %109 = or i32 16, %108
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %112

112:                                              ; preds = %44
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %44, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @memset(i32* %117, i32 64, i32 8)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
