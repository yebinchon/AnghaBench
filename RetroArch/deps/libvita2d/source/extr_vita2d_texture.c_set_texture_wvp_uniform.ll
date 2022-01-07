; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_set_texture_wvp_uniform.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_set_texture_wvp_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_vita2d_context = common dso_local global i32 0, align 4
@_vita2d_textureWvpParam = common dso_local global i32 0, align 4
@_vita2d_ortho_matrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_texture_wvp_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_texture_wvp_uniform() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @_vita2d_context, align 4
  %3 = call i32 @sceGxmReserveVertexDefaultUniformBuffer(i32 %2, i8** %1)
  %4 = load i8*, i8** %1, align 8
  %5 = load i32, i32* @_vita2d_textureWvpParam, align 4
  %6 = load i32, i32* @_vita2d_ortho_matrix, align 4
  %7 = call i32 @sceGxmSetUniformDataF(i8* %4, i32 %5, i32 0, i32 16, i32 %6)
  ret void
}

declare dso_local i32 @sceGxmReserveVertexDefaultUniformBuffer(i32, i8**) #1

declare dso_local i32 @sceGxmSetUniformDataF(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
