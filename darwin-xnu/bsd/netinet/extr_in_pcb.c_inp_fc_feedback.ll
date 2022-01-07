; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_fc_feedback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_fc_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i32, %struct.socket* }
%struct.socket = type { i32 }

@WNT_RELEASE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@INP_FC_FEEDBACK = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*)* @inp_fc_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inp_fc_feedback(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 2
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = icmp ne %struct.socket* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = call i32 @socket_lock(%struct.socket* %11, i32 1)
  %13 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %14 = load i32, i32* @WNT_RELEASE, align 4
  %15 = call i64 @in_pcb_checkstate(%struct.inpcb* %13, i32 %14, i32 1)
  %16 = load i64, i64* @WNT_STOPUSING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = call i32 @socket_unlock(%struct.socket* %19, i32 1)
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @INP_FC_FEEDBACK, align 4
  %28 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %34 = call i32 @INP_WAIT_FOR_IF_FEEDBACK(%struct.inpcb* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = call i32 @socket_unlock(%struct.socket* %37, i32 1)
  br label %52

39:                                               ; preds = %32
  %40 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %41 = call i32 @inp_reset_fc_state(%struct.inpcb* %40)
  %42 = load %struct.socket*, %struct.socket** %3, align 8
  %43 = call i64 @SOCK_TYPE(%struct.socket* %42)
  %44 = load i64, i64* @SOCK_STREAM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %48 = call i32 @inp_fc_unthrottle_tcp(%struct.inpcb* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call i32 @socket_unlock(%struct.socket* %50, i32 1)
  br label %52

52:                                               ; preds = %49, %36, %18
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i64 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @INP_WAIT_FOR_IF_FEEDBACK(%struct.inpcb*) #1

declare dso_local i32 @inp_reset_fc_state(%struct.inpcb*) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local i32 @inp_fc_unthrottle_tcp(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
