; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_deint_10_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_deint_10_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"PictureDecombDeinterlace\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"PictureDecomb\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PictureDeinterlace\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"decomb\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"PictureDeinterlacePreset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_deint_10_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_deint_10_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @hb_dict_get(i32* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @hb_value_get_bool(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @hb_dict_get(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i8* @hb_value_get_string(i32* %17)
  store i8* %18, i8** %5, align 8
  br label %23

19:                                               ; preds = %10
  %20 = load i32*, i32** %2, align 8
  %21 = call i32* @hb_dict_get(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i8* @hb_value_get_string(i32* %21)
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @hb_value_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %38

36:                                               ; preds = %30
  %37 = call i32 @hb_value_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @hb_dict_set(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @hb_value_string(i8* %42)
  %44 = call i32 @hb_dict_set(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  br label %52

45:                                               ; preds = %26, %23
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @hb_dict_set(i32* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %51 = call i32 @hb_dict_set(i32* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_value_get_bool(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
