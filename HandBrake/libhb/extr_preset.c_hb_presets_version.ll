; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_version.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"VersionMajor\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"VersionMinor\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"VersionMicro\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_presets_version(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @hb_value_type(i32* %14)
  %16 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @hb_dict_get(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @hb_dict_get(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @hb_dict_get(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @hb_value_get_int(i32* %30)
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @hb_dict_get(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @hb_value_get_int(i32* %34)
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @hb_dict_get(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @hb_value_get_int(i32* %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %44

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %18
  br label %43

43:                                               ; preds = %42, %4
  store i32 -1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
