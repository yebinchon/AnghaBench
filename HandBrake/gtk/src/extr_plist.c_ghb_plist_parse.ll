; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_ghb_plist_parse.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_ghb_plist_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i8*, i8*, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@start_element = common dso_local global i32 0, align 4
@end_element = common dso_local global i32 0, align 4
@text_data = common dso_local global i32 0, align 4
@passthrough = common dso_local global i32 0, align 4
@parse_error = common dso_local global i32 0, align 4
@destroy_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ghb_plist_parse(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %8, align 8
  %9 = call i8* (...) @g_queue_new()
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = call i8* (...) @g_queue_new()
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @start_element, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @end_element, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @text_data, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @passthrough, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @parse_error, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @destroy_notify, align 4
  %29 = call i32* @g_markup_parse_context_new(%struct.TYPE_6__* %6, i32 0, %struct.TYPE_5__* %7, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @g_markup_parse_context_parse(i32* %30, i32* %31, i32 %32, i32** %8)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @g_markup_parse_context_end_parse(i32* %34, i32** %8)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @g_markup_parse_context_free(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @g_free(i32* %43)
  br label %45

45:                                               ; preds = %41, %2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @g_free(i32* %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @g_queue_free(i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @g_queue_free(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  ret i32* %61
}

declare dso_local i8* @g_queue_new(...) #1

declare dso_local i32* @g_markup_parse_context_new(%struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @g_markup_parse_context_parse(i32*, i32*, i32, i32**) #1

declare dso_local i32 @g_markup_parse_context_end_parse(i32*, i32**) #1

declare dso_local i32 @g_markup_parse_context_free(i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_queue_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
