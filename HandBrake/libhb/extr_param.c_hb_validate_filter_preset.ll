; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_validate_filter_preset.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_validate_filter_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"custom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_validate_filter_preset(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %70

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_6__* @filter_param_get_presets_internal(i32 %22, i32* %10)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %12, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.TYPE_6__* @filter_param_get_entry(%struct.TYPE_6__* %24, i8* %25, i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %14, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %21
  store i32 1, i32* %5, align 4
  br label %70

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = call i32* @hb_parse_filter_settings(i8* %44)
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %70

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @hb_validate_filter_settings(i32 %50, i32* %51)
  store i32 %52, i32* %17, align 4
  %53 = call i32 @hb_value_free(i32** %16)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %5, align 4
  br label %70

55:                                               ; preds = %40, %36
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.TYPE_6__* @filter_param_get_tunes_internal(i32 %59, i32* %11)
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %13, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call %struct.TYPE_6__* @filter_param_get_entry(%struct.TYPE_6__* %61, i8* %62, i32 %63)
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %15, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = icmp eq %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %70

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %55
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %67, %49, %48, %35, %20
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_6__* @filter_param_get_presets_internal(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @filter_param_get_entry(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @hb_parse_filter_settings(i8*) #1

declare dso_local i32 @hb_validate_filter_settings(i32, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local %struct.TYPE_6__* @filter_param_get_tunes_internal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
