; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_sndout_oss.c_sndout_oss_write_nb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_sndout_oss.c_sndout_oss_write_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sndout_oss_write_nb.lag_counter = internal global i32 0, align 4
@sndout_oss_write_nb.skip_counter = internal global i32 0, align 4
@FRAG_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"audio lag %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sndout_oss_write_nb(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @sndout_oss_write_nb.lag_counter, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  store i32 0, i32* @sndout_oss_write_nb.lag_counter, align 4
  %11 = load i32, i32* @FRAG_COUNT, align 4
  store i32 %11, i32* @sndout_oss_write_nb.skip_counter, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @sndout_oss_write_nb.skip_counter, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @sndout_oss_write_nb.skip_counter, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @sndout_oss_write_nb.skip_counter, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = call i32 (...) @plat_get_ticks_ms()
  store i32 %20, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sndout_oss_write(i8* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @plat_get_ticks_ms()
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load i32, i32* @sndout_oss_write_nb.lag_counter, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @sndout_oss_write_nb.lag_counter, align 4
  %32 = load i32, i32* @sndout_oss_write_nb.lag_counter, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %39

38:                                               ; preds = %19
  store i32 0, i32* @sndout_oss_write_nb.lag_counter, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @plat_get_ticks_ms(...) #1

declare dso_local i32 @sndout_oss_write(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
