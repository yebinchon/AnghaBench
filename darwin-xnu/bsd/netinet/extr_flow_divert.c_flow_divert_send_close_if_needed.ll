; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_close_if_needed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_close_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@FLOW_DIVERT_READ_CLOSED = common dso_local global i32 0, align 4
@FLOW_DIVERT_TUNNEL_RD_CLOSED = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@FLOW_DIVERT_WRITE_CLOSED = common dso_local global i32 0, align 4
@FLOW_DIVERT_TUNNEL_WR_CLOSED = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sending close, how = %d\00", align 1
@ENOBUFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*)* @flow_divert_send_close_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_send_close_if_needed(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca %struct.flow_divert_pcb*, align 8
  %3 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %13 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLOW_DIVERT_READ_CLOSED, align 4
  %16 = load i32, i32* @FLOW_DIVERT_TUNNEL_RD_CLOSED, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @FLOW_DIVERT_READ_CLOSED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @SHUT_RD, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %25 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FLOW_DIVERT_WRITE_CLOSED, align 4
  %28 = load i32, i32* @FLOW_DIVERT_TUNNEL_WR_CLOSED, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @FLOW_DIVERT_WRITE_CLOSED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SHUT_RD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @SHUT_RDWR, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SHUT_WR, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load i32, i32* @LOG_INFO, align 4
  %48 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @FDLOG(i32 %47, %struct.flow_divert_pcb* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @flow_divert_send_close(%struct.flow_divert_pcb* %51, i32 %52)
  %54 = load i64, i64* @ENOBUFS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %46
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SHUT_RD, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @FLOW_DIVERT_TUNNEL_WR_CLOSED, align 4
  %62 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %63 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SHUT_WR, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @FLOW_DIVERT_TUNNEL_RD_CLOSED, align 4
  %72 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %73 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %80 = call i32 @flow_divert_tunnel_how_closed(%struct.flow_divert_pcb* %79)
  %81 = load i32, i32* @SHUT_RDWR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %2, align 8
  %85 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @flow_divert_disconnect_socket(%struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %83, %78
  ret void
}

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i64 @flow_divert_send_close(%struct.flow_divert_pcb*, i32) #1

declare dso_local i32 @flow_divert_tunnel_how_closed(%struct.flow_divert_pcb*) #1

declare dso_local i32 @flow_divert_disconnect_socket(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
