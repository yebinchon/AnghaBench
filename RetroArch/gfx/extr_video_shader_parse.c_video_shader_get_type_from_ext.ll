; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_get_type_from_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_get_type_from_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_SHADER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cgp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"glslp\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"slangp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cg\00", align 1
@RARCH_SHADER_CG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"glsl\00", align 1
@RARCH_SHADER_GLSL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"slang\00", align 1
@RARCH_SHADER_SLANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_shader_get_type_from_ext(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @string_is_empty(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %10, i32* %3, align 4
  br label %75

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %21, %15, %11
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @string_is_equal_case_insensitive(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @string_is_equal_case_insensitive(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @string_is_equal_case_insensitive(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = phi i1 [ true, %31 ], [ true, %27 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @string_is_equal_case_insensitive(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @string_is_equal_case_insensitive(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @RARCH_SHADER_CG, align 4
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @string_is_equal_case_insensitive(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @string_is_equal_case_insensitive(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @RARCH_SHADER_GLSL, align 4
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @string_is_equal_case_insensitive(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = call i64 @string_is_equal_case_insensitive(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @RARCH_SHADER_SLANG, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71, %61, %51, %9
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @string_is_equal_case_insensitive(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
