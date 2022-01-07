; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_d3d9_hlsl_load_program.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_d3d9_hlsl_load_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_pass = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"main_fragment\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ps_3_0\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not compile stock fragment shader..\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"main_vertex\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vs_3_0\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Could not compile stock vertex shader..\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Cg/HLSL error:\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Fragment:\0A%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Vertex:\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.shader_pass*, i8*)* @d3d9_hlsl_load_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_hlsl_load_program(i32 %0, %struct.shader_pass* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.shader_pass*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.shader_pass* %1, %struct.shader_pass** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %16 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %15, i32 0, i32 3
  %17 = call i32 @d3d9x_compile_shader(i8* %12, i32 %14, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %10, i32** %8, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %54

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %26 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %25, i32 0, i32 2
  %27 = call i32 @d3d9x_compile_shader(i8* %22, i32 %24, i32* null, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32** %11, i32** %9, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %54

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @d3d9x_get_buffer_ptr(i32* %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %37 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to i8**
  %39 = call i32 @d3d9_create_pixel_shader(i32 %32, i32* %35, i8** %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @d3d9x_get_buffer_ptr(i32* %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %45 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %44, i32 0, i32 0
  %46 = bitcast i32* %45 to i8**
  %47 = call i32 @d3d9_create_vertex_shader(i32 %40, i32* %43, i8** %46)
  %48 = load i32*, i32** %10, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @d3d9x_buffer_release(i8* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @d3d9x_buffer_release(i8* %52)
  store i32 1, i32* %4, align 4
  br label %78

54:                                               ; preds = %29, %19
  %55 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @d3d9x_get_buffer_ptr(i32* %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @d3d9x_get_buffer_ptr(i32* %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32*, i32** %8, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = call i32 @d3d9x_buffer_release(i8* %73)
  %75 = load i32*, i32** %9, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 @d3d9x_buffer_release(i8* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %31
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @d3d9x_compile_shader(i8*, i32, i32*, i32*, i8*, i8*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @d3d9_create_pixel_shader(i32, i32*, i8**) #1

declare dso_local i64 @d3d9x_get_buffer_ptr(i32*) #1

declare dso_local i32 @d3d9_create_vertex_shader(i32, i32*, i8**) #1

declare dso_local i32 @d3d9x_buffer_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
