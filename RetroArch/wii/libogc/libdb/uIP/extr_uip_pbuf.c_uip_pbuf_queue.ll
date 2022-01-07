; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_queue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { %struct.uip_pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_pbuf_queue(%struct.uip_pbuf* %0, %struct.uip_pbuf* %1) #0 {
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca %struct.uip_pbuf*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store %struct.uip_pbuf* %1, %struct.uip_pbuf** %4, align 8
  %5 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %6 = icmp eq %struct.uip_pbuf* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %9 = icmp eq %struct.uip_pbuf* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %12 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %13 = icmp eq %struct.uip_pbuf* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %7, %2
  br label %31

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %18 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %17, i32 0, i32 0
  %19 = load %struct.uip_pbuf*, %struct.uip_pbuf** %18, align 8
  %20 = icmp ne %struct.uip_pbuf* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %23 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %22, i32 0, i32 0
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %23, align 8
  store %struct.uip_pbuf* %24, %struct.uip_pbuf** %3, align 8
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %27 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %28 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %27, i32 0, i32 0
  store %struct.uip_pbuf* %26, %struct.uip_pbuf** %28, align 8
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %30 = call i32 @uip_pbuf_ref(%struct.uip_pbuf* %29)
  br label %31

31:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @uip_pbuf_ref(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
