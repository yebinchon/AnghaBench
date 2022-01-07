; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_set_max_rwinscale.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_set_max_rwinscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@tcp_do_rfc1323 = common dso_local global i32 0, align 4
@IFEF_3CA = common dso_local global i32 0, align 4
@tcp_autorcvbuf_max = common dso_local global i32 0, align 4
@tcp_win_scale = common dso_local global i32 0, align 4
@SB_USRSIZE = common dso_local global i32 0, align 4
@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@TCP_MAXWIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_max_rwinscale(%struct.tcpcb* %0, %struct.socket* %1, %struct.ifnet* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store %struct.ifnet* %2, %struct.ifnet** %6, align 8
  %9 = load i32, i32* @tcp_do_rfc1323, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %86

14:                                               ; preds = %3
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = icmp ne %struct.ifnet* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %19 = call i64 @IFNET_IS_CELLULAR(%struct.ifnet* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFEF_3CA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %14
  %29 = load i32, i32* @tcp_autorcvbuf_max, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %21, %17
  %32 = load i32, i32* @tcp_autorcvbuf_max, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* @tcp_win_scale, align 4
  %35 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @max(i32 %34, i32 %37)
  %39 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SB_USRSIZE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi i32 [ %52, %48 ], [ %54, %53 ]
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %73, %55
  %58 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* @TCP_MAXWIN, align 4
  %65 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %64, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %63, %57
  %72 = phi i1 [ false, %57 ], [ %70, %63 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %57

78:                                               ; preds = %71
  %79 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %83 = call i32 @min(i32 %81, i32 %82)
  %84 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %11
  ret void
}

declare dso_local i64 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
