; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_find_uniforms_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_find_uniforms_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_uniforms_frame = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TextureSize\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"InputSize\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"TexCoord\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.shader_uniforms_frame*, i8*)* @gl_glsl_find_uniforms_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_glsl_find_uniforms_frame(i32* %0, i32 %1, %struct.shader_uniforms_frame* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.shader_uniforms_frame*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.shader_uniforms_frame* %2, %struct.shader_uniforms_frame** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %13, align 16
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlcpy(i8* %17, i8* %18, i32 64)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %21 = call i32 @strlcat(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 64)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlcpy(i8* %22, i8* %23, i32 64)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %26 = call i32 @strlcat(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 64)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlcpy(i8* %27, i8* %28, i32 64)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %31 = call i32 @strlcat(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 64)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlcpy(i8* %32, i8* %33, i32 64)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %36 = call i32 @strlcat(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 64)
  %37 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %38 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ult i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %45 = call i8* @gl_glsl_get_uniform(i32* %42, i32 %43, i8* %44)
  %46 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %47 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %41, %4
  %49 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %50 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ult i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %57 = call i8* @gl_glsl_get_uniform(i32* %54, i32 %55, i8* %56)
  %58 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %59 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %62 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ult i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %69 = call i8* @gl_glsl_get_uniform(i32* %66, i32 %67, i8* %68)
  %70 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %71 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %74 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %81 = call i32 @gl_glsl_get_attrib(i32* %78, i32 %79, i8* %80)
  %82 = load %struct.shader_uniforms_frame*, %struct.shader_uniforms_frame** %7, align 8
  %83 = getelementptr inbounds %struct.shader_uniforms_frame, %struct.shader_uniforms_frame* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i8* @gl_glsl_get_uniform(i32*, i32, i8*) #1

declare dso_local i32 @gl_glsl_get_attrib(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
