; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_close.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_sig = type { i64, %struct.l2cap_sig*, %struct.l2cap_sig* }
%struct.l2cap_pcb = type { i64, %struct.l2cap_pcb*, %struct.l2cap_pcb* }

@L2CAP_LISTEN = common dso_local global i64 0, align 8
@l2cap_listen_pcbs = common dso_local global i32 0, align 4
@l2cap_listenpcbs = common dso_local global i32 0, align 4
@l2cap_active_pcbs = common dso_local global %struct.l2cap_sig* null, align 8
@l2cap_sigs = common dso_local global i32 0, align 4
@l2cap_pcbs = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_close(%struct.l2cap_pcb* %0) #0 {
  %2 = alloca %struct.l2cap_pcb*, align 8
  %3 = alloca %struct.l2cap_sig*, align 8
  store %struct.l2cap_pcb* %0, %struct.l2cap_pcb** %2, align 8
  %4 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @L2CAP_LISTEN, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %11 = bitcast %struct.l2cap_pcb* %10 to %struct.l2cap_sig*
  %12 = call i32 @L2CAP_RMV(%struct.l2cap_sig** bitcast (i32* @l2cap_listen_pcbs to %struct.l2cap_sig**), %struct.l2cap_sig* %11)
  %13 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %14 = bitcast %struct.l2cap_pcb* %13 to %struct.l2cap_sig*
  %15 = call i32 @btmemb_free(i32* @l2cap_listenpcbs, %struct.l2cap_sig* %14)
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %18 = bitcast %struct.l2cap_pcb* %17 to %struct.l2cap_sig*
  %19 = call i32 @L2CAP_RMV(%struct.l2cap_sig** @l2cap_active_pcbs, %struct.l2cap_sig* %18)
  br label %20

20:                                               ; preds = %25, %16
  %21 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %22 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %21, i32 0, i32 2
  %23 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %22, align 8
  %24 = icmp ne %struct.l2cap_pcb* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %26, i32 0, i32 2
  %28 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %27, align 8
  %29 = bitcast %struct.l2cap_pcb* %28 to %struct.l2cap_sig*
  store %struct.l2cap_sig* %29, %struct.l2cap_sig** %3, align 8
  %30 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %31 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %30, i32 0, i32 2
  %32 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %31, align 8
  %33 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %32, i32 0, i32 1
  %34 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %33, align 8
  %35 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %36 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %35, i32 0, i32 2
  store %struct.l2cap_pcb* %34, %struct.l2cap_pcb** %36, align 8
  %37 = load %struct.l2cap_sig*, %struct.l2cap_sig** %3, align 8
  %38 = call i32 @btmemb_free(i32* @l2cap_sigs, %struct.l2cap_sig* %37)
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %41 = bitcast %struct.l2cap_pcb* %40 to %struct.l2cap_sig*
  %42 = call i32 @btmemb_free(i32* @l2cap_pcbs, %struct.l2cap_sig* %41)
  br label %43

43:                                               ; preds = %39, %9
  store %struct.l2cap_pcb* null, %struct.l2cap_pcb** %2, align 8
  %44 = load i32, i32* @ERR_OK, align 4
  ret i32 %44
}

declare dso_local i32 @L2CAP_RMV(%struct.l2cap_sig**, %struct.l2cap_sig*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.l2cap_sig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
