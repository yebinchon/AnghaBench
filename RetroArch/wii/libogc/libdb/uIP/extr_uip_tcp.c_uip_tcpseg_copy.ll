; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpseg_copy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpseg_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcpseg = type { i32 }

@uip_tcp_segs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uip_tcpseg* @uip_tcpseg_copy(%struct.uip_tcpseg* %0) #0 {
  %2 = alloca %struct.uip_tcpseg*, align 8
  %3 = alloca %struct.uip_tcpseg*, align 8
  %4 = alloca %struct.uip_tcpseg*, align 8
  store %struct.uip_tcpseg* %0, %struct.uip_tcpseg** %3, align 8
  %5 = call %struct.uip_tcpseg* @memb_alloc(i32* @uip_tcp_segs)
  store %struct.uip_tcpseg* %5, %struct.uip_tcpseg** %4, align 8
  %6 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %7 = icmp eq %struct.uip_tcpseg* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %2, align 8
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %11 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %12 = call i32 @UIP_MEMCPY(%struct.uip_tcpseg* %10, %struct.uip_tcpseg* %11, i32 4)
  %13 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %14 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uip_pbuf_ref(i32 %15)
  %17 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  store %struct.uip_tcpseg* %17, %struct.uip_tcpseg** %2, align 8
  br label %18

18:                                               ; preds = %9, %8
  %19 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %2, align 8
  ret %struct.uip_tcpseg* %19
}

declare dso_local %struct.uip_tcpseg* @memb_alloc(i32*) #1

declare dso_local i32 @UIP_MEMCPY(%struct.uip_tcpseg*, %struct.uip_tcpseg*, i32) #1

declare dso_local i32 @uip_pbuf_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
