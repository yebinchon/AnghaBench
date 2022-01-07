; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_init_hw_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_init_hw_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.retro_hw_render_callback = type { i64, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"[GLCore]: Initializing HW render (%u x %u).\0A\00", align 1
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@GL_MAX_RENDERBUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"[GLCore]: Max texture size: %d px, renderbuffer size: %d px.\0A\00", align 1
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_RENDERBUFFER = common dso_local global i32 0, align 4
@GL_DEPTH24_STENCIL8 = common dso_local global i32 0, align 4
@GL_DEPTH_COMPONENT16 = common dso_local global i32 0, align 4
@GL_DEPTH_STENCIL_ATTACHMENT = common dso_local global i32 0, align 4
@GL_DEPTH_ATTACHMENT = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"[GLCore]: Framebuffer is not complete.\0A\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_STENCIL_BUFFER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @gl_core_init_hw_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_core_init_hw_render(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.retro_hw_render_callback*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call %struct.retro_hw_render_callback* (...) @video_driver_get_hw_context()
  store %struct.retro_hw_render_callback* %12, %struct.retro_hw_render_callback** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_4__* %13, i32 1)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %19 = call i32 @glGetIntegerv(i32 %18, i32* %8)
  %20 = load i32, i32* @GL_MAX_RENDERBUFFER_SIZE, align 4
  %21 = call i32 @glGetIntegerv(i32 %20, i32* %9)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = call i32 @glGenFramebuffers(i32 1, i32* %50)
  %52 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @glBindFramebuffer(i32 %52, i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = call i32 @glGenTextures(i32 1, i32* %58)
  %60 = load i32, i32* @GL_TEXTURE_2D, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @glBindTexture(i32 %60, i32 %63)
  %65 = load i32, i32* @GL_TEXTURE_2D, align 4
  %66 = load i32, i32* @GL_RGBA8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @glTexStorage2D(i32 %65, i32 1, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %71 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %72 = load i32, i32* @GL_TEXTURE_2D, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @glFramebufferTexture2D(i32 %70, i32 %71, i32 %72, i32 %75, i32 0)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %80 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %85 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %48
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = call i32 @glGenRenderbuffers(i32 1, i64* %90)
  %92 = load i32, i32* @GL_RENDERBUFFER, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @glBindRenderbuffer(i32 %92, i64 %95)
  %97 = load i32, i32* @GL_RENDERBUFFER, align 4
  %98 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %99 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* @GL_DEPTH24_STENCIL8, align 4
  br label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @GL_DEPTH_COMPONENT16, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @glRenderbufferStorage(i32 %97, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @GL_RENDERBUFFER, align 4
  %112 = call i32 @glBindRenderbuffer(i32 %111, i64 0)
  %113 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %114 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %119 = load i32, i32* @GL_DEPTH_STENCIL_ATTACHMENT, align 4
  %120 = load i32, i32* @GL_RENDERBUFFER, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @glFramebufferRenderbuffer(i32 %118, i32 %119, i32 %120, i64 %123)
  br label %133

125:                                              ; preds = %106
  %126 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %127 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %128 = load i32, i32* @GL_RENDERBUFFER, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @glFramebufferRenderbuffer(i32 %126, i32 %127, i32 %128, i64 %131)
  br label %133

133:                                              ; preds = %125, %117
  br label %134

134:                                              ; preds = %133, %48
  %135 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %136 = call i64 @glCheckFramebufferStatus(i32 %135)
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @GL_FRAMEBUFFER_COMPLETE, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_4__* %142, i32 0)
  store i32 0, i32* %4, align 4
  br label %190

144:                                              ; preds = %134
  %145 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %146 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %151 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %156 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @GL_STENCIL_BUFFER_BIT, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @glClear(i32 %159)
  br label %175

161:                                              ; preds = %149, %144
  %162 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %11, align 8
  %163 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %168 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @glClear(i32 %169)
  br label %174

171:                                              ; preds = %161
  %172 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %173 = call i32 @glClear(i32 %172)
  br label %174

174:                                              ; preds = %171, %166
  br label %175

175:                                              ; preds = %174, %154
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @GL_TEXTURE_2D, align 4
  %185 = call i32 @glBindTexture(i32 %184, i32 0)
  %186 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %187 = call i32 @glBindFramebuffer(i32 %186, i32 0)
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %189 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_4__* %188, i32 0)
  store i32 1, i32* %4, align 4
  br label %190

190:                                              ; preds = %175, %140
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.retro_hw_render_callback* @video_driver_get_hw_context(...) #1

declare dso_local i32 @gl_core_context_bind_hw_render(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @glGenFramebuffers(i32, i32*) #1

declare dso_local i32 @glBindFramebuffer(i32, i32) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexStorage2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glFramebufferTexture2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glGenRenderbuffers(i32, i64*) #1

declare dso_local i32 @glBindRenderbuffer(i32, i64) #1

declare dso_local i32 @glRenderbufferStorage(i32, i32, i32, i32) #1

declare dso_local i32 @glFramebufferRenderbuffer(i32, i32, i32, i64) #1

declare dso_local i64 @glCheckFramebufferStatus(i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @glClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
