; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_texture_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_texture_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cg_fbo_params = type { i64, i32, i32, i32, i32, i32 }
%struct.video_tex_info = type { i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.cg_fbo_params*, %struct.video_tex_info*)* @gl_cg_set_texture_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_cg_set_texture_info(i32* %0, %struct.cg_fbo_params* %1, %struct.video_tex_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cg_fbo_params*, align 8
  %6 = alloca %struct.video_tex_info*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cg_fbo_params* %1, %struct.cg_fbo_params** %5, align 8
  store %struct.video_tex_info* %2, %struct.video_tex_info** %6, align 8
  %8 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %9 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %13 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cg_gl_set_texture_parameter(i32 %11, i32 %14)
  %16 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %17 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %20 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %25 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_param_2f(i32 %18, i32 %23, i32 %28)
  %30 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %31 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %34 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %39 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_param_2f(i32 %32, i32 %37, i32 %42)
  %44 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %45 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %48 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %53 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_param_2f(i32 %46, i32 %51, i32 %56)
  %58 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %59 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %62 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %67 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @set_param_2f(i32 %60, i32 %65, i32 %70)
  %72 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %73 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %3
  %77 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %78 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.video_tex_info*, %struct.video_tex_info** %6, align 8
  %82 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @gl_cg_set_coord_array(i64 %79, i32* %80, i32 %83, i32 2)
  br label %85

85:                                               ; preds = %76, %3
  ret void
}

declare dso_local i32 @cg_gl_set_texture_parameter(i32, i32) #1

declare dso_local i32 @set_param_2f(i32, i32, i32) #1

declare dso_local i32 @gl_cg_set_coord_array(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
