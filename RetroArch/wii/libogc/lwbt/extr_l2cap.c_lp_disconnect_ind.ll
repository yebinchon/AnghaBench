; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_lp_disconnect_ind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_lp_disconnect_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32, i32, %struct.l2cap_pcb* }
%struct.bd_addr = type { i32 }

@l2cap_active_pcbs = common dso_local global %struct.l2cap_pcb* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"lp_disconnect_ind: Find a pcb with a matching Bluetooth address\0A\00", align 1
@L2CAP_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"lp_disconnect_ind: Notify application\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lp_disconnect_ind(%struct.bd_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.bd_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_pcb*, align 8
  %6 = alloca %struct.l2cap_pcb*, align 8
  %7 = alloca i32, align 4
  store %struct.bd_addr* %0, %struct.bd_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** @l2cap_active_pcbs, align 8
  store %struct.l2cap_pcb* %9, %struct.l2cap_pcb** %5, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %12 = icmp ne %struct.l2cap_pcb* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %15 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %14, i32 0, i32 2
  %16 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %15, align 8
  store %struct.l2cap_pcb* %16, %struct.l2cap_pcb** %6, align 8
  %17 = call i32 @LOG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %19 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %18, i32 0, i32 1
  %20 = load %struct.bd_addr*, %struct.bd_addr** %3, align 8
  %21 = call i64 @bd_addr_cmp(i32* %19, %struct.bd_addr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i32, i32* @L2CAP_CLOSED, align 4
  %25 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %26 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = call i32 @LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %29 = load i32, i32* @ERR_OK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @L2CA_ACTION_DISCONN_IND(%struct.l2cap_pcb* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %13
  %33 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %6, align 8
  store %struct.l2cap_pcb* %33, %struct.l2cap_pcb** %5, align 8
  br label %10

34:                                               ; preds = %10
  br i1 true, label %35, label %39

35:                                               ; preds = %34
  %36 = load %struct.bd_addr*, %struct.bd_addr** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @l2cap_disconnect_bb_cb(%struct.bd_addr* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i64 @bd_addr_cmp(i32*, %struct.bd_addr*) #1

declare dso_local i32 @L2CA_ACTION_DISCONN_IND(%struct.l2cap_pcb*, i32, i32) #1

declare dso_local i32 @l2cap_disconnect_bb_cb(%struct.bd_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
