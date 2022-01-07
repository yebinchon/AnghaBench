; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_get_track_description.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_get_track_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@IMPORTSRT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Codeset\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SSA\00", align 1
@IMPORTSSA = common dso_local global i32 0, align 4
@G_FILE_TEST_IS_REGULAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%s (%s)(%s)(%s)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s (%s)(%s)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Foreign Audio Scan\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%d - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @subtitle_get_track_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @subtitle_get_track_description(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @ghb_dict_get(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %101

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %25 = load i32, i32* @IMPORTSRT, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @ghb_dict_get_string(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @ghb_dict_get_string(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %29, i8** %8, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @ghb_dict_get_string(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @ghb_dict_get_string(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @IMPORTSSA, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %36, %24
  %43 = load i8*, i8** %10, align 8
  %44 = call %struct.TYPE_5__* @lang_lookup(i8* %43)
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %12, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  br label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @G_FILE_TEST_IS_REGULAR, align 4
  %64 = call i64 @g_file_test(i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @g_path_get_basename(i8* %67)
  store i8* %68, i8** %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @IMPORTSRT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %73, i8* %74, i8* %75, i8* %76)
  store i8* %77, i8** %6, align 8
  br label %83

78:                                               ; preds = %66
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @g_free(i8* %84)
  br label %100

86:                                               ; preds = %61
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @IMPORTSRT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %91, i8* %92, i8* %93)
  store i8* %94, i8** %6, align 8
  br label %99

95:                                               ; preds = %86
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %96, i8* %97)
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %83
  br label %133

101:                                              ; preds = %2
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @ghb_dict_get_int(i32* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32* @ghb_lookup_title(i32 %104, i32* %15)
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32* @ghb_dict_get(i32* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32* %107, i32** %19, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @ghb_dict_get_int(i32* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32 %109, i32* %17, align 4
  %110 = load i32*, i32** %19, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112, %101
  %116 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %117 = call i8* @g_strdup(i32 %116)
  store i8* %117, i8** %6, align 8
  br label %132

118:                                              ; preds = %112
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call %struct.TYPE_6__* @ghb_get_subtitle_info(i32* %119, i32 %120)
  store %struct.TYPE_6__* %121, %struct.TYPE_6__** %18, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %123 = icmp ne %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %126, i32 %129)
  store i8* %130, i8** %6, align 8
  br label %131

131:                                              ; preds = %124, %118
  br label %132

132:                                              ; preds = %131, %115
  br label %133

133:                                              ; preds = %132, %100
  %134 = load i8*, i8** %6, align 8
  ret i8* %134
}

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @lang_lookup(i8*) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i8* @g_path_get_basename(i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_lookup_title(i32, i32*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_6__* @ghb_get_subtitle_info(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
