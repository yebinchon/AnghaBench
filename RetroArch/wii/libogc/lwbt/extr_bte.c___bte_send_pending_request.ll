; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_send_pending_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_send_pending_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bte_pcb = type { i64, i32, i32, %struct.ctrl_req_t*, i32 }
%struct.ctrl_req_t = type { i32 (i32, %struct.bte_pcb.0*, i64)*, i32, i64, %struct.ctrl_req_t*, i32 }
%struct.bte_pcb.0 = type opaque

@ERR_OK = common dso_local global i64 0, align 8
@STATE_DISCONNECTING = common dso_local global i64 0, align 8
@STATE_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_CLSD = common dso_local global i64 0, align 8
@STATE_SENDING = common dso_local global i32 0, align 4
@STATE_FAILED = common dso_local global i32 0, align 4
@bte_ctrl_reqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bte_pcb*)* @__bte_send_pending_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bte_send_pending_request(%struct.bte_pcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bte_pcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ctrl_req_t*, align 8
  store %struct.bte_pcb* %0, %struct.bte_pcb** %3, align 8
  %6 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %7 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %6, i32 0, i32 3
  %8 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %7, align 8
  %9 = icmp eq %struct.ctrl_req_t* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @ERR_OK, align 8
  store i64 %11, i64* %2, align 8
  br label %84

12:                                               ; preds = %1
  %13 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %14 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATE_DISCONNECTING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %20 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATE_DISCONNECTED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12
  %25 = load i64, i64* @ERR_CLSD, align 8
  store i64 %25, i64* %2, align 8
  br label %84

26:                                               ; preds = %18
  %27 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %28 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %27, i32 0, i32 3
  %29 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %28, align 8
  store %struct.ctrl_req_t* %29, %struct.ctrl_req_t** %5, align 8
  %30 = load i32, i32* @STATE_SENDING, align 4
  %31 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %32 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %34 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %37 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @l2ca_datawrite(i32 %35, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %41 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @btpbuf_free(i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @ERR_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %26
  %48 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %49 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %48, i32 0, i32 3
  %50 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %49, align 8
  %51 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %52 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %51, i32 0, i32 3
  store %struct.ctrl_req_t* %50, %struct.ctrl_req_t** %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %55 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @STATE_FAILED, align 4
  %57 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %58 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %60 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %59, i32 0, i32 0
  %61 = load i32 (i32, %struct.bte_pcb.0*, i64)*, i32 (i32, %struct.bte_pcb.0*, i64)** %60, align 8
  %62 = icmp ne i32 (i32, %struct.bte_pcb.0*, i64)* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %47
  %64 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %65 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %64, i32 0, i32 0
  %66 = load i32 (i32, %struct.bte_pcb.0*, i64)*, i32 (i32, %struct.bte_pcb.0*, i64)** %65, align 8
  %67 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %68 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %71 = bitcast %struct.bte_pcb* %70 to %struct.bte_pcb.0*
  %72 = load i64, i64* %4, align 8
  %73 = call i32 %66(i32 %69, %struct.bte_pcb.0* %71, i64 %72)
  %74 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %5, align 8
  %75 = call i32 @btmemb_free(i32* @bte_ctrl_reqs, %struct.ctrl_req_t* %74)
  br label %81

76:                                               ; preds = %47
  %77 = load %struct.bte_pcb*, %struct.bte_pcb** %3, align 8
  %78 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @LWP_ThreadSignal(i32 %79)
  br label %81

81:                                               ; preds = %76, %63
  br label %82

82:                                               ; preds = %81, %26
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %82, %24, %10
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local i64 @l2ca_datawrite(i32, i32) #1

declare dso_local i32 @btpbuf_free(i32) #1

declare dso_local i32 @btmemb_free(i32*, %struct.ctrl_req_t*) #1

declare dso_local i32 @LWP_ThreadSignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
