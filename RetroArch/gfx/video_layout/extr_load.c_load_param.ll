; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load_param.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"video_layout: <param> is missing 'name' attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"lshift\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rshift\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"video_layout: invalid generator <param name=\22%s\22 /> missing increment/shift\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"video_layout: invalid parameter <param name=\22%s\22 /> missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @load_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_param(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i8* @rxml_node_attrib(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @rxml_node_attrib(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @rxml_node_attrib(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %19
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @rxml_node_attrib(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %31, i8** %11, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @rxml_node_attrib(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %33, i8** %12, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i8* @rxml_node_attrib(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41, %38, %29
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @scope_generator(i32* %45, i8* %46, i8* %47, i8* %48, i8* %49, i8* %50)
  br label %57

52:                                               ; preds = %41
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @scope_eval(i32* %53, i8* %54)
  %56 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  store i32 0, i32* %4, align 4
  br label %76

57:                                               ; preds = %44
  br label %75

58:                                               ; preds = %26, %19
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @scope_param(i32* %65, i8* %66, i8* %67)
  br label %74

69:                                               ; preds = %61, %58
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @scope_eval(i32* %70, i8* %71)
  %73 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  store i32 0, i32* %4, align 4
  br label %76

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %57
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %69, %52, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i8* @rxml_node_attrib(i32*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @scope_generator(i32*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @scope_eval(i32*, i8*) #1

declare dso_local i32 @scope_param(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
