; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_plugins.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"%s-module\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Show options for the %s-module\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_frontend_init_plugins(%struct.TYPE_6__* %0, i32* %1, i32* %2, i8*** %3, i32* %4, i8* %5, i8* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8***, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8*** %3, i8**** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32** %7, i32*** %17, align 8
  store i64 0, i64* %18, align 8
  br label %25

25:                                               ; preds = %91, %8
  %26 = load i64, i64* %18, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %94

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = load i64, i64* %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %20, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %39 = call i32* @chassis_plugin_get_options(%struct.TYPE_5__* %38)
  store i32* %39, i32** %19, align 8
  %40 = icmp ne i32* null, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %44)
  store i32* %45, i32** %21, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %48)
  store i32* %49, i32** %22, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %23, align 8
  %53 = load i32*, i32** %23, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = call i32* @g_option_group_new(i32* %53, i32* %54, i32* %55, i32* null, i32* null)
  store i32* %56, i32** %24, align 8
  %57 = load i32*, i32** %24, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @g_option_group_add_entries(i32* %57, i32* %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %24, align 8
  %62 = call i32 @g_option_context_add_group(i32* %60, i32* %61)
  %63 = load i32*, i32** %22, align 8
  %64 = call i32 @g_free(i32* %63)
  %65 = load i32*, i32** %21, align 8
  %66 = call i32 @g_free(i32* %65)
  %67 = load i64, i64* @FALSE, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i8***, i8**** %13, align 8
  %71 = load i32**, i32*** %17, align 8
  %72 = call i64 @g_option_context_parse(i32* %68, i32* %69, i8*** %70, i32** %71)
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %41
  store i32 -1, i32* %9, align 4
  br label %95

75:                                               ; preds = %41
  %76 = load i32*, i32** %14, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32*, i32** %14, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i64 @chassis_keyfile_to_options(i32* %79, i8* %80, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -1, i32* %9, align 4
  br label %95

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i8*, i8** %16, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call i32 @chassis_keyfile_resolve_path(i8* %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %31
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %18, align 8
  br label %25

94:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %84, %74
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32* @chassis_plugin_get_options(%struct.TYPE_5__*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*) #1

declare dso_local i32* @g_option_group_new(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @g_option_group_add_entries(i32*, i32*) #1

declare dso_local i32 @g_option_context_add_group(i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i64 @g_option_context_parse(i32*, i32*, i8***, i32**) #1

declare dso_local i64 @chassis_keyfile_to_options(i32*, i8*, i32*) #1

declare dso_local i32 @chassis_keyfile_resolve_path(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
