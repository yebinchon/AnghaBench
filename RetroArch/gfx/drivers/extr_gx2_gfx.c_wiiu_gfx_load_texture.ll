; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_load_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_load_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@GX2_SURFACE_DIM_TEXTURE_2D = common dso_local global i32 0, align 4
@GX2_TILE_MODE_LINEAR_ALIGNED = common dso_local global i32 0, align 4
@GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8 = common dso_local global i32 0, align 4
@_G = common dso_local global i32 0, align 4
@_B = common dso_local global i32 0, align 4
@_A = common dso_local global i32 0, align 4
@_R = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_TEXTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32)* @wiiu_gfx_load_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wiiu_gfx_load_texture(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.texture_image*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.texture_image*
  store %struct.texture_image* %17, %struct.texture_image** %12, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %138

21:                                               ; preds = %4
  %22 = call %struct.TYPE_5__* @calloc(i32 1, i32 64)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %13, align 8
  %23 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %24 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %30 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @GX2_SURFACE_DIM_TEXTURE_2D, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 9
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @GX2_TILE_MODE_LINEAR_ALIGNED, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @_G, align 4
  %53 = load i32, i32* @_B, align 4
  %54 = load i32, i32* @_A, align 4
  %55 = load i32, i32* @_R, align 4
  %56 = call i32 @GX2_COMP_SEL(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_6__* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = call i32 @GX2InitTextureRegs(%struct.TYPE_5__* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @MEM2_alloc(i32 %67, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  store i64 %72, i64* %75, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %122, %21
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %79 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %83, %87
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi i1 [ false, %76 ], [ %88, %82 ]
  br i1 %90, label %91, label %125

91:                                               ; preds = %89
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %97, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %96, i64 %103
  %105 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %106 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %110 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %107, %113
  %115 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %116 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memcpy(i32* %104, i64 %114, i32 %120)
  br label %122

122:                                              ; preds = %91
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %76

125:                                              ; preds = %89
  %126 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_TEXTURE, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @GX2Invalidate(i32 %126, i64 %130, i32 %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %137 = ptrtoint %struct.TYPE_5__* %136 to i64
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %125, %20
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @GX2_COMP_SEL(i32, i32, i32, i32) #1

declare dso_local i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_6__*) #1

declare dso_local i32 @GX2InitTextureRegs(%struct.TYPE_5__*) #1

declare dso_local i64 @MEM2_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @GX2Invalidate(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
