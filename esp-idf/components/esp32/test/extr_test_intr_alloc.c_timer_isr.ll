; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_timer_isr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_timer_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32* null, align 8
@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@TIMER_1 = common dso_local global i32 0, align 4
@TIMER_GROUP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @timer_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** @count, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @TIMER_GROUP_0, align 4
  %16 = load i32, i32* @TIMER_0, align 4
  %17 = call i32 @timer_group_intr_clr_in_isr(i32 %15, i32 %16)
  %18 = load i32, i32* @TIMER_GROUP_0, align 4
  %19 = load i32, i32* @TIMER_0, align 4
  %20 = call i32 @timer_group_enable_alarm_in_isr(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @TIMER_GROUP_0, align 4
  %26 = load i32, i32* @TIMER_1, align 4
  %27 = call i32 @timer_group_intr_clr_in_isr(i32 %25, i32 %26)
  %28 = load i32, i32* @TIMER_GROUP_0, align 4
  %29 = load i32, i32* @TIMER_1, align 4
  %30 = call i32 @timer_group_enable_alarm_in_isr(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @TIMER_GROUP_1, align 4
  %36 = load i32, i32* @TIMER_0, align 4
  %37 = call i32 @timer_group_intr_clr_in_isr(i32 %35, i32 %36)
  %38 = load i32, i32* @TIMER_GROUP_1, align 4
  %39 = load i32, i32* @TIMER_0, align 4
  %40 = call i32 @timer_group_enable_alarm_in_isr(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @TIMER_GROUP_1, align 4
  %46 = load i32, i32* @TIMER_1, align 4
  %47 = call i32 @timer_group_intr_clr_in_isr(i32 %45, i32 %46)
  %48 = load i32, i32* @TIMER_GROUP_1, align 4
  %49 = load i32, i32* @TIMER_1, align 4
  %50 = call i32 @timer_group_enable_alarm_in_isr(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @timer_group_intr_clr_in_isr(i32, i32) #1

declare dso_local i32 @timer_group_enable_alarm_in_isr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
