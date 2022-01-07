; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Destroying, app tx %u, app rx %u, tunnel tx %u, tunnel rx %u\00", align 1
@M_SONAME = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_FLOW_DIVERT_PCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*)* @flow_divert_pcb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_pcb_destroy(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %2, align 8
  %3 = load i32, i32* @LOG_INFO, align 4
  %4 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %5 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %6 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %9 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %12 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %15 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @FDLOG(i32 %3, %struct.flow_divert_pcb* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %19 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %24 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @M_SONAME, align 4
  %27 = call i32 @FREE(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %30 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %35 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_SONAME, align 4
  %38 = call i32 @FREE(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %41 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %46 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @mbuf_freem(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %51 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %56 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @mbuf_freem(i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %61 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %66 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @M_TEMP, align 4
  %69 = call i32 @FREE(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %72 = load i32, i32* @M_FLOW_DIVERT_PCB, align 4
  %73 = call i32 @FREE_ZONE(%struct.flow_divert_pcb* %71, i32 56, i32 %72)
  ret void
}

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @FREE_ZONE(%struct.flow_divert_pcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
