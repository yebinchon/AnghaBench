; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_process_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32 }
%struct.pbuf = type { i32*, i32 }
%struct.bte_pcb = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"bte_process_input(%p,%p)\0A\00", align 1
@STATE_DISCONNECTING = common dso_local global i64 0, align 8
@STATE_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_CLSD = common dso_local global i32 0, align 4
@HIDP_HDR_TRANS_MASK = common dso_local global i32 0, align 4
@HIDP_HDR_PARAM_MASK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.l2cap_pcb*, %struct.pbuf*, i32)* @bte_process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bte_process_input(i8* %0, %struct.l2cap_pcb* %1, %struct.pbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.l2cap_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bte_pcb*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.l2cap_pcb* %1, %struct.l2cap_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.bte_pcb*
  store %struct.bte_pcb* %17, %struct.bte_pcb** %15, align 8
  %18 = load %struct.bte_pcb*, %struct.bte_pcb** %15, align 8
  %19 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %20 = call i32 @LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.bte_pcb* %18, %struct.pbuf* %19)
  %21 = load %struct.bte_pcb*, %struct.bte_pcb** %15, align 8
  %22 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATE_DISCONNECTING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.bte_pcb*, %struct.bte_pcb** %15, align 8
  %28 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATE_DISCONNECTED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %4
  %33 = load i32, i32* @ERR_CLSD, align 4
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %26
  %35 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  %38 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @HIDP_HDR_TRANS_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @HIDP_HDR_PARAM_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  switch i32 %52, label %66 [
    i32 129, label %53
    i32 128, label %59
    i32 130, label %60
  ]

53:                                               ; preds = %34
  %54 = load %struct.bte_pcb*, %struct.bte_pcb** %15, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @bte_process_handshake(%struct.bte_pcb* %54, i32 %55, i32* %56, i32 %57)
  br label %67

59:                                               ; preds = %34
  br label %67

60:                                               ; preds = %34
  %61 = load %struct.bte_pcb*, %struct.bte_pcb** %15, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @bte_process_data(%struct.bte_pcb* %61, i32 %62, i32* %63, i32 %64)
  br label %67

66:                                               ; preds = %34
  br label %67

67:                                               ; preds = %66, %60, %59, %53
  %68 = load i32, i32* @ERR_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %32
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @LOG(i8*, %struct.bte_pcb*, %struct.pbuf*) #1

declare dso_local i32 @bte_process_handshake(%struct.bte_pcb*, i32, i32*, i32) #1

declare dso_local i32 @bte_process_data(%struct.bte_pcb*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
