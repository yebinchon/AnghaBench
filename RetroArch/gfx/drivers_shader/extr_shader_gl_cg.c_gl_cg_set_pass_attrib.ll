; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_pass_attrib.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_pass_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_program_cg = type { i32, i32 }
%struct.cg_fbo_params = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"%s.texture\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s.video_size\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s.texture_size\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s.tex_coord\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_program_cg*, %struct.cg_fbo_params*, i8*)* @gl_cg_set_pass_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_cg_set_pass_attrib(%struct.shader_program_cg* %0, %struct.cg_fbo_params* %1, i8* %2) #0 {
  %4 = alloca %struct.shader_program_cg*, align 8
  %5 = alloca %struct.cg_fbo_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  store %struct.shader_program_cg* %0, %struct.shader_program_cg** %4, align 8
  store %struct.cg_fbo_params* %1, %struct.cg_fbo_params** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %8, align 16
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @snprintf(i8* %9, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %13 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %12, i32 0, i32 5
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.shader_program_cg*, %struct.shader_program_cg** %4, align 8
  %18 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %21 = call i8* @cgGetNamedParameter(i32 %19, i8* %20)
  %22 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %23 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %16, %3
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %29 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.shader_program_cg*, %struct.shader_program_cg** %4, align 8
  %34 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %37 = call i8* @cgGetNamedParameter(i32 %35, i8* %36)
  %38 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %39 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %42 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.shader_program_cg*, %struct.shader_program_cg** %4, align 8
  %47 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = call i8* @cgGetNamedParameter(i32 %48, i8* %49)
  %51 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %52 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %45, %40
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @snprintf(i8* %54, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %58 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.shader_program_cg*, %struct.shader_program_cg** %4, align 8
  %63 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %66 = call i8* @cgGetNamedParameter(i32 %64, i8* %65)
  %67 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %68 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %53
  %70 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %71 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load %struct.shader_program_cg*, %struct.shader_program_cg** %4, align 8
  %76 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %79 = call i8* @cgGetNamedParameter(i32 %77, i8* %78)
  %80 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %81 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %69
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @snprintf(i8* %83, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %87 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.shader_program_cg*, %struct.shader_program_cg** %4, align 8
  %92 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %95 = call i8* @cgGetNamedParameter(i32 %93, i8* %94)
  %96 = load %struct.cg_fbo_params*, %struct.cg_fbo_params** %5, align 8
  %97 = getelementptr inbounds %struct.cg_fbo_params, %struct.cg_fbo_params* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %90, %82
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @cgGetNamedParameter(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
