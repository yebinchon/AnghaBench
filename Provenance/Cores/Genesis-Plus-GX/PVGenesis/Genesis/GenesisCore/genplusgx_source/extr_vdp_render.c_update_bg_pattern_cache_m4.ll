; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_update_bg_pattern_cache_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_update_bg_pattern_cache_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bg_name_list = common dso_local global i64* null, align 8
@bg_name_dirty = common dso_local global i32* null, align 8
@bg_pattern_cache = common dso_local global i32* null, align 8
@vram = common dso_local global i32* null, align 8
@bp_lut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_bg_pattern_cache_m4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %130, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %133

16:                                               ; preds = %12
  %17 = load i64*, i64** @bg_name_list, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %123, %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %126

25:                                               ; preds = %22
  %26 = load i32*, i32** @bg_name_dirty, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %122

34:                                               ; preds = %25
  %35 = load i32*, i32** @bg_pattern_cache, align 8
  %36 = load i64, i64* %8, align 8
  %37 = shl i64 %36, 6
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** @vram, align 8
  %40 = load i64, i64* %8, align 8
  %41 = shl i64 %40, 5
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = or i64 %41, %44
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = bitcast i32* %46 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i32*, i32** @vram, align 8
  %50 = load i64, i64* %8, align 8
  %51 = shl i64 %50, 5
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = or i64 %51, %54
  %56 = or i64 %55, 2
  %57 = getelementptr inbounds i32, i32* %49, i64 %56
  %58 = bitcast i32* %57 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i32*, i32** @bp_lut, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 2
  %65 = load i32*, i32** @bp_lut, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %64, %68
  store i32 %69, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %118, %34
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %121

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 %78, 3
  %80 = or i32 0, %79
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  store i32 %76, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 %87, 3
  %89 = or i32 32768, %88
  %90 = load i32, i32* %4, align 4
  %91 = xor i32 %90, 7
  %92 = or i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %86, i64 %93
  store i32 %85, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %5, align 4
  %98 = xor i32 %97, 7
  %99 = shl i32 %98, 3
  %100 = or i32 65536, %99
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %96, i64 %103
  store i32 %95, i32* %104, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %5, align 4
  %108 = xor i32 %107, 7
  %109 = shl i32 %108, 3
  %110 = or i32 98304, %109
  %111 = load i32, i32* %4, align 4
  %112 = xor i32 %111, 7
  %113 = or i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  store i32 %105, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  %117 = ashr i32 %116, 4
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %73
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %70

121:                                              ; preds = %70
  br label %122

122:                                              ; preds = %121, %25
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %22

126:                                              ; preds = %22
  %127 = load i32*, i32** @bg_name_dirty, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %12

133:                                              ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
