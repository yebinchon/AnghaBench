; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_resolve_current_parameters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_resolve_current_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i32, i32 }
%struct.video_shader_parameter = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"[CGP/GLSLP]: Parameter %s is set in the preset, but no shader uses this parameter, ignoring.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"[CGP/GLSLP]: Parameter %s is not set in preset.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_shader_resolve_current_parameters(i32* %0, %struct.video_shader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.video_shader*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_shader_parameter*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.video_shader* %1, %struct.video_shader** %5, align 8
  store i64 4096, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %69

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @config_get_array(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @free(i8* %30)
  store i32 1, i32* %3, align 4
  br label %69

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strtok_r(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %64, %32
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %40 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %43 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @video_shader_parse_find_parameter(i32 %41, i32 %44, i8* %45)
  %47 = inttoptr i64 %46 to %struct.video_shader_parameter*
  store %struct.video_shader_parameter* %47, %struct.video_shader_parameter** %10, align 8
  %48 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %10, align 8
  %49 = icmp ne %struct.video_shader_parameter* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %64

53:                                               ; preds = %38
  %54 = load i32*, i32** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.video_shader_parameter*, %struct.video_shader_parameter** %10, align 8
  %57 = getelementptr inbounds %struct.video_shader_parameter, %struct.video_shader_parameter* %56, i32 0, i32 0
  %58 = call i32 @config_get_float(i32* %54, i8* %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %53
  br label %64

64:                                               ; preds = %63, %50
  %65 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %65, i8** %7, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %29, %20, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @config_get_array(i32*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @video_shader_parse_find_parameter(i32, i32, i8*) #1

declare dso_local i32 @RARCH_WARN(i8*, i8*) #1

declare dso_local i32 @config_get_float(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
