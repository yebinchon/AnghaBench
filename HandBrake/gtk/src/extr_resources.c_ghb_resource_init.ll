; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_resources.c_ghb_resource_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_resources.c_ghb_resource_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@resources = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"/fr/handbrake/ghb/data/internal_defaults.json\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"internal-defaults\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"/fr/handbrake/ghb/data/widget.deps\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"widget-deps\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"/fr/handbrake/ghb/data/widget_reverse.deps\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"widget-reverse-deps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_resource_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = call i32 (...) @ghb_dict_new()
  store i32 %6, i32* @resources, align 4
  %7 = call i32 (...) @ghb_data_register_resource()
  %8 = call i32* (...) @ghb_data_get_resource()
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @g_resource_lookup_data(i32* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @g_bytes_get_data(i32* %11, i32* %2)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @ghb_json_parse(i32 %13)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @g_bytes_unref(i32* %15)
  %17 = load i32, i32* @resources, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @ghb_dict_set(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @g_resource_lookup_data(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @g_bytes_get_data(i32* %22, i32* %2)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @ghb_json_parse(i32 %24)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @g_bytes_unref(i32* %26)
  %28 = load i32, i32* @resources, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @ghb_dict_set(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @g_resource_lookup_data(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null)
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @g_bytes_get_data(i32* %33, i32* %2)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32* @ghb_json_parse(i32 %35)
  store i32* %36, i32** %1, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @g_bytes_unref(i32* %37)
  %39 = load i32, i32* @resources, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @ghb_dict_set(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %40)
  ret void
}

declare dso_local i32 @ghb_dict_new(...) #1

declare dso_local i32 @ghb_data_register_resource(...) #1

declare dso_local i32* @ghb_data_get_resource(...) #1

declare dso_local i32* @g_resource_lookup_data(i32*, i8*, i32, i32*) #1

declare dso_local i32 @g_bytes_get_data(i32*, i32*) #1

declare dso_local i32* @ghb_json_parse(i32) #1

declare dso_local i32 @g_bytes_unref(i32*) #1

declare dso_local i32 @ghb_dict_set(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
