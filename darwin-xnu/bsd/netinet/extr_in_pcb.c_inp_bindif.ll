; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_bindif.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_bindif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.inpcb = type { i32, i32, %struct.ifnet* }

@if_index = common dso_local global i64 0, align 8
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@ENXIO = common dso_local global i32 0, align 4
@INP_BOUND_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inp_bindif(%struct.inpcb* %0, i32 %1, %struct.ifnet** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet**, align 8
  %8 = alloca %struct.ifnet*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifnet** %2, %struct.ifnet*** %7, align 8
  store %struct.ifnet* null, %struct.ifnet** %8, align 8
  %9 = call i32 (...) @ifnet_head_lock_shared()
  %10 = load i32, i32* %6, align 4
  %11 = load i64, i64* @if_index, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IFSCOPE_NONE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %19, i64 %21
  %23 = load %struct.ifnet*, %struct.ifnet** %22, align 8
  store %struct.ifnet* %23, %struct.ifnet** %8, align 8
  %24 = icmp eq %struct.ifnet* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %3
  %26 = call i32 (...) @ifnet_head_done()
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %18, %14
  %29 = call i32 (...) @ifnet_head_done()
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = icmp ne %struct.ifnet* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IFSCOPE_NONE, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @VERIFY(i32 %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 2
  store %struct.ifnet* %40, %struct.ifnet** %42, align 8
  %43 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 2
  %45 = load %struct.ifnet*, %struct.ifnet** %44, align 8
  %46 = icmp eq %struct.ifnet* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i32, i32* @INP_BOUND_IF, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %60

54:                                               ; preds = %36
  %55 = load i32, i32* @INP_BOUND_IF, align 4
  %56 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %62 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %61, i32 0, i32 0
  %63 = call i32 @ROUTE_RELEASE(i32* %62)
  %64 = load %struct.ifnet**, %struct.ifnet*** %7, align 8
  %65 = icmp ne %struct.ifnet** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %68 = load %struct.ifnet**, %struct.ifnet*** %7, align 8
  store %struct.ifnet* %67, %struct.ifnet** %68, align 8
  br label %69

69:                                               ; preds = %66, %60
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ROUTE_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
