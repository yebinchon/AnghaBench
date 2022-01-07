; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pcb insert failed: %d\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Created\00", align 1
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @flow_divert_pcb_init(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @EALREADY, align 8
  store i64 %15, i64* %3, align 8
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = call %struct.flow_divert_pcb* @flow_divert_pcb_create(%struct.socket* %17)
  store %struct.flow_divert_pcb* %18, %struct.flow_divert_pcb** %7, align 8
  %19 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %20 = icmp ne %struct.flow_divert_pcb* %19, null
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @flow_divert_pcb_insert(%struct.flow_divert_pcb* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @FDLOG(i32 %28, %struct.flow_divert_pcb* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %33 = call i32 @FDRELEASE(%struct.flow_divert_pcb* %32)
  br label %61

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %37 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 1
  store %struct.flow_divert_pcb* %38, %struct.flow_divert_pcb** %40, align 8
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = call i64 @SOCK_TYPE(%struct.socket* %41)
  %43 = load i64, i64* @SOCK_STREAM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = call i32 @flow_divert_set_protosw(%struct.socket* %46)
  br label %57

48:                                               ; preds = %34
  %49 = load %struct.socket*, %struct.socket** %4, align 8
  %50 = call i64 @SOCK_TYPE(%struct.socket* %49)
  %51 = load i64, i64* @SOCK_DGRAM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.socket*, %struct.socket** %4, align 8
  %55 = call i32 @flow_divert_set_udp_protosw(%struct.socket* %54)
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* @LOG_INFO, align 4
  %59 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %60 = call i32 @FDLOG0(i32 %58, %struct.flow_divert_pcb* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %27
  br label %64

62:                                               ; preds = %16
  %63 = load i64, i64* @ENOMEM, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %64, %14
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local %struct.flow_divert_pcb* @flow_divert_pcb_create(%struct.socket*) #1

declare dso_local i64 @flow_divert_pcb_insert(%struct.flow_divert_pcb*, i32) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i64) #1

declare dso_local i32 @FDRELEASE(%struct.flow_divert_pcb*) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local i32 @flow_divert_set_protosw(%struct.socket*) #1

declare dso_local i32 @flow_divert_set_udp_protosw(%struct.socket*) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
