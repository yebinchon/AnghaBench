; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_implicit_data_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_implicit_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_divert_implicit_data_out(%struct.socket* %0, i32 %1, i64 %2, %struct.sockaddr* %3, i64 %4, %struct.proc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca %struct.flow_divert_pcb*, align 8
  %15 = alloca %struct.inpcb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.proc* %5, %struct.proc** %13, align 8
  %18 = load %struct.socket*, %struct.socket** %8, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %19, align 8
  store %struct.flow_divert_pcb* %20, %struct.flow_divert_pcb** %14, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.socket*, %struct.socket** %8, align 8
  %22 = call %struct.inpcb* @sotoinpcb(%struct.socket* %21)
  store %struct.inpcb* %22, %struct.inpcb** %15, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %24 = icmp eq %struct.inpcb* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %7, align 4
  br label %74

27:                                               ; preds = %6
  %28 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %14, align 8
  %29 = icmp eq %struct.flow_divert_pcb* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %32 = call i64 @necp_socket_get_flow_divert_control_unit(%struct.inpcb* %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.socket*, %struct.socket** %8, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call i32 @flow_divert_pcb_init(%struct.socket* %36, i64 %37)
  store i32 %38, i32* %16, align 4
  %39 = load %struct.socket*, %struct.socket** %8, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %40, align 8
  store %struct.flow_divert_pcb* %41, %struct.flow_divert_pcb** %14, align 8
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %14, align 8
  %46 = icmp eq %struct.flow_divert_pcb* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %35
  br label %60

48:                                               ; preds = %44
  br label %51

49:                                               ; preds = %30
  %50 = load i32, i32* @ENETDOWN, align 4
  store i32 %50, i32* %16, align 4
  br label %60

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.socket*, %struct.socket** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.proc*, %struct.proc** %13, align 8
  %59 = call i32 @flow_divert_data_out(%struct.socket* %53, i32 %54, i64 %55, %struct.sockaddr* %56, i64 %57, %struct.proc* %58)
  store i32 %59, i32* %7, align 4
  br label %74

60:                                               ; preds = %49, %47
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @mbuf_freem(i64 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @mbuf_free(i64 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %52, %25
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @necp_socket_get_flow_divert_control_unit(%struct.inpcb*) #1

declare dso_local i32 @flow_divert_pcb_init(%struct.socket*, i64) #1

declare dso_local i32 @flow_divert_data_out(%struct.socket*, i32, i64, %struct.sockaddr*, i64, %struct.proc*) #1

declare dso_local i32 @mbuf_freem(i64) #1

declare dso_local i32 @mbuf_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
