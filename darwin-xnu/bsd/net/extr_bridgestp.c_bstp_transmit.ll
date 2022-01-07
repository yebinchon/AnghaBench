; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_transmit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i64, i64 }
%struct.bstp_port = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@BSTP_PROTO_RSTP = common dso_local global i64 0, align 8
@BSTP_PORT_NEWINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*)* @bstp_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_transmit(%struct.bstp_state* %0, %struct.bstp_port* %1) #0 {
  %3 = alloca %struct.bstp_state*, align 8
  %4 = alloca %struct.bstp_port*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %3, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %4, align 8
  %5 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %6 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %69

10:                                               ; preds = %2
  %11 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %12 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %18 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %19 = call i32 @bstp_hello_timer_expiry(%struct.bstp_state* %17, %struct.bstp_port* %18)
  br label %69

20:                                               ; preds = %10
  %21 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %22 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %25 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %69

29:                                               ; preds = %20
  %30 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %31 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BSTP_PROTO_RSTP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %37 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %38 = call i32 @bstp_transmit_bpdu(%struct.bstp_state* %36, %struct.bstp_port* %37)
  %39 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %40 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  br label %56

41:                                               ; preds = %29
  %42 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %43 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %51
  ]

45:                                               ; preds = %41
  %46 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %47 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %48 = call i32 @bstp_transmit_bpdu(%struct.bstp_state* %46, %struct.bstp_port* %47)
  %49 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %50 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %53 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %54 = call i32 @bstp_transmit_tcn(%struct.bstp_state* %52, %struct.bstp_port* %53)
  br label %55

55:                                               ; preds = %41, %51, %45
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %58 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %57, i32 0, i32 5
  %59 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %60 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bstp_timer_start(%struct.TYPE_2__* %58, i32 %61)
  %63 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %66 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %56, %28, %16, %9
  ret void
}

declare dso_local i32 @bstp_hello_timer_expiry(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_transmit_bpdu(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_transmit_tcn(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_timer_start(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
