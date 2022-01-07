; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bte_pcb = type { i32, i64 }

@bte_pcbs = common dso_local global i32 0, align 4
@STATE_NOTREADY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bte_pcb* @bte_new() #0 {
  %1 = alloca %struct.bte_pcb*, align 8
  %2 = alloca %struct.bte_pcb*, align 8
  %3 = call %struct.bte_pcb* @btmemb_alloc(i32* @bte_pcbs)
  store %struct.bte_pcb* %3, %struct.bte_pcb** %2, align 8
  %4 = icmp eq %struct.bte_pcb* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.bte_pcb* null, %struct.bte_pcb** %1, align 8
  br label %16

6:                                                ; preds = %0
  %7 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %8 = call i32 @memset(%struct.bte_pcb* %7, i32 0, i32 16)
  %9 = load i64, i64* @STATE_NOTREADY, align 8
  %10 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %11 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  %13 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %12, i32 0, i32 0
  %14 = call i32 @LWP_InitQueue(i32* %13)
  %15 = load %struct.bte_pcb*, %struct.bte_pcb** %2, align 8
  store %struct.bte_pcb* %15, %struct.bte_pcb** %1, align 8
  br label %16

16:                                               ; preds = %6, %5
  %17 = load %struct.bte_pcb*, %struct.bte_pcb** %1, align 8
  ret %struct.bte_pcb* %17
}

declare dso_local %struct.bte_pcb* @btmemb_alloc(i32*) #1

declare dso_local i32 @memset(%struct.bte_pcb*, i32, i32) #1

declare dso_local i32 @LWP_InitQueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
