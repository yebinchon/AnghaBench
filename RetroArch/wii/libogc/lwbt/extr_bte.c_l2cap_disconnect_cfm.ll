; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_l2cap_disconnect_cfm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_l2cap_disconnect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32 }
%struct.bte_pcb = type { i32, i32, i32 (i32, %struct.bte_pcb*, i32)*, i64, i32, i32*, i32* }

@ERR_OK = common dso_local global i32 0, align 4
@STATE_DISCONNECTED = common dso_local global i64 0, align 8
@HCI_OTHER_END_TERMINATED_CONN_USER_ENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_disconnect_cfm(i8* %0, %struct.l2cap_pcb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2cap_pcb*, align 8
  %6 = alloca %struct.bte_pcb*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.l2cap_pcb* %1, %struct.l2cap_pcb** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bte_pcb*
  store %struct.bte_pcb* %8, %struct.bte_pcb** %6, align 8
  %9 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %10 = icmp eq %struct.bte_pcb* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ERR_OK, align 4
  store i32 %12, i32* %3, align 4
  br label %91

13:                                               ; preds = %2
  %14 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %15 = call i32 @l2cap_psm(%struct.l2cap_pcb* %14)
  switch i32 %15, label %50 [
    i32 129, label %16
    i32 128, label %33
  ]

16:                                               ; preds = %13
  %17 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %18 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @l2cap_close(i32* %19)
  %21 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %22 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %21, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %24 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %29 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @l2ca_disconnect_req(i32* %30, i32 (i8*, %struct.l2cap_pcb*)* @l2cap_disconnect_cfm)
  br label %32

32:                                               ; preds = %27, %16
  br label %50

33:                                               ; preds = %13
  %34 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %35 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @l2cap_close(i32* %36)
  %38 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %39 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %38, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %41 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %46 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @l2ca_disconnect_req(i32* %47, i32 (i8*, %struct.l2cap_pcb*)* @l2cap_disconnect_cfm)
  br label %49

49:                                               ; preds = %44, %33
  br label %50

50:                                               ; preds = %13, %49, %32
  %51 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %52 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %57 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i32, i32* @ERR_OK, align 4
  %62 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %63 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* @STATE_DISCONNECTED, align 8
  %65 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %66 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %68 = call i32 @__bte_close_ctrl_queue(%struct.bte_pcb* %67)
  %69 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %70 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %69, i32 0, i32 2
  %71 = load i32 (i32, %struct.bte_pcb*, i32)*, i32 (i32, %struct.bte_pcb*, i32)** %70, align 8
  %72 = icmp ne i32 (i32, %struct.bte_pcb*, i32)* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %60
  %74 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %75 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %74, i32 0, i32 2
  %76 = load i32 (i32, %struct.bte_pcb*, i32)*, i32 (i32, %struct.bte_pcb*, i32)** %75, align 8
  %77 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %78 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %81 = load i32, i32* @ERR_OK, align 4
  %82 = call i32 %76(i32 %79, %struct.bte_pcb* %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %60
  %84 = call i32 @hci_cmd_complete(i32* null)
  %85 = load %struct.bte_pcb*, %struct.bte_pcb** %6, align 8
  %86 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %85, i32 0, i32 0
  %87 = load i32, i32* @HCI_OTHER_END_TERMINATED_CONN_USER_ENDED, align 4
  %88 = call i32 @hci_disconnect(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %55, %50
  %90 = load i32, i32* @ERR_OK, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %11
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @l2cap_psm(%struct.l2cap_pcb*) #1

declare dso_local i32 @l2cap_close(i32*) #1

declare dso_local i32 @l2ca_disconnect_req(i32*, i32 (i8*, %struct.l2cap_pcb*)*) #1

declare dso_local i32 @__bte_close_ctrl_queue(%struct.bte_pcb*) #1

declare dso_local i32 @hci_cmd_complete(i32*) #1

declare dso_local i32 @hci_disconnect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
