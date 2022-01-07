; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_choose_subflow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_choose_subflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsub = type { i32 }
%struct.tcpcb = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mptsub* (%struct.mptsub*, %struct.mptsub*, i32*)* @mptcp_choose_subflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mptsub* @mptcp_choose_subflow(%struct.mptsub* %0, %struct.mptsub* %1, i32* %2) #0 {
  %4 = alloca %struct.mptsub*, align 8
  %5 = alloca %struct.mptsub*, align 8
  %6 = alloca %struct.mptsub*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  store %struct.mptsub* %0, %struct.mptsub** %5, align 8
  store %struct.mptsub* %1, %struct.mptsub** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mptsub*, %struct.mptsub** %5, align 8
  %10 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tcpcb* @sototcpcb(i32 %11)
  store %struct.tcpcb* %12, %struct.tcpcb** %8, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.mptsub*, %struct.mptsub** %6, align 8
  %26 = icmp eq %struct.mptsub* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.mptsub*, %struct.mptsub** %6, align 8
  %34 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.tcpcb* @sototcpcb(i32 %35)
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32, %27, %24
  %41 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mptsub*, %struct.mptsub** %5, align 8
  store %struct.mptsub* %45, %struct.mptsub** %4, align 8
  br label %77

46:                                               ; preds = %32, %17, %3
  %47 = load %struct.mptsub*, %struct.mptsub** %6, align 8
  %48 = icmp ne %struct.mptsub* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.mptsub*, %struct.mptsub** %6, align 8
  %51 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.tcpcb* @sototcpcb(i32 %52)
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.mptsub*, %struct.mptsub** %5, align 8
  store %struct.mptsub* %67, %struct.mptsub** %4, align 8
  br label %77

68:                                               ; preds = %57, %49, %46
  %69 = load %struct.mptsub*, %struct.mptsub** %6, align 8
  %70 = icmp ne %struct.mptsub* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load %struct.mptsub*, %struct.mptsub** %6, align 8
  br label %75

73:                                               ; preds = %68
  %74 = load %struct.mptsub*, %struct.mptsub** %5, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi %struct.mptsub* [ %72, %71 ], [ %74, %73 ]
  store %struct.mptsub* %76, %struct.mptsub** %4, align 8
  br label %77

77:                                               ; preds = %75, %62, %40
  %78 = load %struct.mptsub*, %struct.mptsub** %4, align 8
  ret %struct.mptsub* %78
}

declare dso_local %struct.tcpcb* @sototcpcb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
