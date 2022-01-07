; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_launcher_rpi.c_runApp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_launcher_rpi.c_runApp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Initialsing BCM HOST\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Starting '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @runApp(i8* %0, i32 (i8*, i32*)* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i32*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 (i8*, i32*)* %1, i32 (i8*, i32*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @bcm_host_init()
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = call i64 @create_native_window(i32* %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %23

19:                                               ; preds = %4
  %20 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 %20(i8* %21, i32* %10)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @vcos_log_trace(i8*, ...) #1

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i64 @create_native_window(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
