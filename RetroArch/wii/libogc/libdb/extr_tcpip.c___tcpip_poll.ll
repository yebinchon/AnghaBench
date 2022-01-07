; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c___tcpip_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c___tcpip_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uip_netif_default = common dso_local global i32* null, align 8
@tcpip_time = common dso_local global i8* null, align 8
@uip_tcp_active_pcbs = common dso_local global i64 0, align 8
@uip_tcp_tw_pcbs = common dso_local global i64 0, align 8
@UIP_TCP_TMR_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__tcpip_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tcpip_poll() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = load i32*, i32** @uip_netif_default, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %30

6:                                                ; preds = %0
  %7 = load i32*, i32** @uip_netif_default, align 8
  %8 = call i32 @uip_bba_poll(i32* %7)
  %9 = load i8*, i8** @tcpip_time, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i64, i64* @uip_tcp_active_pcbs, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @uip_tcp_tw_pcbs, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14, %11
  %18 = call i8* (...) @gettime()
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** @tcpip_time, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @diff_msec(i8* %19, i8* %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @UIP_TCP_TMR_INTERVAL, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = call i32 (...) @uip_tcp_tmr()
  %27 = call i8* (...) @gettime()
  store i8* %27, i8** @tcpip_time, align 8
  br label %28

28:                                               ; preds = %25, %17
  br label %30

29:                                               ; preds = %14, %6
  store i8* null, i8** @tcpip_time, align 8
  br label %30

30:                                               ; preds = %5, %29, %28
  ret void
}

declare dso_local i32 @uip_bba_poll(i32*) #1

declare dso_local i8* @gettime(...) #1

declare dso_local i64 @diff_msec(i8*, i8*) #1

declare dso_local i32 @uip_tcp_tmr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
