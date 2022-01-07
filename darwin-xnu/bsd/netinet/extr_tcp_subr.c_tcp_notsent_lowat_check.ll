; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_notsent_lowat_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_notsent_lowat_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32, i32, i32, i32, i32 }

@TF_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_notsent_lowat_check(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call %struct.inpcb* @sotoinpcb(%struct.socket* %7)
  store %struct.inpcb* %8, %struct.inpcb** %4, align 8
  store %struct.tcpcb* null, %struct.tcpcb** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = icmp ne %struct.inpcb* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %13 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %12)
  store %struct.tcpcb* %13, %struct.tcpcb** %5, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %16 = icmp eq %struct.tcpcb* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %55

18:                                               ; preds = %14
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = sub nsw i32 %22, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %55

37:                                               ; preds = %18
  %38 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TF_NODELAY, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %47, %44, %37
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %36, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
