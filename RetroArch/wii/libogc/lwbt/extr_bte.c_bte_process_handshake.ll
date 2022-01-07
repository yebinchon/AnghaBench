; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_process_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_process_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bte_pcb = type { i32, i32, %struct.ctrl_req_t* }
%struct.ctrl_req_t = type { i32 (i32, %struct.bte_pcb.0*, i32)*, i32, i32, %struct.ctrl_req_t* }
%struct.bte_pcb.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"bte_process_handshake(%p)\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4
@STATE_SENT = common dso_local global i32 0, align 4
@bte_ctrl_reqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bte_pcb*, i32, i8*, i32)* @bte_process_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bte_process_handshake(%struct.bte_pcb* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bte_pcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctrl_req_t*, align 8
  store %struct.bte_pcb* %0, %struct.bte_pcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %11 = call i32 @LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.bte_pcb* %10)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %55 [
    i32 129, label %13
    i32 131, label %53
    i32 133, label %53
    i32 130, label %53
    i32 132, label %53
    i32 128, label %53
    i32 134, label %54
  ]

13:                                               ; preds = %4
  %14 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %15 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %14, i32 0, i32 2
  %16 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %15, align 8
  store %struct.ctrl_req_t* %16, %struct.ctrl_req_t** %9, align 8
  %17 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %9, align 8
  %18 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %17, i32 0, i32 3
  %19 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %18, align 8
  %20 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %21 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %20, i32 0, i32 2
  store %struct.ctrl_req_t* %19, %struct.ctrl_req_t** %21, align 8
  %22 = load i32, i32* @ERR_OK, align 4
  %23 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %9, align 8
  %24 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @STATE_SENT, align 4
  %26 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %9, align 8
  %27 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %9, align 8
  %29 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.bte_pcb.0*, i32)*, i32 (i32, %struct.bte_pcb.0*, i32)** %29, align 8
  %31 = icmp ne i32 (i32, %struct.bte_pcb.0*, i32)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %13
  %33 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %9, align 8
  %34 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %33, i32 0, i32 0
  %35 = load i32 (i32, %struct.bte_pcb.0*, i32)*, i32 (i32, %struct.bte_pcb.0*, i32)** %34, align 8
  %36 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %37 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %40 = bitcast %struct.bte_pcb* %39 to %struct.bte_pcb.0*
  %41 = load i32, i32* @ERR_OK, align 4
  %42 = call i32 %35(i32 %38, %struct.bte_pcb.0* %40, i32 %41)
  %43 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %9, align 8
  %44 = call i32 @btmemb_free(i32* @bte_ctrl_reqs, %struct.ctrl_req_t* %43)
  br label %50

45:                                               ; preds = %13
  %46 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %47 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @LWP_ThreadSignal(i32 %48)
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %52 = call i32 @__bte_send_pending_request(%struct.bte_pcb* %51)
  br label %56

53:                                               ; preds = %4, %4, %4, %4, %4
  br label %56

54:                                               ; preds = %4
  br label %56

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %55, %54, %53, %50
  ret void
}

declare dso_local i32 @LOG(i8*, %struct.bte_pcb*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.ctrl_req_t*) #1

declare dso_local i32 @LWP_ThreadSignal(i32) #1

declare dso_local i32 @__bte_send_pending_request(%struct.bte_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
