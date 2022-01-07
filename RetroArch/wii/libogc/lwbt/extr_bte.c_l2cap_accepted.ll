; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_l2cap_accepted.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_l2cap_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32 }
%struct.bte_pcb = type { i64, i32, i32 (i32, %struct.bte_pcb*, i64)*, i64, %struct.l2cap_pcb*, %struct.l2cap_pcb* }

@ERR_OK = common dso_local global i64 0, align 8
@bte_process_input = common dso_local global i32 0, align 4
@l2cap_disconnected_ind = common dso_local global i32 0, align 4
@STATE_CONNECTED = common dso_local global i64 0, align 8
@ERR_CONN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2cap_accepted(i8* %0, %struct.l2cap_pcb* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2cap_pcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bte_pcb*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.l2cap_pcb* %1, %struct.l2cap_pcb** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bte_pcb*
  store %struct.bte_pcb* %9, %struct.bte_pcb** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ERR_OK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %3
  %14 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %15 = load i32, i32* @bte_process_input, align 4
  %16 = call i32 @l2cap_recv(%struct.l2cap_pcb* %14, i32 %15)
  %17 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %18 = load i32, i32* @l2cap_disconnected_ind, align 4
  %19 = call i32 @l2cap_disconnect_ind(%struct.l2cap_pcb* %17, i32 %18)
  %20 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %21 = call i32 @l2cap_psm(%struct.l2cap_pcb* %20)
  switch i32 %21, label %30 [
    i32 129, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %13
  %23 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %24 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %25 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %24, i32 0, i32 4
  store %struct.l2cap_pcb* %23, %struct.l2cap_pcb** %25, align 8
  br label %30

26:                                               ; preds = %13
  %27 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %28 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %29 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %28, i32 0, i32 5
  store %struct.l2cap_pcb* %27, %struct.l2cap_pcb** %29, align 8
  br label %30

30:                                               ; preds = %13, %26, %22
  %31 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %32 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %31, i32 0, i32 5
  %33 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %32, align 8
  %34 = icmp ne %struct.l2cap_pcb* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %37 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %36, i32 0, i32 4
  %38 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %37, align 8
  %39 = icmp ne %struct.l2cap_pcb* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load i64, i64* @ERR_OK, align 8
  %42 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %43 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @STATE_CONNECTED, align 8
  %45 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %46 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %48 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %47, i32 0, i32 2
  %49 = load i32 (i32, %struct.bte_pcb*, i64)*, i32 (i32, %struct.bte_pcb*, i64)** %48, align 8
  %50 = icmp ne i32 (i32, %struct.bte_pcb*, i64)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %53 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %52, i32 0, i32 2
  %54 = load i32 (i32, %struct.bte_pcb*, i64)*, i32 (i32, %struct.bte_pcb*, i64)** %53, align 8
  %55 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %56 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %59 = load i64, i64* @ERR_OK, align 8
  %60 = call i32 %54(i32 %57, %struct.bte_pcb* %58, i64 %59)
  br label %61

61:                                               ; preds = %51, %40
  br label %62

62:                                               ; preds = %61, %35, %30
  br label %78

63:                                               ; preds = %3
  %64 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %5, align 8
  %65 = call i32 @l2cap_close(%struct.l2cap_pcb* %64)
  %66 = load i64, i64* @ERR_CONN, align 8
  %67 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %68 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %70 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %69, i32 0, i32 2
  %71 = load i32 (i32, %struct.bte_pcb*, i64)*, i32 (i32, %struct.bte_pcb*, i64)** %70, align 8
  %72 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %73 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bte_pcb*, %struct.bte_pcb** %7, align 8
  %76 = load i64, i64* @ERR_CONN, align 8
  %77 = call i32 %71(i32 %74, %struct.bte_pcb* %75, i64 %76)
  br label %78

78:                                               ; preds = %63, %62
  %79 = load i64, i64* @ERR_OK, align 8
  ret i64 %79
}

declare dso_local i32 @l2cap_recv(%struct.l2cap_pcb*, i32) #1

declare dso_local i32 @l2cap_disconnect_ind(%struct.l2cap_pcb*, i32) #1

declare dso_local i32 @l2cap_psm(%struct.l2cap_pcb*) #1

declare dso_local i32 @l2cap_close(%struct.l2cap_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
