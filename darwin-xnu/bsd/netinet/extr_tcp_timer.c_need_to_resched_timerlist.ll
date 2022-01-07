; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_need_to_resched_timerlist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_need_to_resched_timerlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcptimerlist = type { i32, i32, i64 }

@tcp_timer_list = common dso_local global %struct.tcptimerlist zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TCP_TIMERLIST_10MS_MODE = common dso_local global i32 0, align 4
@TCP_TIMER_10MS_QUANTUM = common dso_local global i64 0, align 8
@TCP_TIMERLIST_100MS_MODE = common dso_local global i32 0, align 4
@TCP_TIMER_100MS_QUANTUM = common dso_local global i64 0, align 8
@TCP_TIMER_500MS_QUANTUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @need_to_resched_timerlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_to_resched_timerlist(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcptimerlist*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.tcptimerlist* @tcp_timer_list, %struct.tcptimerlist** %6, align 8
  %8 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %9 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %16 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %14
  %22 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %23 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @timer_diff(i32 %24, i32 0, i32 %25, i32 0)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TCP_TIMERLIST_10MS_MODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @TCP_TIMER_10MS_QUANTUM, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %36
  br label %63

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TCP_TIMERLIST_100MS_MODE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @TCP_TIMER_100MS_QUANTUM, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %66

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %43
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @TCP_TIMER_500MS_QUANTUM, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %59, %52, %40, %29, %19, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @timer_diff(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
