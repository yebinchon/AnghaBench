; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_hw_api_supported.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_hw_api_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@COMPARE_OP_EQUAL = common dso_local global i32 0, align 4
@COMPARE_OP_GREATER = common dso_local global i32 0, align 4
@COMPARE_OP_GREATER_EQUAL = common dso_local global i32 0, align 4
@COMPARE_OP_LESS = common dso_local global i32 0, align 4
@COMPARE_OP_LESS_EQUAL = common dso_local global i32 0, align 4
@COMPARE_OP_NOT_EQUAL = common dso_local global i32 0, align 4
@GFX_CTX_DIRECT3D10_API = common dso_local global i32 0, align 4
@GFX_CTX_DIRECT3D11_API = common dso_local global i32 0, align 4
@GFX_CTX_DIRECT3D12_API = common dso_local global i32 0, align 4
@GFX_CTX_DIRECT3D8_API = common dso_local global i32 0, align 4
@GFX_CTX_DIRECT3D9_API = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_GL_CORE_CONTEXT = common dso_local global i32 0, align 4
@GFX_CTX_METAL_API = common dso_local global i32 0, align 4
@GFX_CTX_OPENGL_API = common dso_local global i32 0, align 4
@GFX_CTX_OPENGL_ES_API = common dso_local global i32 0, align 4
@GFX_CTX_VULKAN_API = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_info_hw_api_supported(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
