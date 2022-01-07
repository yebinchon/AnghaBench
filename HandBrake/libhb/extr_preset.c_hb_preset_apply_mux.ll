; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_mux.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid container (%s)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Destination\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mux\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"AlignAVStart\00", align 1
@HB_VALUE_TYPE_BOOL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"InlineParameterSets\00", align 1
@HB_MUX_MASK_MP4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Mp4Optimize\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Mp4HttpOptimize\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"IpodAtom\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Mp4iPodCompatible\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Mp4Options\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_apply_mux(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @hb_dict_get(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @hb_value_type(i32* %15)
  %17 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @hb_value_get_string(i32* %20)
  %22 = call i32 @hb_container_get_from_name(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @hb_value_get_string(i32* %26)
  %28 = call i32 @hb_container_get_from_extension(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %33

30:                                               ; preds = %2
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @hb_value_get_int(i32* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_3__* @hb_container_get_from_format(i32 %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = icmp eq %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @hb_value_get_string_xform(i32* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @hb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @free(i8* %43)
  store i32 -1, i32* %3, align 4
  br label %89

45:                                               ; preds = %33
  %46 = load i32*, i32** %5, align 8
  %47 = call i8* @hb_dict_get(i32* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @hb_value_string(i32 %52)
  %54 = call i32 @hb_dict_set(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @hb_dict_get(i32* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %59 = call i32* @hb_value_xform(i8* %57, i32 %58)
  %60 = call i32 @hb_dict_set(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @hb_dict_get(i32* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %65 = call i32* @hb_value_xform(i8* %63, i32 %64)
  %66 = call i32 @hb_dict_set(i32* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @HB_MUX_MASK_MP4, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %45
  %72 = call i32* (...) @hb_dict_init()
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @hb_dict_get(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %77 = call i32* @hb_value_xform(i8* %75, i32 %76)
  %78 = call i32 @hb_dict_set(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @hb_dict_get(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %82 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %83 = call i32* @hb_value_xform(i8* %81, i32 %82)
  %84 = call i32 @hb_dict_set(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @hb_dict_set(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %86)
  br label %88

88:                                               ; preds = %71, %45
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %38
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i8* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_container_get_from_name(i32) #1

declare dso_local i32 @hb_value_get_string(i32*) #1

declare dso_local i32 @hb_container_get_from_extension(i32) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local %struct.TYPE_3__* @hb_container_get_from_format(i32) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

declare dso_local i32 @hb_error(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_string(i32) #1

declare dso_local i32* @hb_value_xform(i8*, i32) #1

declare dso_local i32* @hb_dict_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
