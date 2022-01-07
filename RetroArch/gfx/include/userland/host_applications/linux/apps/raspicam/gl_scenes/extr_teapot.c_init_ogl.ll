; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_teapot.c_init_ogl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_teapot.c_init_ogl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@__const.init_ogl.noAmbient = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@GL_LIGHT0 = common dso_local global i32 0, align 4
@GL_AMBIENT = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_ogl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ogl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x float], align 16
  store i32* %0, i32** %2, align 8
  %4 = call i32 @glClearColor(float 0x3FDF2339C0000000, float 0x3FDCF0D840000000, float 0x3FE05A5120000000, float 1.000000e+00)
  %5 = load i32, i32* @GL_CULL_FACE, align 4
  %6 = call i32 @glEnable(i32 %5)
  %7 = load i32, i32* @GL_DEPTH_TEST, align 4
  %8 = call i32 @glEnable(i32 %7)
  %9 = call i32 @glClearDepthf(double 1.000000e+00)
  %10 = load i32, i32* @GL_LEQUAL, align 4
  %11 = call i32 @glDepthFunc(i32 %10)
  %12 = bitcast [4 x float]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x float]* @__const.init_ogl.noAmbient to i8*), i64 16, i1 false)
  %13 = load i32, i32* @GL_LIGHT0, align 4
  %14 = load i32, i32* @GL_AMBIENT, align 4
  %15 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 0
  %16 = call i32 @glLightfv(i32 %13, i32 %14, float* %15)
  %17 = load i32, i32* @GL_LIGHT0, align 4
  %18 = call i32 @glEnable(i32 %17)
  %19 = load i32, i32* @GL_LIGHTING, align 4
  %20 = call i32 @glEnable(i32 %19)
  ret void
}

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glClearDepthf(double) #1

declare dso_local i32 @glDepthFunc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @glLightfv(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
