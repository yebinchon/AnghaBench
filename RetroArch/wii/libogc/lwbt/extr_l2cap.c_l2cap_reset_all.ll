; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_reset_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { %struct.l2cap_pcb* }
%struct.l2cap_pcb_listen = type { %struct.l2cap_pcb_listen* }
%struct.l2cap_seg = type { %struct.l2cap_seg* }

@l2cap_active_pcbs = common dso_local global %struct.l2cap_pcb* null, align 8
@l2cap_listen_pcbs = common dso_local global %struct.l2cap_pcb_listen* null, align 8
@l2cap_insegs = common dso_local global %struct.l2cap_seg* null, align 8
@l2cap_segs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_reset_all() #0 {
  %1 = alloca %struct.l2cap_pcb*, align 8
  %2 = alloca %struct.l2cap_pcb*, align 8
  %3 = alloca %struct.l2cap_pcb_listen*, align 8
  %4 = alloca %struct.l2cap_pcb_listen*, align 8
  %5 = alloca %struct.l2cap_seg*, align 8
  %6 = alloca %struct.l2cap_seg*, align 8
  %7 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** @l2cap_active_pcbs, align 8
  store %struct.l2cap_pcb* %7, %struct.l2cap_pcb** %1, align 8
  br label %8

8:                                                ; preds = %11, %0
  %9 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %1, align 8
  %10 = icmp ne %struct.l2cap_pcb* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %1, align 8
  %13 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %12, i32 0, i32 0
  %14 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %13, align 8
  store %struct.l2cap_pcb* %14, %struct.l2cap_pcb** %2, align 8
  %15 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %1, align 8
  %16 = call i32 @l2cap_close(%struct.l2cap_pcb* %15)
  %17 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  store %struct.l2cap_pcb* %17, %struct.l2cap_pcb** %1, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** @l2cap_listen_pcbs, align 8
  store %struct.l2cap_pcb_listen* %19, %struct.l2cap_pcb_listen** %3, align 8
  br label %20

20:                                               ; preds = %23, %18
  %21 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %3, align 8
  %22 = icmp ne %struct.l2cap_pcb_listen* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %3, align 8
  %25 = getelementptr inbounds %struct.l2cap_pcb_listen, %struct.l2cap_pcb_listen* %24, i32 0, i32 0
  %26 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %25, align 8
  store %struct.l2cap_pcb_listen* %26, %struct.l2cap_pcb_listen** %4, align 8
  %27 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %3, align 8
  %28 = bitcast %struct.l2cap_pcb_listen* %27 to %struct.l2cap_pcb*
  %29 = call i32 @l2cap_close(%struct.l2cap_pcb* %28)
  %30 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %4, align 8
  store %struct.l2cap_pcb_listen* %30, %struct.l2cap_pcb_listen** %3, align 8
  br label %20

31:                                               ; preds = %20
  %32 = load %struct.l2cap_seg*, %struct.l2cap_seg** @l2cap_insegs, align 8
  store %struct.l2cap_seg* %32, %struct.l2cap_seg** %5, align 8
  br label %33

33:                                               ; preds = %36, %31
  %34 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %35 = icmp ne %struct.l2cap_seg* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %38 = getelementptr inbounds %struct.l2cap_seg, %struct.l2cap_seg* %37, i32 0, i32 0
  %39 = load %struct.l2cap_seg*, %struct.l2cap_seg** %38, align 8
  store %struct.l2cap_seg* %39, %struct.l2cap_seg** %6, align 8
  %40 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %41 = call i32 @L2CAP_SEG_RMV(%struct.l2cap_seg** @l2cap_insegs, %struct.l2cap_seg* %40)
  %42 = load %struct.l2cap_seg*, %struct.l2cap_seg** %5, align 8
  %43 = call i32 @btmemb_free(i32* @l2cap_segs, %struct.l2cap_seg* %42)
  %44 = load %struct.l2cap_seg*, %struct.l2cap_seg** %6, align 8
  store %struct.l2cap_seg* %44, %struct.l2cap_seg** %5, align 8
  br label %33

45:                                               ; preds = %33
  %46 = call i32 (...) @l2cap_init()
  ret void
}

declare dso_local i32 @l2cap_close(%struct.l2cap_pcb*) #1

declare dso_local i32 @L2CAP_SEG_RMV(%struct.l2cap_seg**, %struct.l2cap_seg*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.l2cap_seg*) #1

declare dso_local i32 @l2cap_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
