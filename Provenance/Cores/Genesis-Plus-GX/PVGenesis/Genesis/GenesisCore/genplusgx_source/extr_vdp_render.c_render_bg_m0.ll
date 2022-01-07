; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8
@reg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m0(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32**, i32*** @linebuf, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 32
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** @vram, align 8
  %17 = load i32*, i32** @reg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 10
  %21 = and i32 %20, 15360
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 248
  %24 = shl i32 %23, 2
  %25 = add nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %16, i64 %26
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** @vram, align 8
  %29 = load i32*, i32** @reg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 6
  %33 = and i32 %32, 16320
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** @vram, align 8
  %37 = load i32*, i32** @reg, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 11
  %41 = and i32 %40, 14336
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 7
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %36, i64 %45
  store i32* %46, i32** %11, align 8
  store i32 32, i32* %4, align 4
  br label %47

47:                                               ; preds = %143, %2
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  %50 = load i32, i32* %48, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 7
  %66 = and i32 %65, 1
  %67 = shl i32 %66, 2
  %68 = ashr i32 %63, %67
  %69 = and i32 %68, 15
  %70 = or i32 16, %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 6
  %76 = and i32 %75, 1
  %77 = shl i32 %76, 2
  %78 = ashr i32 %73, %77
  %79 = and i32 %78, 15
  %80 = or i32 16, %79
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 5
  %86 = and i32 %85, 1
  %87 = shl i32 %86, 2
  %88 = ashr i32 %83, %87
  %89 = and i32 %88, 15
  %90 = or i32 16, %89
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 4
  %96 = and i32 %95, 1
  %97 = shl i32 %96, 2
  %98 = ashr i32 %93, %97
  %99 = and i32 %98, 15
  %100 = or i32 16, %99
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = ashr i32 %104, 3
  %106 = and i32 %105, 1
  %107 = shl i32 %106, 2
  %108 = ashr i32 %103, %107
  %109 = and i32 %108, 15
  %110 = or i32 16, %109
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = ashr i32 %114, 2
  %116 = and i32 %115, 1
  %117 = shl i32 %116, 2
  %118 = ashr i32 %113, %117
  %119 = and i32 %118, 15
  %120 = or i32 16, %119
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = ashr i32 %124, 1
  %126 = and i32 %125, 1
  %127 = shl i32 %126, 2
  %128 = ashr i32 %123, %127
  %129 = and i32 %128, 15
  %130 = or i32 16, %129
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 0
  %136 = and i32 %135, 1
  %137 = shl i32 %136, 2
  %138 = ashr i32 %133, %137
  %139 = and i32 %138, 15
  %140 = or i32 16, %139
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  br label %143

143:                                              ; preds = %47
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %47, label %147

147:                                              ; preds = %143
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
