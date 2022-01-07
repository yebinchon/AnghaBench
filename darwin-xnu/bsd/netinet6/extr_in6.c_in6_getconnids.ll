; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_getconnids.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_getconnids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.in6pcb = type { i64 }

@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAE_ASSOCID_ANY = common dso_local global i64 0, align 8
@SAE_ASSOCID_ALL = common dso_local global i64 0, align 8
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@SAE_CONNID_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64, i32*, i32)* @in6_getconnids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_getconnids(%struct.socket* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6pcb*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = call %struct.in6pcb* @sotoin6pcb(%struct.socket* %12)
  store %struct.in6pcb* %13, %struct.in6pcb** %10, align 8
  %14 = load %struct.in6pcb*, %struct.in6pcb** %10, align 8
  %15 = icmp eq %struct.in6pcb* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.in6pcb*, %struct.in6pcb** %10, align 8
  %18 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %59

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @SAE_ASSOCID_ANY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @SAE_ASSOCID_ALL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %59

34:                                               ; preds = %28, %24
  %35 = load %struct.socket*, %struct.socket** %6, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SS_ISCONNECTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @USER_ADDR_NULL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %59

48:                                               ; preds = %34
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @SAE_CONNID_ANY, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 1, %52 ], [ %54, %53 ]
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @copyout(i32* %11, i32 %57, i32 4)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %47, %32, %22
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.in6pcb* @sotoin6pcb(%struct.socket*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
