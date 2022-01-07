; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_compile_program.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_compile_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_program_info = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.shader_program_glsl_data* }
%struct.shader_program_glsl_data = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"[GLSL]: Found GLSL vertex shader.\0A\00", align 1
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"#define VERTEX\0A#define PARAMETER_UNIFORM\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to compile vertex shader #%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"[GLSL]: Found GLSL fragment shader.\0A\00", align 1
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"#define FRAGMENT\0A#define PARAMETER_UNIFORM\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to compile fragment shader #%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"[GLSL]: Linking GLSL program.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to link program #%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.shader_program_info*)* @gl_glsl_compile_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_glsl_compile_program(i8* %0, i32 %1, i8* %2, %struct.shader_program_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.shader_program_info*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.shader_program_glsl_data*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.shader_program_info* %3, %struct.shader_program_info** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.shader_program_glsl_data*
  store %struct.shader_program_glsl_data* %16, %struct.shader_program_glsl_data** %11, align 8
  %17 = call i64 (...) @glCreateProgram()
  store i64 %17, i64* %12, align 8
  %18 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %19 = icmp ne %struct.shader_program_glsl_data* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %23, i64 %25
  store %struct.shader_program_glsl_data* %26, %struct.shader_program_glsl_data** %11, align 8
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %141

31:                                               ; preds = %27
  %32 = load %struct.shader_program_info*, %struct.shader_program_info** %9, align 8
  %33 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %39 = call i8* @glCreateShader(i32 %38)
  %40 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %41 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %44 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.shader_program_info*, %struct.shader_program_info** %9, align 8
  %47 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gl_glsl_compile_shader(%struct.TYPE_4__* %42, i8* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %141

54:                                               ; preds = %36
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %57 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @glAttachShader(i64 %55, i8* %58)
  br label %60

60:                                               ; preds = %54, %31
  %61 = load %struct.shader_program_info*, %struct.shader_program_info** %9, align 8
  %62 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %68 = call i8* @glCreateShader(i32 %67)
  %69 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %70 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %73 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.shader_program_info*, %struct.shader_program_info** %9, align 8
  %76 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gl_glsl_compile_shader(%struct.TYPE_4__* %71, i8* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %141

83:                                               ; preds = %65
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %86 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @glAttachShader(i64 %84, i8* %87)
  br label %89

89:                                               ; preds = %83, %60
  %90 = load %struct.shader_program_info*, %struct.shader_program_info** %9, align 8
  %91 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.shader_program_info*, %struct.shader_program_info** %9, align 8
  %96 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %94, %89
  %100 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @gl_glsl_link_program(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %141

105:                                              ; preds = %99
  %106 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %107 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %112 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @glDeleteShader(i8* %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %117 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %122 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @glDeleteShader(i8* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %127 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %126, i32 0, i32 2
  store i8* null, i8** %127, align 8
  %128 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %129 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %128, i32 0, i32 1
  store i8* null, i8** %129, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @glUseProgram(i64 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @gl_glsl_get_uniform(%struct.TYPE_4__* %132, i64 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %135 = call i32 @glUniform1i(i32 %134, i32 0)
  %136 = call i32 @glUseProgram(i64 0)
  br label %137

137:                                              ; preds = %125, %94
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %140 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  store i32 1, i32* %5, align 4
  br label %146

141:                                              ; preds = %104, %80, %51, %30
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  %144 = load %struct.shader_program_glsl_data*, %struct.shader_program_glsl_data** %11, align 8
  %145 = getelementptr inbounds %struct.shader_program_glsl_data, %struct.shader_program_glsl_data* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i64 @glCreateProgram(...) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i8* @glCreateShader(i32) #1

declare dso_local i32 @gl_glsl_compile_shader(%struct.TYPE_4__*, i8*, i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @glAttachShader(i64, i8*) #1

declare dso_local i32 @gl_glsl_link_program(i64) #1

declare dso_local i32 @glDeleteShader(i8*) #1

declare dso_local i32 @glUseProgram(i64) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @gl_glsl_get_uniform(%struct.TYPE_4__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
