; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_dequeue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i64, i64, %struct.uip_pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uip_pbuf* @uip_pbuf_dequeue(%struct.uip_pbuf* %0) #0 {
  %2 = alloca %struct.uip_pbuf*, align 8
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca %struct.uip_pbuf*, align 8
  %5 = alloca i64, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store i64 1, i64* %5, align 8
  %6 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %7 = icmp eq %struct.uip_pbuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %2, align 8
  br label %41

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %18, %9
  %11 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %12 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %15 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %20 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %19, i32 0, i32 2
  %21 = load %struct.uip_pbuf*, %struct.uip_pbuf** %20, align 8
  store %struct.uip_pbuf* %21, %struct.uip_pbuf** %3, align 8
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %24 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %23, i32 0, i32 2
  %25 = load %struct.uip_pbuf*, %struct.uip_pbuf** %24, align 8
  store %struct.uip_pbuf* %25, %struct.uip_pbuf** %4, align 8
  %26 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %27 = icmp ne %struct.uip_pbuf* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %30 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %29, i32 0, i32 2
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %30, align 8
  %31 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %32 = call i64 @uip_pbuf_free(%struct.uip_pbuf* %31)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i64, i64* %5, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi %struct.uip_pbuf* [ null, %36 ], [ %38, %37 ]
  store %struct.uip_pbuf* %40, %struct.uip_pbuf** %2, align 8
  br label %41

41:                                               ; preds = %39, %8
  %42 = load %struct.uip_pbuf*, %struct.uip_pbuf** %2, align 8
  ret %struct.uip_pbuf* %42
}

declare dso_local i64 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
