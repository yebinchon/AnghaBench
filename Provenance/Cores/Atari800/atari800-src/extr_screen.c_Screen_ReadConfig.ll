; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SCREEN_SHOW_SPEED\00", align 1
@Screen_show_atari_speed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SCREEN_SHOW_IO_ACTIVITY\00", align 1
@Screen_show_disk_led = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"SCREEN_SHOW_IO_COUNTER\00", align 1
@Screen_show_sector_counter = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SCREEN_SHOW_1200XL_LEDS\00", align 1
@Screen_show_1200_leds = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Screen_ReadConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @Util_sscanbool(i8* %10)
  store i32 %11, i32* @Screen_show_atari_speed, align 4
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @Util_sscanbool(i8* %19)
  store i32 %20, i32* @Screen_show_disk_led, align 4
  %21 = icmp ne i32 %20, -1
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %14
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @Util_sscanbool(i8* %28)
  store i32 %29, i32* @Screen_show_sector_counter, align 4
  %30 = icmp ne i32 %29, -1
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @Util_sscanbool(i8* %37)
  store i32 %38, i32* @Screen_show_1200_leds, align 4
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %36, %27, %18, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscanbool(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
