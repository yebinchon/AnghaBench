; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_init_hw_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_init_hw_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.retro_hw_render_callback = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"[GL]: Initializing HW render (%u x %u).\0A\00", align 1
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@RARCH_GL_MAX_RENDERBUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"[GL]: Max texture size: %d px, renderbuffer size: %d px.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[GL]: Supports FBO (render-to-texture).\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@RARCH_GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@RARCH_GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@RARCH_GL_RENDERBUFFER = common dso_local global i32 0, align 4
@RARCH_GL_DEPTH24_STENCIL8 = common dso_local global i32 0, align 4
@GL_DEPTH_COMPONENT16 = common dso_local global i32 0, align 4
@GL_DEPTH_STENCIL_ATTACHMENT = common dso_local global i32 0, align 4
@RARCH_GL_DEPTH_ATTACHMENT = common dso_local global i32 0, align 4
@RARCH_GL_FRAMEBUFFER_COMPLETE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"[GL]: Failed to create HW render FBO #%u, error: 0x%04x.\0A\00", align 1
@RARCH_GL_STENCIL_ATTACHMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32)* @gl2_renderchain_init_hw_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl2_renderchain_init_hw_render(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.retro_hw_render_callback*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = call %struct.retro_hw_render_callback* (...) @video_driver_get_hw_context()
  store %struct.retro_hw_render_callback* %17, %struct.retro_hw_render_callback** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_6__* %18, i32 1)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %24 = call i32 @glGetIntegerv(i32 %23, i32* %14)
  %25 = load i32, i32* @RARCH_GL_MAX_RENDERBUFFER_SIZE, align 4
  %26 = call i32 @glGetIntegerv(i32 %25, i32* %15)
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %164

35:                                               ; preds = %4
  %36 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @GL_TEXTURE_2D, align 4
  %38 = call i32 @glBindTexture(i32 %37, i32 0)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @gl2_gen_fb(i32 %41, i32* %44)
  %46 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %16, align 8
  %47 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %16, align 8
  %50 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %35
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @gl2_gen_rb(i32 %57, i32* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %54, %35
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %155, %64
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %158

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gl2_bind_fb(i32 %78)
  %80 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %81 = load i32, i32* @RARCH_GL_COLOR_ATTACHMENT0, align 4
  %82 = load i32, i32* @GL_TEXTURE_2D, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gl2_fb_texture_2d(i32 %80, i32 %81, i32 %82, i32 %89, i32 0)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %144

93:                                               ; preds = %71
  %94 = load i32, i32* @RARCH_GL_RENDERBUFFER, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gl2_bind_rb(i32 %94, i32 %101)
  %103 = load i32, i32* @RARCH_GL_RENDERBUFFER, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* @RARCH_GL_DEPTH24_STENCIL8, align 4
  br label %110

108:                                              ; preds = %93
  %109 = load i32, i32* @GL_DEPTH_COMPONENT16, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @gl2_rb_storage(i32 %103, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @RARCH_GL_RENDERBUFFER, align 4
  %116 = call i32 @gl2_bind_rb(i32 %115, i32 0)
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %110
  %120 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %121 = load i32, i32* @GL_DEPTH_STENCIL_ATTACHMENT, align 4
  %122 = load i32, i32* @RARCH_GL_RENDERBUFFER, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gl2_fb_rb(i32 %120, i32 %121, i32 %122, i32 %129)
  br label %143

131:                                              ; preds = %110
  %132 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %133 = load i32, i32* @RARCH_GL_DEPTH_ATTACHMENT, align 4
  %134 = load i32, i32* @RARCH_GL_RENDERBUFFER, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @gl2_fb_rb(i32 %132, i32 %133, i32 %134, i32 %141)
  br label %143

143:                                              ; preds = %131, %119
  br label %144

144:                                              ; preds = %143, %71
  %145 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %146 = call i64 @gl2_check_fb_status(i32 %145)
  store i64 %146, i64* %10, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @RARCH_GL_FRAMEBUFFER_COMPLETE, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* %11, align 4
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %151, i64 %152)
  store i32 0, i32* %5, align 4
  br label %164

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %65

158:                                              ; preds = %65
  %159 = call i32 (...) @gl2_renderchain_bind_backbuffer()
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_6__* %162, i32 0)
  store i32 1, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %150, %34
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local %struct.retro_hw_render_callback* @video_driver_get_hw_context(...) #1

declare dso_local i32 @gl2_context_bind_hw_render(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @gl2_gen_fb(i32, i32*) #1

declare dso_local i32 @gl2_gen_rb(i32, i32*) #1

declare dso_local i32 @gl2_bind_fb(i32) #1

declare dso_local i32 @gl2_fb_texture_2d(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gl2_bind_rb(i32, i32) #1

declare dso_local i32 @gl2_rb_storage(i32, i32, i32, i32) #1

declare dso_local i32 @gl2_fb_rb(i32, i32, i32, i32) #1

declare dso_local i64 @gl2_check_fb_status(i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32, i64) #1

declare dso_local i32 @gl2_renderchain_bind_backbuffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
