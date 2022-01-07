; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_cid_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_cid_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i64, %struct.l2cap_pcb* }

@L2CAP_MIN_CID = common dso_local global i64 0, align 8
@L2CAP_MAX_CID = common dso_local global i64 0, align 8
@l2cap_active_pcbs = common dso_local global %struct.l2cap_pcb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @l2cap_cid_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @l2cap_cid_alloc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.l2cap_pcb*, align 8
  %4 = load i64, i64* @L2CAP_MIN_CID, align 8
  store i64 %4, i64* %2, align 8
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @L2CAP_MAX_CID, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** @l2cap_active_pcbs, align 8
  store %struct.l2cap_pcb* %10, %struct.l2cap_pcb** %3, align 8
  br label %11

11:                                               ; preds = %22, %9
  %12 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %3, align 8
  %13 = icmp ne %struct.l2cap_pcb* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %23, i32 0, i32 1
  %25 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %24, align 8
  store %struct.l2cap_pcb* %25, %struct.l2cap_pcb** %3, align 8
  br label %11

26:                                               ; preds = %20, %11
  %27 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %3, align 8
  %28 = icmp eq %struct.l2cap_pcb* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* %2, align 8
  store i64 %30, i64* %1, align 8
  br label %36

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %2, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %5

35:                                               ; preds = %5
  store i64 0, i64* %1, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
