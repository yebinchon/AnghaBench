; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_presets_package.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_presets_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"VersionMajor\00", align 1
@hb_preset_version_major = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"VersionMinor\00", align 1
@hb_preset_version_minor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"VersionMicro\00", align 1
@hb_preset_version_micro = common dso_local global i32 0, align 4
@hb_preset_template = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"PresetList\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @presets_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @presets_package(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @hb_value_type(i32* %7)
  %9 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @hb_dict_get(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %11, %1
  %16 = call i32* (...) @hb_dict_init()
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @hb_preset_version_major, align 4
  %19 = call i32* @hb_value_int(i32 %18)
  %20 = call i32 @hb_dict_set(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @hb_preset_version_minor, align 4
  %23 = call i32* @hb_value_int(i32 %22)
  %24 = call i32 @hb_dict_set(i32* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @hb_preset_version_micro, align 4
  %27 = call i32* @hb_value_int(i32 %26)
  %28 = call i32 @hb_dict_set(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32* @hb_value_dup(i32* %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @hb_value_type(i32* %31)
  %33 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %15
  %36 = call i32* (...) @hb_value_array_init()
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @hb_value_array_append(i32* %37, i32* %38)
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %35, %15
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @hb_preset_template, align 4
  %44 = call i32 @presets_clean(i32* %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @hb_dict_set(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %46)
  br label %55

48:                                               ; preds = %11
  %49 = load i32*, i32** %2, align 8
  %50 = call i32* @hb_value_dup(i32* %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @hb_preset_template, align 4
  %53 = call i32 @presets_clean(i32* %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_int(i32) #1

declare dso_local i32* @hb_value_dup(i32*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

declare dso_local i32 @presets_clean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
