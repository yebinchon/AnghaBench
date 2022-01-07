; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.timespec = type { i32, i64 }

@bstp_tick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bstp_init(%struct.bstp_state* %0) #0 {
  %2 = alloca %struct.bstp_state*, align 8
  %3 = alloca %struct.timespec, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %2, align 8
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %7 = call i32 @BSTP_LOCK(%struct.bstp_state* %6)
  %8 = load i32, i32* @bstp_tick, align 4
  %9 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %10 = call i32 @bsd_timeout(i32 %8, %struct.bstp_state* %9, %struct.timespec* %3)
  %11 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %12 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %14 = call i32 @bstp_reinit(%struct.bstp_state* %13)
  %15 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %16 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %15)
  ret void
}

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i32 @bsd_timeout(i32, %struct.bstp_state*, %struct.timespec*) #1

declare dso_local i32 @bstp_reinit(%struct.bstp_state*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
