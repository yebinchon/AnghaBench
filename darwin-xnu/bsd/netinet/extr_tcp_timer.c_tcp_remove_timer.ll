; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_remove_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_remove_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcptimerlist = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.tcpcb = type { %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@tcp_timer_list = common dso_local global %struct.tcptimerlist zeroinitializer, align 8
@le = common dso_local global i32 0, align 4
@TF_TIMER_ONLIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_remove_timer(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tcptimerlist*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  store %struct.tcptimerlist* @tcp_timer_list, %struct.tcptimerlist** %3, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @socket_lock_assert_owned(i32 %8)
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = call i32 @TIMER_IS_ON_LIST(%struct.tcpcb* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %16 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lck_mtx_lock(i32 %17)
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = call i32 @TIMER_IS_ON_LIST(%struct.tcpcb* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %24 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @lck_mtx_unlock(i32 %25)
  br label %73

27:                                               ; preds = %14
  %28 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %29 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %34 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 0
  %38 = icmp eq %struct.TYPE_8__* %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i32, i32* @le, align 4
  %43 = call %struct.TYPE_8__* @LIST_NEXT(%struct.TYPE_8__* %41, i32 %42)
  %44 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %45 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %44, i32 0, i32 2
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  br label %46

46:                                               ; preds = %39, %32, %27
  %47 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load i32, i32* @le, align 4
  %50 = call i32 @LIST_REMOVE(%struct.TYPE_8__* %48, i32 %49)
  %51 = load i32, i32* @TF_TIMER_ONLIST, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %58 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.tcptimerlist*, %struct.tcptimerlist** %3, align 8
  %70 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lck_mtx_unlock(i32 %71)
  br label %73

73:                                               ; preds = %46, %22, %13
  ret void
}

declare dso_local i32 @socket_lock_assert_owned(i32) #1

declare dso_local i32 @TIMER_IS_ON_LIST(%struct.tcpcb*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local %struct.TYPE_8__* @LIST_NEXT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
