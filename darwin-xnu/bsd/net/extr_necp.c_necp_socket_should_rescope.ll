; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_should_rescope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_should_rescope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_SOCKET_SCOPED = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_SCOPED_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_socket_should_rescope(%struct.inpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %5 = icmp eq %struct.inpcb* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SOCKET_SCOPED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SCOPED_DIRECT, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %16, %8
  %25 = phi i1 [ true, %8 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
