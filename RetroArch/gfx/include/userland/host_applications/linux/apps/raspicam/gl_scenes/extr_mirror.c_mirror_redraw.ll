; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_mirror.c_mirror_redraw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_mirror.c_mirror_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@mirror_redraw.offset = internal global float 0.000000e+00, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@mirror_shader = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@__const.mirror_redraw.varray = private unnamed_addr constant [12 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], align 16
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @mirror_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_redraw(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [12 x float], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %5 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @glClear(i32 %6)
  %8 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @glBindTexture(i32 %8, i32 %11)
  %13 = load float, float* @mirror_redraw.offset, align 4
  %14 = fpext float %13 to double
  %15 = fadd double %14, 5.000000e-02
  %16 = fptrunc double %15 to float
  store float %16, float* @mirror_redraw.offset, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mirror_shader, i32 0, i32 2), align 8
  %18 = call i32 @glUseProgram(i32 %17)
  %19 = call i32 @GLCHK(i32 %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mirror_shader, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @glEnableVertexAttribArray(i32 %22)
  %24 = call i32 @GLCHK(i32 %23)
  %25 = bitcast [12 x float]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([12 x float]* @__const.mirror_redraw.varray to i8*), i64 48, i1 false)
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mirror_shader, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GL_FLOAT, align 4
  %30 = load i32, i32* @GL_FALSE, align 4
  %31 = getelementptr inbounds [12 x float], [12 x float]* %3, i64 0, i64 0
  %32 = call i32 @glVertexAttribPointer(i32 %28, i32 2, i32 %29, i32 %30, i32 0, float* %31)
  %33 = call i32 @GLCHK(i32 %32)
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mirror_shader, i32 0, i32 1), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load float, float* @mirror_redraw.offset, align 4
  %38 = call i32 @glUniform1f(i32 %36, float %37)
  %39 = call i32 @GLCHK(i32 %38)
  %40 = load i32, i32* @GL_TRIANGLES, align 4
  %41 = call i32 @glDrawArrays(i32 %40, i32 0, i32 6)
  %42 = call i32 @GLCHK(i32 %41)
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mirror_shader, i32 0, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @glDisableVertexAttribArray(i32 %45)
  %47 = call i32 @GLCHK(i32 %46)
  %48 = call i32 @glUseProgram(i32 0)
  %49 = call i32 @GLCHK(i32 %48)
  ret i32 0
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @GLCHK(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @glUniform1f(i32, float) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @glDisableVertexAttribArray(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
