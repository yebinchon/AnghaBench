; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { %struct.flow_divert_group*, i32 }
%struct.flow_divert_group = type { i32, i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Removing from group %d, ref count = %d\00", align 1
@fd_pcb_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*)* @flow_divert_pcb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_pcb_remove(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca %struct.flow_divert_pcb*, align 8
  %3 = alloca %struct.flow_divert_group*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %2, align 8
  %4 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %4, i32 0, i32 0
  %6 = load %struct.flow_divert_group*, %struct.flow_divert_group** %5, align 8
  %7 = icmp ne %struct.flow_divert_group* %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %10 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %9, i32 0, i32 0
  %11 = load %struct.flow_divert_group*, %struct.flow_divert_group** %10, align 8
  store %struct.flow_divert_group* %11, %struct.flow_divert_group** %3, align 8
  %12 = load %struct.flow_divert_group*, %struct.flow_divert_group** %3, align 8
  %13 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %12, i32 0, i32 0
  %14 = call i32 @lck_rw_lock_exclusive(i32* %13)
  %15 = load i32, i32* @LOG_INFO, align 4
  %16 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %17 = load %struct.flow_divert_group*, %struct.flow_divert_group** %3, align 8
  %18 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %21 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @FDLOG(i32 %15, %struct.flow_divert_pcb* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @fd_pcb_tree, align 4
  %25 = load %struct.flow_divert_group*, %struct.flow_divert_group** %3, align 8
  %26 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %25, i32 0, i32 1
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %28 = call i32 @RB_REMOVE(i32 %24, i32* %26, %struct.flow_divert_pcb* %27)
  %29 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %30 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %29, i32 0, i32 0
  store %struct.flow_divert_group* null, %struct.flow_divert_group** %30, align 8
  %31 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %32 = call i32 @FDRELEASE(%struct.flow_divert_pcb* %31)
  %33 = load %struct.flow_divert_group*, %struct.flow_divert_group** %3, align 8
  %34 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %33, i32 0, i32 0
  %35 = call i32 @lck_rw_done(i32* %34)
  br label %36

36:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.flow_divert_pcb*) #1

declare dso_local i32 @FDRELEASE(%struct.flow_divert_pcb*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
