; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_subtitle_short_description.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_subtitle_short_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@IMPORTSRT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Codeset\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SSA\00", align 1
@IMPORTSSA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"%s (%s)(%s)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Foreign Audio Scan\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ghb_subtitle_short_description(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @ghb_dict_get(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %18 = load i32, i32* @IMPORTSRT, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @ghb_dict_get_string(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @ghb_dict_get_string(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @ghb_dict_get_string(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @IMPORTSSA, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %27, %17
  %34 = load i8*, i8** %9, align 8
  %35 = call %struct.TYPE_3__* @lang_lookup(i8* %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %11, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @IMPORTSRT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i8* (i8*, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  store i8* %60, i8** %6, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* (i8*, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %62, i8* %63)
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %61, %56
  br label %78

66:                                               ; preds = %2
  %67 = load i32*, i32** %3, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %71 = call i8* @g_strdup(i32 %70)
  store i8* %71, i8** %6, align 8
  br label %77

72:                                               ; preds = %66
  %73 = load i32*, i32** %3, align 8
  %74 = call i8* @ghb_dict_get_string(i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i8* (i8*, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %65
  %79 = load i8*, i8** %6, align 8
  ret i8* %79
}

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @lang_lookup(i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, ...) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
