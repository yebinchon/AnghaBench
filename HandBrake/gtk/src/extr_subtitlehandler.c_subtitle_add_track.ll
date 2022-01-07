; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_add_track.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_add_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@IMPORTSRT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SSA\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"PreferredLanguage\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Codeset\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SrtDir\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s/none\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32, i32, i32*)* @subtitle_add_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subtitle_add_track(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i8* null, i8** %20, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %9
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32* @ghb_get_title_subtitle_track(i32* %33, i32 %34)
  store i32* %35, i32** %21, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = call i32 @ghb_dict_get_int(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %21, align 8
  %39 = call i8* @ghb_dict_get_string(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %20, align 8
  br label %40

40:                                               ; preds = %32, %29, %9
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @hb_subtitle_can_pass(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %18, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32* null, i32** %10, align 8
  br label %133

56:                                               ; preds = %52, %40
  %57 = call i32* (...) @ghb_dict_new()
  store i32* %57, i32** %22, align 8
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = call i32* (...) @ghb_dict_new()
  store i32* %61, i32** %23, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = call i32 @hb_dict_set(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  %65 = load i32*, i32** %23, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @IMPORTSRT, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %71 = call i32 @ghb_dict_set_string(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %12, align 8
  %73 = call i8* @ghb_dict_get_string(i32* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %73, i8** %24, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i8*, i8** %24, align 8
  %76 = call i32 @ghb_dict_set_string(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %23, align 8
  %78 = call i32 @ghb_dict_set_string(i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @ghb_dict_get_string(i32* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i8* %82, i8** %25, align 8
  %83 = load i8*, i8** %25, align 8
  %84 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %83)
  store i8* %84, i8** %26, align 8
  %85 = load i32*, i32** %23, align 8
  %86 = load i8*, i8** %26, align 8
  %87 = call i32 @ghb_dict_set_string(i32* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %26, align 8
  %89 = call i32 @g_free(i8* %88)
  br label %90

90:                                               ; preds = %60, %56
  %91 = load i8*, i8** %20, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i8*, i8** %20, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32*, i32** %22, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 @ghb_dict_set_string(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %93, %90
  %104 = load i32*, i32** %22, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ghb_dict_set_int(i32* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @ghb_dict_set_int(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %109 = load i32*, i32** %22, align 8
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, -1
  %112 = zext i1 %111 to i32
  %113 = call i32 @ghb_dict_set_bool(i32* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %22, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @ghb_dict_set_bool(i32* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %22, align 8
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @ghb_dict_set_bool(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %103
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @TRUE, align 4
  %127 = load i32*, i32** %19, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %122, %103
  %129 = load i32*, i32** %12, align 8
  %130 = load i32*, i32** %22, align 8
  %131 = call i32 @subtitle_add_to_settings(i32* %129, i32* %130)
  %132 = load i32*, i32** %22, align 8
  store i32* %132, i32** %10, align 8
  br label %133

133:                                              ; preds = %128, %55
  %134 = load i32*, i32** %10, align 8
  ret i32* %134
}

declare dso_local i32* @ghb_get_title_subtitle_track(i32*, i32) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @hb_subtitle_can_pass(i32, i32) #1

declare dso_local i32* @ghb_dict_new(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @ghb_dict_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @subtitle_add_to_settings(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
