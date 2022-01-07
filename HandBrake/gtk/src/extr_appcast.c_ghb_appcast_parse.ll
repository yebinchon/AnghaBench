; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_ghb_appcast_parse.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_ghb_appcast_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64*, i64*, i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"<?xml \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@start_element = common dso_local global i32 0, align 4
@end_element = common dso_local global i32 0, align 4
@text_data = common dso_local global i32 0, align 4
@passthrough = common dso_local global i32 0, align 4
@parse_error = common dso_local global i32 0, align 4
@G_MARKUP_TREAT_CDATA_AS_TEXT = common dso_local global i32 0, align 4
@destroy_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_appcast_parse(i64* %0, i64** %1, i64** %2, i64** %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i64** %3, i64*** %8, align 8
  store i32* null, i32** %12, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = call i64* @strstr(i64* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64* %17, i64** %14, align 8
  %18 = call i32 @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i64* null, i64** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64* null, i64** %23, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = call i32 @strlen(i64* %24)
  store i32 %25, i32* %13, align 4
  %26 = call i32 (...) @g_queue_new()
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @start_element, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @end_element, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @text_data, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @passthrough, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @parse_error, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @G_MARKUP_TREAT_CDATA_AS_TEXT, align 4
  %41 = load i32, i32* @destroy_notify, align 4
  %42 = call i32* @g_markup_parse_context_new(%struct.TYPE_6__* %10, i32 %40, %struct.TYPE_5__* %11, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @g_markup_parse_context_parse(i32* %43, i64* %44, i32 %45, i32** %12)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @g_markup_parse_context_end_parse(i32* %47, i32** %12)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @g_markup_parse_context_free(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @g_queue_free(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i64* @g_string_free(i32 %55, i32 %56)
  %58 = load i64**, i64*** %6, align 8
  store i64* %57, i64** %58, align 8
  %59 = load i64**, i64*** %6, align 8
  %60 = load i64*, i64** %59, align 8
  %61 = call i64* @g_strrstr(i64* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i64* %61, i64** %15, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %4
  %65 = load i64*, i64** %15, align 8
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %64, %4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64**, i64*** %7, align 8
  store i64* %68, i64** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64**, i64*** %8, align 8
  store i64* %71, i64** %72, align 8
  ret void
}

declare dso_local i64* @strstr(i64*, i8*) #1

declare dso_local i32 @g_string_new(i8*) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @g_queue_new(...) #1

declare dso_local i32* @g_markup_parse_context_new(%struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @g_markup_parse_context_parse(i32*, i64*, i32, i32**) #1

declare dso_local i32 @g_markup_parse_context_end_parse(i32*, i32**) #1

declare dso_local i32 @g_markup_parse_context_free(i32*) #1

declare dso_local i32 @g_queue_free(i32) #1

declare dso_local i64* @g_string_free(i32, i32) #1

declare dso_local i64* @g_strrstr(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
