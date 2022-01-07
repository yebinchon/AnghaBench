; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m1x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = common dso_local global i32* null, align 8
@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m1x(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** @reg, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 7
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32**, i32*** @linebuf, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 32
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** @vram, align 8
  %19 = load i32*, i32** @reg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 10
  %23 = and i32 %22, 15360
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 3
  %26 = mul nsw i32 %25, 40
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %18, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** @reg, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 11
  %34 = xor i32 -14337, %33
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @system_hw, align 8
  %36 = load i64, i64* @SYSTEM_SMS, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, 6144
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %2
  %42 = load i32*, i32** @vram, align 8
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 192
  %45 = shl i32 %44, 5
  %46 = add nsw i32 8192, %45
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 7
  %51 = add nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %42, i64 %52
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @memset(i32* %54, i32 64, i32 8)
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32* %57, i32** %8, align 8
  store i32 40, i32* %4, align 4
  br label %58

58:                                               ; preds = %127, %41
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %9, align 8
  %62 = load i32, i32* %60, align 4
  %63 = shl i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 7
  %70 = and i32 %69, 1
  %71 = shl i32 %70, 2
  %72 = ashr i32 %67, %71
  %73 = and i32 %72, 15
  %74 = or i32 16, %73
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 6
  %80 = and i32 %79, 1
  %81 = shl i32 %80, 2
  %82 = ashr i32 %77, %81
  %83 = and i32 %82, 15
  %84 = or i32 16, %83
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = ashr i32 %88, 5
  %90 = and i32 %89, 1
  %91 = shl i32 %90, 2
  %92 = ashr i32 %87, %91
  %93 = and i32 %92, 15
  %94 = or i32 16, %93
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 1
  %101 = shl i32 %100, 2
  %102 = ashr i32 %97, %101
  %103 = and i32 %102, 15
  %104 = or i32 16, %103
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %5, align 4
  %109 = ashr i32 %108, 3
  %110 = and i32 %109, 1
  %111 = shl i32 %110, 2
  %112 = ashr i32 %107, %111
  %113 = and i32 %112, 15
  %114 = or i32 16, %113
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %5, align 4
  %119 = ashr i32 %118, 2
  %120 = and i32 %119, 1
  %121 = shl i32 %120, 2
  %122 = ashr i32 %117, %121
  %123 = and i32 %122, 15
  %124 = or i32 16, %123
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  br label %127

127:                                              ; preds = %58
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %58, label %131

131:                                              ; preds = %127
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @memset(i32* %132, i32 64, i32 8)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
