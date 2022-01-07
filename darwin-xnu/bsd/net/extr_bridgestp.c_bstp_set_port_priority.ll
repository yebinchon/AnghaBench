; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, %struct.bstp_state* }
%struct.bstp_state = type { i32 }

@BSTP_MAX_PORT_PRIORITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstp_set_port_priority(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %8 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %7, i32 0, i32 1
  %9 = load %struct.bstp_state*, %struct.bstp_state** %8, align 8
  store %struct.bstp_state* %9, %struct.bstp_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BSTP_MAX_PORT_PRIORITY, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 16
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %24 = call i32 @BSTP_LOCK(%struct.bstp_state* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %27 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %29 = call i32 @bstp_reinit(%struct.bstp_state* %28)
  %30 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %31 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i32 @bstp_reinit(%struct.bstp_state*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
