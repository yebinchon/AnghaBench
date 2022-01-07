; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_wiiu.c_menu_display_wiiu_draw_pipeline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_wiiu.c_menu_display_wiiu_draw_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_23__*, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { float, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_20__*, %struct.TYPE_26__, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }

@GX2_VERTEX_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER = common dso_local global i32 0, align 4
@GX2_RENDER_TARGET_0 = common dso_local global i32 0, align 4
@GX2_BLEND_MODE_SRC_ALPHA = common dso_local global i32 0, align 4
@GX2_BLEND_MODE_ONE = common dso_local global i32 0, align 4
@GX2_BLEND_COMBINE_MODE_ADD = common dso_local global i32 0, align 4
@GX2_DISABLE = common dso_local global i32 0, align 4
@GX2_UNIFORM_BLOCK_ALIGNMENT = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_28__*)* @menu_display_wiiu_draw_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_wiiu_draw_pipeline(%struct.TYPE_19__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %5, align 8
  %7 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %10, %struct.TYPE_27__** %6, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %12 = icmp ne %struct.TYPE_27__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %174

17:                                               ; preds = %13
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %111 [
    i32 133, label %22
    i32 132, label %22
    i32 131, label %106
    i32 130, label %106
    i32 129, label %106
    i32 128, label %106
  ]

22:                                               ; preds = %17, %17
  %23 = call %struct.TYPE_29__* (...) @menu_display_get_coords_array()
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %5, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = icmp ne %struct.TYPE_20__* %26, null
  br i1 %27, label %71, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GX2_VERTEX_BUFFER_ALIGNMENT, align 4
  %38 = call i8* @MEM2_alloc(i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_20__*
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 3
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %41, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(%struct.TYPE_20__* %44, i32 %48, i32 %56)
  %58 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @GX2Invalidate(i32 %58, %struct.TYPE_20__* %61, i32 %69)
  br label %71

71:                                               ; preds = %28, %22
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %78, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = call i32 @GX2SetAttribBuffer(i32 0, i32 %95, i32 8, %struct.TYPE_20__* %98)
  %100 = load i32, i32* @GX2_RENDER_TARGET_0, align 4
  %101 = load i32, i32* @GX2_BLEND_MODE_SRC_ALPHA, align 4
  %102 = load i32, i32* @GX2_BLEND_MODE_ONE, align 4
  %103 = load i32, i32* @GX2_BLEND_COMBINE_MODE_ADD, align 4
  %104 = load i32, i32* @GX2_DISABLE, align 4
  %105 = call i32 @GX2SetBlendControl(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 0, i32 0, i32 0)
  br label %112

106:                                              ; preds = %17, %17, %17, %17
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = call i32 @GX2SetAttribBuffer(i32 0, i32 64, i32 16, %struct.TYPE_20__* %109)
  br label %112

111:                                              ; preds = %17
  br label %174

112:                                              ; preds = %106, %71
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = icmp ne %struct.TYPE_20__* %115, null
  br i1 %116, label %153, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @GX2_UNIFORM_BLOCK_ALIGNMENT, align 4
  %119 = call i8* @MEM2_alloc(i32 16, i32 %118)
  %120 = bitcast i8* %119 to %struct.TYPE_20__*
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  store %struct.TYPE_20__* %120, %struct.TYPE_20__** %122, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @matrix_4x4_ortho(i32 %127, i32 0, i32 1, i32 1, i32 0, i32 -1, i32 1)
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  store i32 %133, i32* %138, align 4
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  store i32 %143, i32* %148, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  store float 0.000000e+00, float* %152, align 4
  br label %160

153:                                              ; preds = %112
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load float, float* %157, align 4
  %159 = fadd float %158, 0x3F847AE140000000
  store float %159, float* %157, align 4
  br label %160

160:                                              ; preds = %153, %117
  %161 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = call i32 @GX2Invalidate(i32 %161, %struct.TYPE_20__* %164, i32 16)
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = call i32 @GX2SetVertexUniformBlock(i32 1, i32 16, %struct.TYPE_20__* %168)
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = call i32 @GX2SetPixelUniformBlock(i32 1, i32 16, %struct.TYPE_20__* %172)
  br label %174

174:                                              ; preds = %160, %111, %16
  ret void
}

declare dso_local %struct.TYPE_29__* @menu_display_get_coords_array(...) #1

declare dso_local i8* @MEM2_alloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @GX2Invalidate(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @GX2SetAttribBuffer(i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @GX2SetBlendControl(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @matrix_4x4_ortho(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX2SetVertexUniformBlock(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @GX2SetPixelUniformBlock(i32, i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
