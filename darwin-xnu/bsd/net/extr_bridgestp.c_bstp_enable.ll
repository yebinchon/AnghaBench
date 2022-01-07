; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, %struct.ifnet*, %struct.bstp_state* }
%struct.ifnet = type { i32 }
%struct.bstp_state = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"already a bstp member\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bp_next = common dso_local global i32 0, align 4
@BSTP_PORT_NEWINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstp_enable(%struct.bstp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca %struct.bstp_state*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  %6 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 3
  %8 = load %struct.bstp_state*, %struct.bstp_state** %7, align 8
  store %struct.bstp_state* %8, %struct.bstp_state** %4, align 8
  %9 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 2
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %5, align 8
  %12 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %13 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %22 [
    i32 128, label %21
  ]

21:                                               ; preds = %1
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %21
  %25 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %26 = call i32 @BSTP_LOCK(%struct.bstp_state* %25)
  %27 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %28 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %27, i32 0, i32 0
  %29 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %30 = load i32, i32* @bp_next, align 4
  %31 = call i32 @LIST_INSERT_HEAD(i32* %28, %struct.bstp_port* %29, i32 %30)
  %32 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %33 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %35 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %36 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %40 = call i32 @bstp_reinit(%struct.bstp_state* %39)
  %41 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %42 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %43 = call i32 @bstp_update_roles(%struct.bstp_state* %41, %struct.bstp_port* %42)
  %44 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %45 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %24, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_reinit(%struct.bstp_state*) #1

declare dso_local i32 @bstp_update_roles(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
