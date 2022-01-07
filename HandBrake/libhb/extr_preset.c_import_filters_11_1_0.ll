; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_filters_11_1_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_filters_11_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@HB_FILTER_DEINTERLACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceCustom\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"decomb\00", align 1
@HB_FILTER_DECOMB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"PictureDenoiseFilter\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"hqdn3d\00", align 1
@HB_FILTER_HQDN3D = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"PictureDenoiseCustom\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nlmeans\00", align 1
@HB_FILTER_NLMEANS = common dso_local global i32 0, align 4
@HB_FILTER_DETELECINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"PictureDetelecineCustom\00", align 1
@HB_FILTER_ROTATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"PictureRotate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_filters_11_1_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_filters_11_1_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @hb_dict_get(i32* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @hb_value_get_string(i32* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @HB_FILTER_DEINTERLACE, align 4
  %22 = call i32 @import_custom_11_1_0(i32* %20, i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %32

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @HB_FILTER_DECOMB, align 4
  %30 = call i32 @import_custom_11_1_0(i32* %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %10
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @hb_dict_get(i32* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i8* @hb_value_get_string(i32* %40)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @HB_FILTER_HQDN3D, align 4
  %51 = call i32 @import_custom_11_1_0(i32* %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %61

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @HB_FILTER_NLMEANS, align 4
  %59 = call i32 @import_custom_11_1_0(i32* %57, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @HB_FILTER_DETELECINE, align 4
  %66 = call i32 @import_custom_11_1_0(i32* %64, i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @HB_FILTER_ROTATE, align 4
  %69 = call i32 @import_custom_11_1_0(i32* %67, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @import_custom_11_1_0(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
