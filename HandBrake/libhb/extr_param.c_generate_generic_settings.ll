; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_generic_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_generic_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i8*, i8*)* @generate_generic_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_generic_settings(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32* @hb_parse_filter_settings(i8* %22)
  store i32* %23, i32** %5, align 8
  br label %77

24:                                               ; preds = %17
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.TYPE_6__* @filter_param_get_presets_internal(i32 %25, i32* %10)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.TYPE_6__* @filter_param_get_entry(%struct.TYPE_6__* %27, i8* %28, i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %12, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %75

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @hb_parse_filter_settings(i8* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32* null, i32** %5, align 8
  br label %77

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.TYPE_6__* @filter_param_get_tunes_internal(i32 %47, i32* %10)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %11, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.TYPE_6__* @filter_param_get_entry(%struct.TYPE_6__* %49, i8* %50, i32 %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %12, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32* @hb_parse_filter_settings(i8* %63)
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @hb_value_free(i32** %13)
  store i32* null, i32** %5, align 8
  br label %77

69:                                               ; preds = %60
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @hb_dict_merge(i32* %70, i32* %71)
  %73 = call i32 @hb_value_free(i32** %14)
  br label %74

74:                                               ; preds = %69, %55, %46
  br label %75

75:                                               ; preds = %74, %33, %24
  %76 = load i32*, i32** %13, align 8
  store i32* %76, i32** %5, align 8
  br label %77

77:                                               ; preds = %75, %67, %45, %21
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @hb_parse_filter_settings(i8*) #1

declare dso_local %struct.TYPE_6__* @filter_param_get_presets_internal(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @filter_param_get_entry(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @filter_param_get_tunes_internal(i32, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_dict_merge(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
