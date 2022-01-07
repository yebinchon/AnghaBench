; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_denoise_0_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_denoise_0_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"PictureDenoise\00", align 1
@HB_FILTER_HQDN3D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PictureDenoiseFilter\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hqdn3d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"PictureDenoisePreset\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid denoise index %d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_denoise_0_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_denoise_0_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @hb_dict_get(i32* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @hb_value_is_number(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @hb_value_get_int(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @HB_FILTER_HQDN3D, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @import_indexed_filter(i32 %14, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @hb_value_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @hb_dict_set(i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @hb_value_string(i8* %24)
  %26 = call i32 @hb_dict_set(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  br label %37

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @hb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @hb_dict_set(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %19
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_is_number(i32*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i8* @import_indexed_filter(i32, i32) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
