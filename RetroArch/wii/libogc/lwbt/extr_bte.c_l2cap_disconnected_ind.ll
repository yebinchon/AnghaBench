; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_l2cap_disconnected_ind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_l2cap_disconnected_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32 }
%struct.bte_pcb = type { i32, i32 (i32, %struct.bte_pcb*, i32)*, i8*, i32, i32*, i32* }

@ERR_OK = common dso_local global i32 0, align 4
@STATE_DISCONNECTING = common dso_local global i64 0, align 8
@STATE_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_disconnected_ind(i8* %0, %struct.l2cap_pcb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.l2cap_pcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bte_pcb*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.l2cap_pcb* %1, %struct.l2cap_pcb** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bte_pcb*
  store %struct.bte_pcb* %10, %struct.bte_pcb** %8, align 8
  %11 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %12 = icmp eq %struct.bte_pcb* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ERR_OK, align 4
  store i32 %14, i32* %4, align 4
  br label %73

15:                                               ; preds = %3
  %16 = load i64, i64* @STATE_DISCONNECTING, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %19 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %6, align 8
  %21 = call i32 @l2cap_psm(%struct.l2cap_pcb* %20)
  switch i32 %21, label %36 [
    i32 129, label %22
    i32 128, label %29
  ]

22:                                               ; preds = %15
  %23 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %24 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @l2cap_close(i32* %25)
  %27 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %28 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %31 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @l2cap_close(i32* %32)
  %34 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %35 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %34, i32 0, i32 5
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %15, %29, %22
  %37 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %38 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %36
  %42 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %43 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load i32, i32* @ERR_OK, align 4
  %48 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %49 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* @STATE_DISCONNECTED, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %53 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %55 = call i32 @__bte_close_ctrl_queue(%struct.bte_pcb* %54)
  %56 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %57 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %56, i32 0, i32 1
  %58 = load i32 (i32, %struct.bte_pcb*, i32)*, i32 (i32, %struct.bte_pcb*, i32)** %57, align 8
  %59 = icmp ne i32 (i32, %struct.bte_pcb*, i32)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %62 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %61, i32 0, i32 1
  %63 = load i32 (i32, %struct.bte_pcb*, i32)*, i32 (i32, %struct.bte_pcb*, i32)** %62, align 8
  %64 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %65 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.bte_pcb*, %struct.bte_pcb** %8, align 8
  %68 = load i32, i32* @ERR_OK, align 4
  %69 = call i32 %63(i32 %66, %struct.bte_pcb* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %46
  br label %71

71:                                               ; preds = %70, %41, %36
  %72 = load i32, i32* @ERR_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @l2cap_psm(%struct.l2cap_pcb*) #1

declare dso_local i32 @l2cap_close(i32*) #1

declare dso_local i32 @__bte_close_ctrl_queue(%struct.bte_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
