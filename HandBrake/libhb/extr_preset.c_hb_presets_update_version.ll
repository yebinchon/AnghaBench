; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_update_version.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_update_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"VersionMajor\00", align 1
@hb_preset_version_major = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"VersionMinor\00", align 1
@hb_preset_version_minor = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"VersionMicro\00", align 1
@hb_preset_version_micro = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_presets_update_version(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @hb_value_type(i32* %5)
  %7 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @hb_dict_get(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @hb_dict_get(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @hb_preset_version_major, align 4
  %22 = call i32 @hb_value_int(i32 %21)
  %23 = call i32 @hb_dict_set(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @hb_preset_version_minor, align 4
  %26 = call i32 @hb_value_int(i32 %25)
  %27 = call i32 @hb_dict_set(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @hb_preset_version_micro, align 4
  %30 = call i32 @hb_value_int(i32 %29)
  %31 = call i32 @hb_dict_set(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @hb_value_incref(i32* %32)
  %34 = load i32*, i32** %3, align 8
  store i32* %34, i32** %2, align 8
  br label %40

35:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %40

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32*, i32** %3, align 8
  %39 = call i32* @presets_package(i32* %38)
  store i32* %39, i32** %2, align 8
  br label %40

40:                                               ; preds = %37, %35, %19
  %41 = load i32*, i32** %2, align 8
  ret i32* %41
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_value_incref(i32*) #1

declare dso_local i32* @presets_package(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
