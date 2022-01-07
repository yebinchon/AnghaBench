; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_drawScene.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_drawScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.drawScene.model_diffuse = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00], align 16
@__const.drawScene.model_specular = private unnamed_addr constant [4 x float] [float 0x3FE3333340000000, float 0x3FE3333340000000, float 0x3FE3333340000000, float 1.000000e+00], align 16
@rot_x = common dso_local global i64 0, align 8
@rot_y = common dso_local global i64 0, align 8
@rot_z = common dso_local global i64 0, align 8
@GL_FRONT = common dso_local global i32 0, align 4
@GL_DIFFUSE = common dso_local global i32 0, align 4
@GL_SPECULAR = common dso_local global i32 0, align 4
@GL_SHININESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @drawScene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawScene() #0 {
  %1 = alloca [4 x float], align 16
  %2 = alloca [4 x float], align 16
  %3 = alloca float, align 4
  %4 = bitcast [4 x float]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x float]* @__const.drawScene.model_diffuse to i8*), i64 16, i1 false)
  %5 = bitcast [4 x float]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x float]* @__const.drawScene.model_specular to i8*), i64 16, i1 false)
  store float 2.000000e+01, float* %3, align 4
  %6 = call i32 (...) @glPushMatrix()
  %7 = load i64, i64* @rot_x, align 8
  %8 = sitofp i64 %7 to float
  %9 = fmul float %8, 5.000000e-01
  %10 = call i32 @glRotatef(float %9, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %11 = load i64, i64* @rot_y, align 8
  %12 = sitofp i64 %11 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = call i32 @glRotatef(float %13, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %15 = load i64, i64* @rot_z, align 8
  %16 = sitofp i64 %15 to float
  %17 = fmul float %16, 5.000000e-01
  %18 = call i32 @glRotatef(float %17, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %19 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 0
  %20 = call i32 @glColor4fv(float* %19)
  %21 = load i32, i32* @GL_FRONT, align 4
  %22 = load i32, i32* @GL_DIFFUSE, align 4
  %23 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 0
  %24 = call i32 @glMaterialfv(i32 %21, i32 %22, float* %23)
  %25 = load i32, i32* @GL_FRONT, align 4
  %26 = load i32, i32* @GL_SPECULAR, align 4
  %27 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  %28 = call i32 @glMaterialfv(i32 %25, i32 %26, float* %27)
  %29 = load i32, i32* @GL_FRONT, align 4
  %30 = load i32, i32* @GL_SHININESS, align 4
  %31 = call i32 @glMaterialf(i32 %29, i32 %30, float 2.000000e+01)
  %32 = call i32 (...) @drawTorus()
  %33 = call i32 (...) @glPopMatrix()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @glPushMatrix(...) #2

declare dso_local i32 @glRotatef(float, float, float, float) #2

declare dso_local i32 @glColor4fv(float*) #2

declare dso_local i32 @glMaterialfv(i32, i32, float*) #2

declare dso_local i32 @glMaterialf(i32, i32, float) #2

declare dso_local i32 @drawTorus(...) #2

declare dso_local i32 @glPopMatrix(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
