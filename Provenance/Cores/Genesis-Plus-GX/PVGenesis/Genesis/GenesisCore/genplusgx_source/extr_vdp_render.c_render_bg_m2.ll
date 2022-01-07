; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8
@reg = common dso_local global i32* null, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32**, i32*** @linebuf, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 32
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** @vram, align 8
  %19 = load i32*, i32** @reg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 10
  %23 = and i32 %22, 15360
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 248
  %26 = shl i32 %25, 2
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %18, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** @reg, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 6
  %34 = xor i32 -16321, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** @reg, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 11
  %39 = xor i32 -14337, %38
  store i32 %39, i32* %13, align 4
  %40 = load i64, i64* @system_hw, align 8
  %41 = load i64, i64* @SYSTEM_SMS, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, 8128
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, 6144
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %43, %2
  %49 = load i32*, i32** @vram, align 8
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 192
  %52 = shl i32 %51, 5
  %53 = add nsw i32 8192, %52
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 7
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %49, i64 %59
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** @vram, align 8
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 192
  %64 = shl i32 %63, 5
  %65 = add nsw i32 8192, %64
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 7
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %61, i64 %71
  store i32* %72, i32** %9, align 8
  store i32 32, i32* %4, align 4
  br label %73

73:                                               ; preds = %170, %48
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* %74, align 4
  %77 = shl i32 %76, 3
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = ashr i32 %91, 7
  %93 = and i32 %92, 1
  %94 = shl i32 %93, 2
  %95 = ashr i32 %90, %94
  %96 = and i32 %95, 15
  %97 = or i32 16, %96
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 6
  %103 = and i32 %102, 1
  %104 = shl i32 %103, 2
  %105 = ashr i32 %100, %104
  %106 = and i32 %105, 15
  %107 = or i32 16, %106
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %10, align 8
  store i32 %107, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 5
  %113 = and i32 %112, 1
  %114 = shl i32 %113, 2
  %115 = ashr i32 %110, %114
  %116 = and i32 %115, 15
  %117 = or i32 16, %116
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = ashr i32 %121, 4
  %123 = and i32 %122, 1
  %124 = shl i32 %123, 2
  %125 = ashr i32 %120, %124
  %126 = and i32 %125, 15
  %127 = or i32 16, %126
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %10, align 8
  store i32 %127, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = ashr i32 %131, 3
  %133 = and i32 %132, 1
  %134 = shl i32 %133, 2
  %135 = ashr i32 %130, %134
  %136 = and i32 %135, 15
  %137 = or i32 16, %136
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %6, align 4
  %142 = ashr i32 %141, 2
  %143 = and i32 %142, 1
  %144 = shl i32 %143, 2
  %145 = ashr i32 %140, %144
  %146 = and i32 %145, 15
  %147 = or i32 16, %146
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = ashr i32 %151, 1
  %153 = and i32 %152, 1
  %154 = shl i32 %153, 2
  %155 = ashr i32 %150, %154
  %156 = and i32 %155, 15
  %157 = or i32 16, %156
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %10, align 8
  store i32 %157, i32* %158, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %6, align 4
  %162 = ashr i32 %161, 0
  %163 = and i32 %162, 1
  %164 = shl i32 %163, 2
  %165 = ashr i32 %160, %164
  %166 = and i32 %165, 15
  %167 = or i32 16, %166
  %168 = load i32*, i32** %10, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %10, align 8
  store i32 %167, i32* %168, align 4
  br label %170

170:                                              ; preds = %73
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %73, label %174

174:                                              ; preds = %170
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
