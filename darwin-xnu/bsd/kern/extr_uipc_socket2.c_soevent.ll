; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32 }

@SOF_KNOTE = common dso_local global i32 0, align 4
@SO_FILT_HINT_IFDENIED = common dso_local global i64 0, align 8
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@SO_RESTRICT_DENY_CELLULAR = common dso_local global i32 0, align 4
@SO_RESTRICT_DENY_EXPENSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soevent(%struct.socket* %0, i64 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SOF_KNOTE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @KNOTE(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @soevupcall(%struct.socket* %17, i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SO_FILT_HINT_IFDENIED, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %16
  %25 = load %struct.socket*, %struct.socket** %3, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %24
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SO_RESTRICT_DENY_CELLULAR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SO_RESTRICT_DENY_EXPENSIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = call i32 @soevent_ifdenied(%struct.socket* %46)
  br label %48

48:                                               ; preds = %45, %38, %31, %24, %16
  ret void
}

declare dso_local i32 @KNOTE(i32*, i64) #1

declare dso_local i32 @soevupcall(%struct.socket*, i64) #1

declare dso_local i32 @soevent_ifdenied(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
