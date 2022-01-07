; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_timer_msgage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_timer_msgage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i64, i64, i32, i32 }

@BSTP_MESSAGE_AGE_INCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*)* @bstp_set_timer_msgage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_set_timer_msgage(%struct.bstp_port* %0) #0 {
  %2 = alloca %struct.bstp_port*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %2, align 8
  %3 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %4 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BSTP_MESSAGE_AGE_INCR, align 8
  %7 = add nsw i64 %5, %6
  %8 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %9 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %14 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %13, i32 0, i32 3
  %15 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %16 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 3
  %19 = call i32 @bstp_timer_start(i32* %14, i32 %18)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %22 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %21, i32 0, i32 3
  %23 = call i32 @bstp_timer_start(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @bstp_timer_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
