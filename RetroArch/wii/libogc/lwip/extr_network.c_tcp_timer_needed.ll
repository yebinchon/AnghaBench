; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_tcp_timer_needed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_tcp_timer_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcp_timer_active = common dso_local global i32 0, align 4
@tcp_active_pcbs = common dso_local global i64 0, align 8
@tcp_tw_pcbs = common dso_local global i64 0, align 8
@tcp_timer_cntrl = common dso_local global i32 0, align 4
@net_tcp_ticks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_timer_needed() #0 {
  %1 = load i32, i32* @tcp_timer_active, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @tcp_active_pcbs, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @tcp_tw_pcbs, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %3
  store i32 1, i32* @tcp_timer_active, align 4
  %10 = load i32, i32* @net_tcp_ticks, align 4
  %11 = call i32 @__lwp_wd_insert_ticks(i32* @tcp_timer_cntrl, i32 %10)
  br label %12

12:                                               ; preds = %9, %6, %0
  ret void
}

declare dso_local i32 @__lwp_wd_insert_ticks(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
