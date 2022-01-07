; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_net_suite.c_test_tcp_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_net_suite.c_test_tcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_pcb = common dso_local global i32* null, align 8
@IP_ADDR_ANY = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@test_accept = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot bind test_pcb\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot create test_pcb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tcp_init() #0 {
  %1 = alloca i64, align 8
  %2 = call i32* (...) @tcp_new()
  store i32* %2, i32** @test_pcb, align 8
  %3 = load i32*, i32** @test_pcb, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %0
  %6 = load i32*, i32** @test_pcb, align 8
  %7 = load i32, i32* @IP_ADDR_ANY, align 4
  %8 = call i64 @tcp_bind(i32* %6, i32 %7, i32 4242)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ERR_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i32*, i32** @test_pcb, align 8
  %14 = call i32* @tcp_listen(i32* %13)
  store i32* %14, i32** @test_pcb, align 8
  %15 = load i32*, i32** @test_pcb, align 8
  %16 = load i32, i32* @test_accept, align 4
  %17 = call i32 @tcp_accept(i32* %15, i32 %16)
  br label %21

18:                                               ; preds = %5
  %19 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @abort() #3
  unreachable

21:                                               ; preds = %12
  br label %25

22:                                               ; preds = %0
  %23 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @abort() #3
  unreachable

25:                                               ; preds = %21
  ret void
}

declare dso_local i32* @tcp_new(...) #1

declare dso_local i64 @tcp_bind(i32*, i32, i32) #1

declare dso_local i32* @tcp_listen(i32*) #1

declare dso_local i32 @tcp_accept(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
