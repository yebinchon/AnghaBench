; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_yuv.c_yuv_redraw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_yuv.c_yuv_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@yuv_shader = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GL_TEXTURE0 = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@varray = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @yuv_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv_redraw(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %4 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @glClear(i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 1), align 8
  %8 = call i32 @glUseProgram(i32 %7)
  %9 = call i32 @GLCHK(i32 %8)
  %10 = load i32, i32* @GL_TEXTURE0, align 4
  %11 = call i32 @glActiveTexture(i32 %10)
  %12 = call i32 @GLCHK(i32 %11)
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glEnableVertexAttribArray(i32 %15)
  %17 = call i32 @GLCHK(i32 %16)
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GL_FLOAT, align 4
  %22 = load i32, i32* @GL_FALSE, align 4
  %23 = load i32, i32* @varray, align 4
  %24 = call i32 @glVertexAttribPointer(i32 %20, i32 2, i32 %21, i32 %22, i32 0, i32 %23)
  %25 = call i32 @GLCHK(i32 %24)
  %26 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @glBindTexture(i32 %26, i32 %29)
  %31 = call i32 @GLCHK(i32 %30)
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @glVertexAttrib2f(i32 %34, float -1.000000e+00, float 1.000000e+00)
  %36 = call i32 @GLCHK(i32 %35)
  %37 = load i32, i32* @GL_TRIANGLES, align 4
  %38 = call i32 @glDrawArrays(i32 %37, i32 0, i32 6)
  %39 = call i32 @GLCHK(i32 %38)
  %40 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @glBindTexture(i32 %40, i32 %43)
  %45 = call i32 @GLCHK(i32 %44)
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @glVertexAttrib2f(i32 %48, float 0.000000e+00, float 1.000000e+00)
  %50 = call i32 @GLCHK(i32 %49)
  %51 = load i32, i32* @GL_TRIANGLES, align 4
  %52 = call i32 @glDrawArrays(i32 %51, i32 0, i32 6)
  %53 = call i32 @GLCHK(i32 %52)
  %54 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @glBindTexture(i32 %54, i32 %57)
  %59 = call i32 @GLCHK(i32 %58)
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @glVertexAttrib2f(i32 %62, float 0.000000e+00, float 0.000000e+00)
  %64 = call i32 @GLCHK(i32 %63)
  %65 = load i32, i32* @GL_TRIANGLES, align 4
  %66 = call i32 @glDrawArrays(i32 %65, i32 0, i32 6)
  %67 = call i32 @GLCHK(i32 %66)
  %68 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @glBindTexture(i32 %68, i32 %71)
  %73 = call i32 @GLCHK(i32 %72)
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @glVertexAttrib2f(i32 %76, float -1.000000e+00, float 0.000000e+00)
  %78 = call i32 @GLCHK(i32 %77)
  %79 = load i32, i32* @GL_TRIANGLES, align 4
  %80 = call i32 @glDrawArrays(i32 %79, i32 0, i32 6)
  %81 = call i32 @GLCHK(i32 %80)
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yuv_shader, i32 0, i32 0), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @glDisableVertexAttribArray(i32 %84)
  %86 = call i32 @GLCHK(i32 %85)
  %87 = call i32 @glUseProgram(i32 0)
  %88 = call i32 @GLCHK(i32 %87)
  ret i32 0
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @GLCHK(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glActiveTexture(i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glVertexAttrib2f(i32, float, float) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @glDisableVertexAttribArray(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
