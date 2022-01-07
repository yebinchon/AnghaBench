; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_videohandler.c_ghb_set_video_preset.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_videohandler.c_ghb_set_video_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"VideoPresetSlider\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VideoPreset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_set_video_preset(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i8** @hb_video_encoder_get_presets(i32 %10)
  store i8** %11, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %41, %3
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i8**, i8*** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi i1 [ false, %12 ], [ %21, %15 ]
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcasecmp(i8* %28, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ghb_dict_set_int(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 1, i32* %9, align 4
  br label %44

40:                                               ; preds = %27, %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %12

44:                                               ; preds = %36, %22
  %45 = load i8*, i8** %6, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i8**, i8*** %7, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %8, align 4
  %53 = load i8**, i8*** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %6, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ghb_dict_set_int(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %50, %47, %44
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @ghb_dict_set_string(i32* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i8** @hb_video_encoder_get_presets(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
