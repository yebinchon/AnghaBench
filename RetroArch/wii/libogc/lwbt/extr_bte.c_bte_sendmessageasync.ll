; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_sendmessageasync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_sendmessageasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bte_pcb = type { i64 }
%struct.pbuf = type { i64 }
%struct.ctrl_req_t = type { i32 (i8*, %struct.bte_pcb.0*, i32)*, %struct.bte_pcb*, %struct.pbuf* }
%struct.bte_pcb.0 = type opaque

@ERR_VAL = common dso_local global i32 0, align 4
@STATE_DISCONNECTING = common dso_local global i64 0, align 8
@STATE_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_CLSD = common dso_local global i32 0, align 4
@bte_ctrl_reqs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"bte_sendmessageasync: Could not allocate memory for request\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"bte_sendmessageasync: Could not allocate memory for pbuf\0A\00", align 1
@HIDP_TRANS_SETREPORT = common dso_local global i32 0, align 4
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bte_sendmessageasync(%struct.bte_pcb* %0, i8* %1, i32 %2, i32 (i8*, %struct.bte_pcb*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bte_pcb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.bte_pcb*, i32)*, align 8
  %10 = alloca %struct.pbuf*, align 8
  %11 = alloca %struct.ctrl_req_t*, align 8
  store %struct.bte_pcb* %0, %struct.bte_pcb** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i8*, %struct.bte_pcb*, i32)* %3, i32 (i8*, %struct.bte_pcb*, i32)** %9, align 8
  %12 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %13 = icmp eq %struct.bte_pcb* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %4
  %21 = load i32, i32* @ERR_VAL, align 4
  store i32 %21, i32* %5, align 4
  br label %82

22:                                               ; preds = %17
  %23 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %24 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @STATE_DISCONNECTING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %30 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STATE_DISCONNECTED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @ERR_CLSD, align 4
  store i32 %35, i32* %5, align 4
  br label %82

36:                                               ; preds = %28
  %37 = call %struct.ctrl_req_t* @btmemb_alloc(i32* @bte_ctrl_reqs)
  store %struct.ctrl_req_t* %37, %struct.ctrl_req_t** %11, align 8
  %38 = icmp eq %struct.ctrl_req_t* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @ERROR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ERR_MEM, align 4
  store i32 %41, i32* %5, align 4
  br label %82

42:                                               ; preds = %36
  %43 = load i32, i32* @PBUF_RAW, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 1, %44
  %46 = load i32, i32* @PBUF_RAM, align 4
  %47 = call %struct.pbuf* @btpbuf_alloc(i32 %43, i32 %45, i32 %46)
  store %struct.pbuf* %47, %struct.pbuf** %10, align 8
  %48 = icmp eq %struct.pbuf* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %11, align 8
  %52 = call i32 @btmemb_free(i32* @bte_ctrl_reqs, %struct.ctrl_req_t* %51)
  %53 = load i32, i32* @ERR_MEM, align 4
  store i32 %53, i32* %5, align 4
  br label %82

54:                                               ; preds = %42
  %55 = load i32, i32* @HIDP_TRANS_SETREPORT, align 4
  %56 = load i32, i32* @HIDP_DATA_RTYPE_OUPUT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %64 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @memcpy(i64 %66, i8* %67, i32 %68)
  %70 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %71 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %11, align 8
  %72 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %71, i32 0, i32 2
  store %struct.pbuf* %70, %struct.pbuf** %72, align 8
  %73 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %74 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %11, align 8
  %75 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %74, i32 0, i32 1
  store %struct.bte_pcb* %73, %struct.bte_pcb** %75, align 8
  %76 = load i32 (i8*, %struct.bte_pcb*, i32)*, i32 (i8*, %struct.bte_pcb*, i32)** %9, align 8
  %77 = bitcast i32 (i8*, %struct.bte_pcb*, i32)* %76 to i32 (i8*, %struct.bte_pcb.0*, i32)*
  %78 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %11, align 8
  %79 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %78, i32 0, i32 0
  store i32 (i8*, %struct.bte_pcb.0*, i32)* %77, i32 (i8*, %struct.bte_pcb.0*, i32)** %79, align 8
  %80 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %11, align 8
  %81 = call i32 @__bte_send_request(%struct.ctrl_req_t* %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %54, %49, %39, %34, %20
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.ctrl_req_t* @btmemb_alloc(i32*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @btmemb_free(i32*, %struct.ctrl_req_t*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @__bte_send_request(%struct.ctrl_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
