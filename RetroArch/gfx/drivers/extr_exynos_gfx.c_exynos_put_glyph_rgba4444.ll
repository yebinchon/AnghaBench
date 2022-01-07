; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_put_glyph_rgba4444.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_put_glyph_rgba4444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.exynos_data = type { %struct.TYPE_5__**, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@defaults = common dso_local global %struct.TYPE_6__* null, align 8
@EXYNOS_IMAGE_FONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_data*, i32*, i32, i32, i32, i32, i32, i32)* @exynos_put_glyph_rgba4444 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_put_glyph_rgba4444(%struct.exynos_data* %0, i32* noalias %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.exynos_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @defaults, align 8
  %24 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %19, align 4
  %28 = load %struct.exynos_data*, %struct.exynos_data** %9, align 8
  %29 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i64, i64* @EXYNOS_IMAGE_FONT, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %20, align 4
  %36 = load %struct.exynos_data*, %struct.exynos_data** %9, align 8
  %37 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = load i32, i32* %19, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %20, align 4
  %48 = mul i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %21, align 8
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %82, %8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %17, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %22, align 4
  %71 = shl i32 %70, 8
  %72 = and i32 %71, 61440
  %73 = or i32 %69, %72
  %74 = load i32*, i32** %21, align 8
  %75 = load i32, i32* %17, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %17, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %18, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %10, align 8
  %89 = load i32, i32* %20, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %21, align 8
  br label %54

93:                                               ; preds = %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
