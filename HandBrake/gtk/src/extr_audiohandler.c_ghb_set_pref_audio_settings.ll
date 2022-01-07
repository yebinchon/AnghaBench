; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_set_pref_audio_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_set_pref_audio_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AudioCopyMask\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_set_pref_audio_settings(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @ghb_create_copy_mask(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ghb_dict_set(i32* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @ghb_dict_get_int(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @ghb_get_job_settings(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ghb_dict_remove(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 (...) @ghb_scan_handle()
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @hb_preset_job_add_audio(i32 %17, i32 %18, i32* %19, i32* %20)
  ret void
}

declare dso_local i32* @ghb_create_copy_mask(i32*) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_get_job_settings(i32*) #1

declare dso_local i32 @ghb_dict_remove(i32*, i8*) #1

declare dso_local i32 @hb_preset_job_add_audio(i32, i32, i32*, i32*) #1

declare dso_local i32 @ghb_scan_handle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
