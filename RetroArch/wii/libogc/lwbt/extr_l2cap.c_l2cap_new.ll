; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32 }

@l2cap_pcbs = common dso_local global i32 0, align 4
@L2CAP_CLOSED = common dso_local global i32 0, align 4
@L2CAP_MTU = common dso_local global i32 0, align 4
@L2CAP_CFG_TO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"l2cap_new: Could not allocate memory for pcb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2cap_pcb* @l2cap_new() #0 {
  %1 = alloca %struct.l2cap_pcb*, align 8
  %2 = alloca %struct.l2cap_pcb*, align 8
  %3 = call %struct.l2cap_pcb* @btmemb_alloc(i32* @l2cap_pcbs)
  store %struct.l2cap_pcb* %3, %struct.l2cap_pcb** %2, align 8
  %4 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %5 = icmp ne %struct.l2cap_pcb* %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %0
  %7 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %8 = call i32 @memset(%struct.l2cap_pcb* %7, i32 0, i32 40)
  %9 = load i32, i32* @L2CAP_CLOSED, align 4
  %10 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @L2CAP_MTU, align 4
  %13 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i32 %12, i32* %15, align 4
  %16 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %17 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 672, i32* %18, align 8
  %19 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %20 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 65535, i32* %21, align 4
  %22 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %23 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 65535, i32* %24, align 8
  %25 = load i32, i32* @L2CAP_CFG_TO, align 4
  %26 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  store %struct.l2cap_pcb* %32, %struct.l2cap_pcb** %1, align 8
  br label %35

33:                                               ; preds = %0
  %34 = call i32 @ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store %struct.l2cap_pcb* null, %struct.l2cap_pcb** %1, align 8
  br label %35

35:                                               ; preds = %33, %6
  %36 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %1, align 8
  ret %struct.l2cap_pcb* %36
}

declare dso_local %struct.l2cap_pcb* @btmemb_alloc(i32*) #1

declare dso_local i32 @memset(%struct.l2cap_pcb*, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
