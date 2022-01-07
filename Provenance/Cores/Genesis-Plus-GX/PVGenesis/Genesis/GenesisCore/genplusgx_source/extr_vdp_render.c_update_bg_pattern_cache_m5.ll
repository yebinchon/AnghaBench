; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_update_bg_pattern_cache_m5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_update_bg_pattern_cache_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bg_name_list = common dso_local global i64* null, align 8
@bg_name_dirty = common dso_local global i32* null, align 8
@bg_pattern_cache = common dso_local global i32* null, align 8
@vram = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_bg_pattern_cache_m5(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %106, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %109

14:                                               ; preds = %10
  %15 = load i64*, i64** @bg_name_list, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %99, %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %102

23:                                               ; preds = %20
  %24 = load i32*, i32** @bg_name_dirty, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %98

32:                                               ; preds = %23
  %33 = load i32*, i32** @bg_pattern_cache, align 8
  %34 = load i64, i64* %8, align 8
  %35 = shl i64 %34, 6
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** @vram, align 8
  %38 = load i64, i64* %8, align 8
  %39 = shl i64 %38, 5
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = or i64 %39, %42
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %94, %32
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %97

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 15
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 3
  %56 = or i32 0, %55
  %57 = load i32, i32* %4, align 4
  %58 = xor i32 %57, 7
  %59 = or i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %53, i64 %60
  store i32 %52, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 3
  %66 = or i32 131072, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  store i32 %62, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = xor i32 %73, 7
  %75 = shl i32 %74, 3
  %76 = or i32 262144, %75
  %77 = load i32, i32* %4, align 4
  %78 = xor i32 %77, 7
  %79 = or i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  store i32 %71, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %5, align 4
  %85 = xor i32 %84, 7
  %86 = shl i32 %85, 3
  %87 = or i32 393216, %86
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  store i32 %82, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %49
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %46

97:                                               ; preds = %46
  br label %98

98:                                               ; preds = %97, %23
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %20

102:                                              ; preds = %20
  %103 = load i32*, i32** @bg_name_dirty, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %10

109:                                              ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
