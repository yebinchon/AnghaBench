; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_d3d9_hlsl_load_program_from_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_d3d9_hlsl_load_program_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_pass = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"main_fragment\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ps_3_0\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Could not compile fragment shader program (%s)..\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"main_vertex\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vs_3_0\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Could not compile vertex shader program (%s)..\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Cg/HLSL error:\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Fragment:\0A%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Vertex:\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.shader_pass*, i8*)* @d3d9_hlsl_load_program_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_hlsl_load_program_from_file(i32 %0, %struct.shader_pass* %1, i8* %2) #0 {
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
  %13 = call i64 @string_is_empty(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %19 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %18, i32 0, i32 3
  %20 = call i32 @d3d9x_compile_shader_from_file(i8* %17, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %10, i32** %8, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %57

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %28 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %27, i32 0, i32 2
  %29 = call i32 @d3d9x_compile_shader_from_file(i8* %26, i32* null, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32** %11, i32** %9, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  br label %57

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @d3d9x_get_buffer_ptr(i32* %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %40 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i8**
  %42 = call i32 @d3d9_create_pixel_shader(i32 %35, i32* %38, i8** %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @d3d9x_get_buffer_ptr(i32* %44)
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.shader_pass*, %struct.shader_pass** %6, align 8
  %48 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to i8**
  %50 = call i32 @d3d9_create_vertex_shader(i32 %43, i32* %46, i8** %49)
  %51 = load i32*, i32** %10, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @d3d9x_buffer_release(i8* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @d3d9x_buffer_release(i8* %55)
  store i32 1, i32* %4, align 4
  br label %81

57:                                               ; preds = %31, %22
  %58 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @d3d9x_get_buffer_ptr(i32* %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @d3d9x_get_buffer_ptr(i32* %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32*, i32** %8, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 @d3d9x_buffer_release(i8* %76)
  %78 = load i32*, i32** %9, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = call i32 @d3d9x_buffer_release(i8* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %34, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @d3d9x_compile_shader_from_file(i8*, i32*, i32*, i8*, i8*, i32, i32**, i32**, i32*) #1

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
