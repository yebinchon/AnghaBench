; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_net_suite.c_test_accept.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_net_suite.c_test_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }

@TCP_PRIO_MIN = common dso_local global i32 0, align 4
@test_recv = common dso_local global i32 0, align 4
@test_error = common dso_local global i32 0, align 4
@test_poll = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_accept(i8* %0, %struct.tcp_pcb* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcp_pcb*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @LWIP_UNUSED_ARG(i8* %7)
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @LWIP_UNUSED_ARG(i8* %9)
  %11 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %12 = load i32, i32* @TCP_PRIO_MIN, align 4
  %13 = call i32 @tcp_setprio(%struct.tcp_pcb* %11, i32 %12)
  %14 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %15 = call i32 @tcp_arg(%struct.tcp_pcb* %14, i32* null)
  %16 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %17 = load i32, i32* @test_recv, align 4
  %18 = call i32 @tcp_recv(%struct.tcp_pcb* %16, i32 %17)
  %19 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %20 = load i32, i32* @test_error, align 4
  %21 = call i32 @tcp_err(%struct.tcp_pcb* %19, i32 %20)
  %22 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %23 = load i32, i32* @test_poll, align 4
  %24 = call i32 @tcp_poll(%struct.tcp_pcb* %22, i32 %23, i32 0)
  %25 = load i8*, i8** @ERR_OK, align 8
  ret i8* %25
}

declare dso_local i32 @LWIP_UNUSED_ARG(i8*) #1

declare dso_local i32 @tcp_setprio(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, i32*) #1

declare dso_local i32 @tcp_recv(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_err(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_poll(%struct.tcp_pcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
