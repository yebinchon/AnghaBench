; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiHelpers.c_display_valid_parameters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiHelpers.c_display_valid_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_valid_parameters(i8* %0, void (i8*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void (i8*)*, align 8
  store i8* %0, i8** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @print_app_details(i32 %5)
  %7 = load void (i8*)*, void (i8*)** %4, align 8
  %8 = icmp ne void (i8*)* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load void (i8*)*, void (i8*)** %4, align 8
  %11 = load i8*, i8** %3, align 8
  call void %10(i8* %11)
  br label %12

12:                                               ; preds = %9, %2
  %13 = call i32 (...) @raspicommonsettings_display_help()
  %14 = call i32 (...) @raspipreview_display_help()
  %15 = call i32 (...) @raspicamcontrol_display_help()
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_app_details(i32) #1

declare dso_local i32 @raspicommonsettings_display_help(...) #1

declare dso_local i32 @raspipreview_display_help(...) #1

declare dso_local i32 @raspicamcontrol_display_help(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
