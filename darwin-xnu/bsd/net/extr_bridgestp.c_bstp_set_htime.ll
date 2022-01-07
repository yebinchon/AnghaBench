; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_htime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_htime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i64, i32 }

@BSTP_TICK_VAL = common dso_local global i32 0, align 4
@BSTP_PROTO_STP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@BSTP_MIN_HELLO_TIME = common dso_local global i32 0, align 4
@BSTP_MAX_HELLO_TIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstp_set_htime(%struct.bstp_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstp_state*, align 8
  %5 = alloca i32, align 4
  store %struct.bstp_state* %0, %struct.bstp_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @BSTP_TICK_VAL, align 4
  %7 = load i32, i32* %5, align 4
  %8 = mul nsw i32 %7, %6
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %10 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BSTP_PROTO_STP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BSTP_MIN_HELLO_TIME, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BSTP_MAX_HELLO_TIME, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %28 = call i32 @BSTP_LOCK(%struct.bstp_state* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %31 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %33 = call i32 @bstp_reinit(%struct.bstp_state* %32)
  %34 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %35 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %24, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
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
