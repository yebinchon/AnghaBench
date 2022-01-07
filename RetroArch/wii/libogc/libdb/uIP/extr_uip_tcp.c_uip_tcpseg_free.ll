; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpseg_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpseg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcpseg = type { i32* }

@uip_tcp_segs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_tcpseg_free(%struct.uip_tcpseg* %0) #0 {
  %2 = alloca %struct.uip_tcpseg*, align 8
  %3 = alloca i32, align 4
  store %struct.uip_tcpseg* %0, %struct.uip_tcpseg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %2, align 8
  %5 = icmp ne %struct.uip_tcpseg* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %2, align 8
  %8 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %2, align 8
  %13 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @uip_pbuf_free(i32* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %2, align 8
  %18 = call i32 @memb_free(i32* @uip_tcp_segs, %struct.uip_tcpseg* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @uip_pbuf_free(i32*) #1

declare dso_local i32 @memb_free(i32*, %struct.uip_tcpseg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
