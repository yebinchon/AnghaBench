; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_add_to_time_wait_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_add_to_time_wait_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i32, i32 }
%struct.tcpcb = type { i64*, %struct.inpcb* }
%struct.inpcb = type { i32 }

@tcbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@INP2_TIMEWAIT = common dso_local global i32 0, align 4
@inp_list = common dso_local global i32 0, align 4
@tcp_tw_tailq = common dso_local global i32 0, align 4
@t_twentry = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i64 0, align 8
@TCPT_2MSL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i64)* @add_to_time_wait_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_time_wait_locked(%struct.tcpcb* %0, i64 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inpcbinfo*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.inpcbinfo* @tcbinfo, %struct.inpcbinfo** %5, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 1
  %10 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  store %struct.inpcb* %10, %struct.inpcb** %6, align 8
  %11 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %12 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %15 = call i32 @LCK_RW_ASSERT(i32 %13, i32 %14)
  %16 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INP2_TIMEWAIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %2
  %23 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %24 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @INP2_TIMEWAIT, align 4
  %28 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %33 = load i32, i32* @inp_list, align 4
  %34 = call i32 @LIST_REMOVE(%struct.inpcb* %32, i32 %33)
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %37 = load i32, i32* @t_twentry, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* @tcp_tw_tailq, %struct.tcpcb* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i64, i64* @tcp_now, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %7, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %44 = call i64 @TIMER_IS_ON_LIST(%struct.tcpcb* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = call i32 @tcp_remove_timer(%struct.tcpcb* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @TCPT_2MSL, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %50, i64* %55, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %57 = load i32, i32* @t_twentry, align 4
  %58 = call i32 @TAILQ_INSERT_TAIL(i32* @tcp_tw_tailq, %struct.tcpcb* %56, i32 %57)
  ret void
}

declare dso_local i32 @LCK_RW_ASSERT(i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.inpcb*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tcpcb*, i32) #1

declare dso_local i64 @TIMER_IS_ON_LIST(%struct.tcpcb*) #1

declare dso_local i32 @tcp_remove_timer(%struct.tcpcb*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
