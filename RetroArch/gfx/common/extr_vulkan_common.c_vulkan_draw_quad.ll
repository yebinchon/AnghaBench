; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_draw_quad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_draw_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.vk_draw_quad = type { i64, i64, i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.vk_buffer_range = type { i32, i32, i64 }
%struct.vk_vertex = type { i32 }

@VK_PIPELINE_BIND_POINT_GRAPHICS = common dso_local global i32 0, align 4
@VULKAN_DIRTY_DYNAMIC_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_draw_quad(%struct.TYPE_15__* %0, %struct.vk_draw_quad* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.vk_draw_quad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vk_buffer_range, align 8
  %7 = alloca %struct.vk_buffer_range, align 8
  %8 = alloca %struct.vk_buffer_range, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.vk_draw_quad* %1, %struct.vk_draw_quad** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %14 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %13, i32 0, i32 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = call i32 @vulkan_transition_texture(%struct.TYPE_15__* %9, i32 %12, %struct.TYPE_16__* %15)
  %17 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %18 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VK_PIPELINE_BIND_POINT_GRAPHICS, align 4
  %30 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %31 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @vkCmdBindPipeline(i32 %28, i32 %29, i64 %32)
  %34 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %35 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* @VULKAN_DIRTY_DYNAMIC_BIT, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %25, %2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = call i32 @vulkan_check_dynamic_state(%struct.TYPE_15__* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = call i32 @vulkan_buffer_chain_alloc(%struct.TYPE_11__* %51, i32* %55, i32 4, %struct.vk_buffer_range* %6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %191

59:                                               ; preds = %46
  %60 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %61 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = call i64 @string_is_equal_fast(i32* %62, i32* %65, i32 4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %59
  %69 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %70 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %69, i32 0, i32 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %88, label %79

79:                                               ; preds = %68
  %80 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %81 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %82, %86
  br i1 %87, label %88, label %163

88:                                               ; preds = %79, %68, %59
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = call i32 @vulkan_buffer_chain_alloc(%struct.TYPE_11__* %91, i32* %95, i32 4, %struct.vk_buffer_range* %7)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %191

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %7, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %103 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @memcpy(i64 %101, i32* %104, i32 4)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = call i32 @vulkan_descriptor_manager_alloc(i32 %110, i32* %114)
  store i32 %115, i32* %5, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %5, align 4
  %122 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %127 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %126, i32 0, i32 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %130 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @vulkan_write_quad_descriptors(i32 %120, i32 %121, i32 %123, i32 %125, i32 4, %struct.TYPE_16__* %128, i64 %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @VK_PIPELINE_BIND_POINT_GRAPHICS, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @vkCmdBindDescriptorSets(i32 %135, i32 %136, i32 %140, i32 0, i32 1, i32* %5, i32 0, i32* null)
  %142 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %143 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %142, i32 0, i32 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  store i64 %146, i64* %149, align 8
  %150 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %151 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  store i64 %152, i64* %155, align 8
  %156 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %157 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %99, %79
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = call i32 @vulkan_buffer_chain_alloc(%struct.TYPE_11__* %166, i32* %170, i32 24, %struct.vk_buffer_range* %8)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %163
  br label %191

174:                                              ; preds = %163
  %175 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %8, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to %struct.vk_vertex*
  %178 = load %struct.vk_draw_quad*, %struct.vk_draw_quad** %4, align 8
  %179 = getelementptr inbounds %struct.vk_draw_quad, %struct.vk_draw_quad* %178, i32 0, i32 2
  %180 = call i32 @vulkan_write_quad_vbo(%struct.vk_vertex* %177, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %8, i32 0, i32 1
  %185 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %8, i32 0, i32 0
  %186 = call i32 @vkCmdBindVertexBuffers(i32 %183, i32 0, i32 1, i32* %184, i32* %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @vkCmdDraw(i32 %189, i32 6, i32 1, i32 0, i32 0)
  br label %191

191:                                              ; preds = %174, %173, %98, %58
  ret void
}

declare dso_local i32 @vulkan_transition_texture(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vkCmdBindPipeline(i32, i32, i64) #1

declare dso_local i32 @vulkan_check_dynamic_state(%struct.TYPE_15__*) #1

declare dso_local i32 @vulkan_buffer_chain_alloc(%struct.TYPE_11__*, i32*, i32, %struct.vk_buffer_range*) #1

declare dso_local i64 @string_is_equal_fast(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @vulkan_descriptor_manager_alloc(i32, i32*) #1

declare dso_local i32 @vulkan_write_quad_descriptors(i32, i32, i32, i32, i32, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @vkCmdBindDescriptorSets(i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @vulkan_write_quad_vbo(%struct.vk_vertex*, float, float, float, float, float, float, float, float, i32*) #1

declare dso_local i32 @vkCmdBindVertexBuffers(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @vkCmdDraw(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
