; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_preset_get_fullname.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_preset_get_fullname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @preset_get_fullname(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = call i32* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call %struct.TYPE_7__* @hb_preset_index_dup(%struct.TYPE_7__* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %57, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = call i32* @hb_preset_get(%struct.TYPE_7__* %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %60

32:                                               ; preds = %23
  %33 = load i32*, i32** %10, align 8
  %34 = call i8* @ghb_dict_get_string(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @g_string_append(i32* %38, i8* %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @g_markup_escape_text(i8* %44, i32 -1)
  store i8* %45, i8** %12, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @g_string_append(i32* %46, i8* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @g_free(i8* %49)
  br label %55

51:                                               ; preds = %37
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @g_string_append(i32* %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %17

60:                                               ; preds = %31, %17
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = call i32 @free(%struct.TYPE_7__* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i8* @g_string_free(i32* %63, i32 %64)
  store i8* %65, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  ret i8* %66
}

declare dso_local i32* @g_string_new(i8*) #1

declare dso_local %struct.TYPE_7__* @hb_preset_index_dup(%struct.TYPE_7__*) #1

declare dso_local i32* @hb_preset_get(%struct.TYPE_7__*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @g_string_append(i32*, i8*) #1

declare dso_local i8* @g_markup_escape_text(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i8* @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
