; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sowriteable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sowriteable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@SOF1_PRECONNECT_DATA = common dso_local global i32 0, align 4
@SOF_NOTSENT_LOWAT = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@PF_MULTIPATH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sowriteable(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %4 = load %struct.socket*, %struct.socket** %3, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SS_CANTSENDMORE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 1, i32* %2, align 4
  br label %71

16:                                               ; preds = %10
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = call i64 @so_wait_for_if_feedback(%struct.socket* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = call i32 @socanwrite(%struct.socket* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %20
  %26 = load %struct.socket*, %struct.socket** %3, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SOF1_PRECONNECT_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %71

33:                                               ; preds = %25
  %34 = load %struct.socket*, %struct.socket** %3, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 5
  %36 = call i64 @sbspace(%struct.TYPE_2__* %35)
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %36, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %33
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SOF_NOTSENT_LOWAT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call i64 @SOCK_DOM(%struct.socket* %50)
  %52 = load i64, i64* @PF_INET6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.socket*, %struct.socket** %3, align 8
  %56 = call i64 @SOCK_DOM(%struct.socket* %55)
  %57 = load i64, i64* @PF_INET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54, %49
  %60 = load %struct.socket*, %struct.socket** %3, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SOCK_STREAM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.socket*, %struct.socket** %3, align 8
  %67 = call i32 @tcp_notsent_lowat_check(%struct.socket* %66)
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %59, %54
  store i32 1, i32* %2, align 4
  br label %71

69:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %71

70:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %68, %65, %32, %24, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @so_wait_for_if_feedback(%struct.socket*) #1

declare dso_local i32 @socanwrite(%struct.socket*) #1

declare dso_local i64 @sbspace(%struct.TYPE_2__*) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @tcp_notsent_lowat_check(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
