; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_add_data_statistics.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_add_data_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }
%struct.inpcb = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@txpackets = common dso_local global i32 0, align 4
@txbytes = common dso_local global i32 0, align 4
@rxpackets = common dso_local global i32 0, align 4
@rxbytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*, i32, i32)* @flow_divert_add_data_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_add_data_statistics(%struct.flow_divert_pcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.inpcb* null, %struct.inpcb** %7, align 8
  store %struct.ifnet* null, %struct.ifnet** %8, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %16 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inpcb* @sotoinpcb(i32 %17)
  store %struct.inpcb* %18, %struct.inpcb** %7, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %20 = icmp eq %struct.inpcb* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %83

22:                                               ; preds = %3
  %23 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 0
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %8, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %27 = icmp ne %struct.ifnet* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %30 = call i32 @IFNET_IS_CELLULAR(%struct.ifnet* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %35 = call i64 @IFNET_IS_WIFI(%struct.ifnet* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = call i64 @IFNET_IS_WIRED(%struct.ifnet* %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %22
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @txpackets, align 4
  %58 = call i32 @INP_ADD_STAT(%struct.inpcb* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 1)
  %59 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @txbytes, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @INP_ADD_STAT(%struct.inpcb* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  br label %80

66:                                               ; preds = %49
  %67 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @rxpackets, align 4
  %72 = call i32 @INP_ADD_STAT(%struct.inpcb* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @rxbytes, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @INP_ADD_STAT(%struct.inpcb* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %52
  %81 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %82 = call i32 @inp_set_activity_bitmap(%struct.inpcb* %81)
  br label %83

83:                                               ; preds = %80, %21
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(i32) #1

declare dso_local i32 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIFI(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIRED(%struct.ifnet*) #1

declare dso_local i32 @INP_ADD_STAT(%struct.inpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inp_set_activity_bitmap(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
