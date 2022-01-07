; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_mark_packet_from_socket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_mark_packet_from_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i64 }
%struct.inpcb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_ID_NONE = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_PASS = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_IP_TUNNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_mark_packet_from_socket(%struct.mbuf* %0, %struct.inpcb* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store %struct.inpcb* %1, %struct.inpcb** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %13 = icmp eq %struct.mbuf* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %5
  %15 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %16 = icmp eq %struct.inpcb* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @M_PKTHDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17, %14, %5
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %110

26:                                               ; preds = %17
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i64 %31, i64* %35, align 8
  br label %68

36:                                               ; preds = %26
  %37 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_PASS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_IP_TUNNEL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %44, %36
  %53 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  store i64 %56, i64* %60, align 8
  br label %67

61:                                               ; preds = %44
  %62 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %52
  br label %68

68:                                               ; preds = %67, %30
  %69 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i64 %76, i64* %80, align 8
  br label %91

81:                                               ; preds = %68
  %82 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %81, %75
  %92 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %93 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  br label %109

109:                                              ; preds = %103, %91
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %24
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
