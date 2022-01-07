; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_accept.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }
%struct.tcpip_sock = type { i32 }

@tcpip_accepted_sockets = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcpip_accept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpip_sock*, align 8
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tcpip_sock* @tcpip_getsocket(i32 %6)
  store %struct.tcpip_sock* %7, %struct.tcpip_sock** %5, align 8
  %8 = load %struct.tcpip_sock*, %struct.tcpip_sock** %5, align 8
  %9 = icmp eq %struct.tcpip_sock* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %14, %11
  %13 = call i32 (...) @__tcpip_poll()
  br label %14

14:                                               ; preds = %12
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_accepted_sockets, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = xor i1 %16, true
  br i1 %17, label %12, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_accepted_sockets, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_accepted_sockets, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** @tcpip_accepted_sockets, align 8
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.tcpip_sock* @tcpip_getsocket(i32) #1

declare dso_local i32 @__tcpip_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
