; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_proto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, i32, i32, %struct.bstp_state* }
%struct.bstp_state = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported STP version %d\0A\00", align 1
@BSTP_PORT_CANMIGRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*, i32)* @bstp_set_port_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_set_port_proto(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 5
  %8 = load %struct.bstp_state*, %struct.bstp_state** %7, align 8
  store %struct.bstp_state* %8, %struct.bstp_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %31 [
    i32 128, label %10
    i32 129, label %24
  ]

10:                                               ; preds = %2
  %11 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %12 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %11, i32 0, i32 3
  %13 = call i32 @bstp_timer_stop(i32* %12)
  %14 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %15 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %14, i32 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 65535
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %22 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %21, i32 0, i32 0
  store i32 65535, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %10
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %26 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %25, i32 0, i32 3
  %27 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %28 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bstp_timer_start(i32* %26, i32 %29)
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %44

34:                                               ; preds = %24, %23
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %37 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @BSTP_PORT_CANMIGRATE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %41 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @bstp_timer_stop(i32*) #1

declare dso_local i32 @bstp_timer_start(i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
