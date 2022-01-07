; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_vcsm_square.c_vcsm_square_redraw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_vcsm_square.c_vcsm_square_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@fb_name = common dso_local global i32 0, align 4
@fb_width = common dso_local global i32 0, align 4
@fb_height = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@vcsm_square_oes_shader = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GL_TEXTURE0 = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@quad_vbo = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@vcsm_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VCSM_CACHE_TYPE_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to lock VCSM buffer for handle %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Locked vcsm handle %d at %p\0A\00", align 1
@vcsm_square_shader = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@fb_tex_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @vcsm_square_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcsm_square_redraw(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load i32, i32* @VCOS_FUNCTION, align 4
  %7 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @glClearColor(i32 255, i32 0, i32 0, i32 255)
  %9 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %10 = load i32, i32* @fb_name, align 4
  %11 = call i32 @glBindFramebuffer(i32 %9, i32 %10)
  %12 = call i32 @GLCHK(i32 %11)
  %13 = load i32, i32* @fb_width, align 4
  %14 = load i32, i32* @fb_height, align 4
  %15 = call i32 @glViewport(i32 0, i32 0, i32 %13, i32 %14)
  %16 = call i32 @GLCHK(i32 %15)
  %17 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %18 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @glClear(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vcsm_square_oes_shader, i32 0, i32 1), align 8
  %22 = call i32 @glUseProgram(i32 %21)
  %23 = call i32 @GLCHK(i32 %22)
  %24 = load i32, i32* @GL_TEXTURE0, align 4
  %25 = call i32 @glActiveTexture(i32 %24)
  %26 = call i32 @GLCHK(i32 %25)
  %27 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @glBindTexture(i32 %27, i32 %30)
  %32 = call i32 @GLCHK(i32 %31)
  %33 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %34 = load i32, i32* @quad_vbo, align 4
  %35 = call i32 @glBindBuffer(i32 %33, i32 %34)
  %36 = call i32 @GLCHK(i32 %35)
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vcsm_square_oes_shader, i32 0, i32 0), align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @glEnableVertexAttribArray(i32 %39)
  %41 = call i32 @GLCHK(i32 %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vcsm_square_oes_shader, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GL_FLOAT, align 4
  %46 = load i32, i32* @GL_FALSE, align 4
  %47 = call i32 @glVertexAttribPointer(i32 %44, i32 2, i32 %45, i32 %46, i32 0, i32 0)
  %48 = call i32 @GLCHK(i32 %47)
  %49 = load i32, i32* @GL_TRIANGLES, align 4
  %50 = call i32 @glDrawArrays(i32 %49, i32 0, i32 6)
  %51 = call i32 @GLCHK(i32 %50)
  %52 = call i32 (...) @glFinish()
  %53 = call i32 @GLCHK(i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcsm_info, i32 0, i32 0), align 4
  %55 = load i32, i32* @VCSM_CACHE_TYPE_HOST, align 4
  %56 = call i64 @vcsm_lock_cache(i32 %54, i32 %55, i32* %5)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %1
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcsm_info, i32 0, i32 0), align 4
  %62 = call i32 @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i32 -1, i32* %2, align 4
  br label %120

63:                                               ; preds = %1
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vcsm_info, i32 0, i32 0), align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %64, i8* %65)
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @vcsm_square_draw_pattern(i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @vcsm_unlock_ptr(i8* %69)
  %71 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %72 = call i32 @glBindFramebuffer(i32 %71, i32 0)
  %73 = call i32 @GLCHK(i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @glViewport(i32 %76, i32 %79, i32 %82, i32 %85)
  %87 = call i32 @GLCHK(i32 %86)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vcsm_square_shader, i32 0, i32 1), align 8
  %89 = call i32 @glUseProgram(i32 %88)
  %90 = call i32 @GLCHK(i32 %89)
  %91 = load i32, i32* @GL_TEXTURE0, align 4
  %92 = call i32 @glActiveTexture(i32 %91)
  %93 = call i32 @GLCHK(i32 %92)
  %94 = load i32, i32* @GL_TEXTURE_2D, align 4
  %95 = load i32, i32* @fb_tex_name, align 4
  %96 = call i32 @glBindTexture(i32 %94, i32 %95)
  %97 = call i32 @GLCHK(i32 %96)
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vcsm_square_shader, i32 0, i32 0), align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @glEnableVertexAttribArray(i32 %100)
  %102 = call i32 @GLCHK(i32 %101)
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vcsm_square_shader, i32 0, i32 0), align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GL_FLOAT, align 4
  %107 = load i32, i32* @GL_FALSE, align 4
  %108 = call i32 @glVertexAttribPointer(i32 %105, i32 2, i32 %106, i32 %107, i32 0, i32 0)
  %109 = call i32 @GLCHK(i32 %108)
  %110 = load i32, i32* @GL_TRIANGLES, align 4
  %111 = call i32 @glDrawArrays(i32 %110, i32 0, i32 6)
  %112 = call i32 @GLCHK(i32 %111)
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vcsm_square_shader, i32 0, i32 0), align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @glDisableVertexAttribArray(i32 %115)
  %117 = call i32 @GLCHK(i32 %116)
  %118 = call i32 @glUseProgram(i32 0)
  %119 = call i32 @GLCHK(i32 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %63, %60
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @vcos_log_trace(i8*, i32, ...) #1

declare dso_local i32 @glClearColor(i32, i32, i32, i32) #1

declare dso_local i32 @GLCHK(i32) #1

declare dso_local i32 @glBindFramebuffer(i32, i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glActiveTexture(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @glFinish(...) #1

declare dso_local i64 @vcsm_lock_cache(i32, i32, i32*) #1

declare dso_local i32 @vcos_log_error(i8*, i32) #1

declare dso_local i32 @vcsm_square_draw_pattern(i8*) #1

declare dso_local i32 @vcsm_unlock_ptr(i8*) #1

declare dso_local i32 @glDisableVertexAttribArray(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
