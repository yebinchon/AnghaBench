; ModuleID = '/home/carl/AnghaBench/RetroArch/led/drivers/extr_led_rpi.c_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/led/drivers/extr_led_rpi.c_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"/sys/class/gpio/gpio%d/direction\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"/sys/class/gpio/export\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"[LED]: failed to export GPIO %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"[LED]: failed to set direction GPIO %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_gpio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %6, i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %2, align 4
  br label %45

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fclose(i32* %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %23, %1
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %2, align 4
  br label %45

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fclose(i32* %43)
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %37, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
