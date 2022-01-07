; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_tvservice_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_tvservice_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"HDMI cable is unplugged\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HDMI is attached\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"HDMI in DVI mode\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HDMI in HDMI mode\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"HDCP authentication is broken\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"HDCP is active\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"HDCP key download\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"HDCP revocation list download\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Callback with reason %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @tvservice_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvservice_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %29 [
    i32 128, label %13
    i32 135, label %15
    i32 134, label %17
    i32 129, label %19
    i32 130, label %21
    i32 133, label %23
    i32 132, label %25
    i32 131, label %27
  ]

13:                                               ; preds = %4
  %14 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %32

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %32

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %32

19:                                               ; preds = %4
  %20 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %32

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %32

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %32

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %32

27:                                               ; preds = %4
  %28 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13
  ret void
}

declare dso_local i32 @LOG_INFO(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
