; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_finalize_job.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_finalize_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Job\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PictureTopCrop\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"PictureBottomCrop\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PictureLeftCrop\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PictureRightCrop\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"crop-top\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"crop-bottom\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"crop-left\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"crop-right\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@HB_FILTER_CROP_SCALE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_finalize_job(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @ghb_settings_to_preset(i32* %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @ghb_dict_get(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @hb_preset_apply_mux(i32* %15, i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @hb_preset_apply_video(i32* %18, i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @hb_preset_apply_filters(i32* %21, i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @ghb_get_job_filter_list(i32* %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @ghb_dict_get_int(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @ghb_dict_get_int(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @ghb_dict_get_int(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @ghb_dict_get_int(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @ghb_dict_get_int(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @ghb_dict_get_int(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  %42 = call i32* (...) @ghb_dict_new()
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ghb_dict_set_int(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ghb_dict_set_int(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = call i32 @ghb_dict_set_int(i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ghb_dict_set_int(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ghb_dict_set_int(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ghb_dict_set_int(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %63)
  %65 = call i32* (...) @ghb_dict_new()
  store i32* %65, i32** %6, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @HB_FILTER_CROP_SCALE, align 4
  %68 = call i32 @ghb_dict_set_int(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @ghb_dict_set(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @hb_add_filter2(i32* %72, i32* %73)
  %75 = call i32 @ghb_value_free(i32** %3)
  ret void
}

declare dso_local i32* @ghb_settings_to_preset(i32*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_preset_apply_mux(i32*, i32*) #1

declare dso_local i32 @hb_preset_apply_video(i32*, i32*) #1

declare dso_local i32 @hb_preset_apply_filters(i32*, i32*) #1

declare dso_local i32* @ghb_get_job_filter_list(i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_dict_new(...) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @hb_add_filter2(i32*, i32*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
