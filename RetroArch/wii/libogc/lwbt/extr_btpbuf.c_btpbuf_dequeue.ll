; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_dequeue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @btpbuf_dequeue(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  %5 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %6 = icmp eq %struct.pbuf* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  br label %28

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %17, %8
  %10 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 2
  %20 = load %struct.pbuf*, %struct.pbuf** %19, align 8
  store %struct.pbuf* %20, %struct.pbuf** %3, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i32 0, i32 2
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8
  store %struct.pbuf* %24, %struct.pbuf** %4, align 8
  %25 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 2
  store %struct.pbuf* null, %struct.pbuf** %26, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %27, %struct.pbuf** %2, align 8
  br label %28

28:                                               ; preds = %21, %7
  %29 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  ret %struct.pbuf* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
