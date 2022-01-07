; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_plat.c_plat_target_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_plat.c_plat_target_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_cpu_clock = common dso_local global i32 0, align 4
@GP2X_DEV_GP2X = common dso_local global i32 0, align 4
@gp2x_dev_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/dev/accel\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"detected Caanoo\0A\00", align 1
@GP2X_DEV_CAANOO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"detected Wiz\0A\00", align 1
@GP2X_DEV_WIZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"could not recognize SoC.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plat_target_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @soc_detect()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %22 [
    i32 129, label %5
    i32 128, label %8
  ]

5:                                                ; preds = %0
  %6 = call i32 (...) @mmsp2_init()
  store i32 200, i32* @default_cpu_clock, align 4
  %7 = load i32, i32* @GP2X_DEV_GP2X, align 4
  store i32 %7, i32* @gp2x_dev_id, align 4
  br label %24

8:                                                ; preds = %0
  %9 = call i32 (...) @pollux_init()
  store i32 533, i32* @default_cpu_clock, align 4
  %10 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @GP2X_DEV_CAANOO, align 4
  store i32 %15, i32* @gp2x_dev_id, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @fclose(i32* %16)
  br label %21

18:                                               ; preds = %8
  %19 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @GP2X_DEV_WIZ, align 4
  store i32 %20, i32* @gp2x_dev_id, align 4
  br label %21

21:                                               ; preds = %18, %13
  br label %24

22:                                               ; preds = %0
  %23 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %21, %5
  ret i32 0
}

declare dso_local i32 @soc_detect(...) #1

declare dso_local i32 @mmsp2_init(...) #1

declare dso_local i32 @pollux_init(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
