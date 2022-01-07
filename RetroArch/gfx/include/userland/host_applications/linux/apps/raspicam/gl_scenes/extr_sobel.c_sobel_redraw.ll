; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_sobel.c_sobel_redraw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_sobel.c_sobel_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@sobel_shader = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GL_TEXTURE0 = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@quad_vbo = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @sobel_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sobel_redraw(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %4 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @glClear(i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sobel_shader, i32 0, i32 1), align 8
  %8 = call i32 @glUseProgram(i32 %7)
  %9 = call i32 @GLCHK(i32 %8)
  %10 = load i32, i32* @GL_TEXTURE0, align 4
  %11 = call i32 @glActiveTexture(i32 %10)
  %12 = call i32 @GLCHK(i32 %11)
  %13 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @glBindTexture(i32 %13, i32 %16)
  %18 = call i32 @GLCHK(i32 %17)
  %19 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %20 = load i32, i32* @quad_vbo, align 4
  %21 = call i32 @glBindBuffer(i32 %19, i32 %20)
  %22 = call i32 @GLCHK(i32 %21)
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sobel_shader, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @glEnableVertexAttribArray(i32 %25)
  %27 = call i32 @GLCHK(i32 %26)
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sobel_shader, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GL_FLOAT, align 4
  %32 = load i32, i32* @GL_FALSE, align 4
  %33 = call i32 @glVertexAttribPointer(i32 %30, i32 2, i32 %31, i32 %32, i32 0, i32 0)
  %34 = call i32 @GLCHK(i32 %33)
  %35 = load i32, i32* @GL_TRIANGLES, align 4
  %36 = call i32 @glDrawArrays(i32 %35, i32 0, i32 6)
  %37 = call i32 @GLCHK(i32 %36)
  ret i32 0
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @GLCHK(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glActiveTexture(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
