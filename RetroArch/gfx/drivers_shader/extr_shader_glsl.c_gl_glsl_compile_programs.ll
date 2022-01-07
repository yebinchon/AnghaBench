; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_compile_programs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_compile_programs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.shader_program_glsl_data = type { i32 }
%struct.shader_program_info = type { i8*, i8*, i32 }
%struct.video_shader_pass = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"Failed to load GLSL shader: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create GL program #%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.shader_program_glsl_data*)* @gl_glsl_compile_programs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_glsl_compile_programs(%struct.TYPE_10__* %0, %struct.shader_program_glsl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.shader_program_glsl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.shader_program_info, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_shader_pass*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.shader_program_glsl_data* %1, %struct.shader_program_glsl_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %81, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %11
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to %struct.video_shader_pass*
  store %struct.video_shader_pass* %28, %struct.video_shader_pass** %10, align 8
  %29 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %30 = icmp ne %struct.video_shader_pass* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %81

32:                                               ; preds = %19
  %33 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %34 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @string_is_empty(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  %40 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %41 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %42 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gl_glsl_load_source_path(%struct.video_shader_pass* %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %49 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %3, align 4
  br label %85

53:                                               ; preds = %39, %32
  %54 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %55 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  %59 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %60 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %7, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %7, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %7, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %71, i64 %73
  %75 = call i32 @gl_glsl_compile_program(%struct.TYPE_10__* %69, i32 %70, %struct.shader_program_glsl_data* %74, %struct.shader_program_info* %7)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %53
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %85

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %31
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %11

84:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %77, %47
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @gl_glsl_load_source_path(%struct.video_shader_pass*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @gl_glsl_compile_program(%struct.TYPE_10__*, i32, %struct.shader_program_glsl_data*, %struct.shader_program_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
