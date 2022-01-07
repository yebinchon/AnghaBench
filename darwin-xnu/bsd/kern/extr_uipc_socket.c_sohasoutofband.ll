; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sohasoutofband.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sohasoutofband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SIGURG = common dso_local global i32 0, align 4
@SB_KNOTE = common dso_local global i32 0, align 4
@NOTE_OOB = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sohasoutofband(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = getelementptr inbounds %struct.socket, %struct.socket* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32, i32* @SIGURG, align 4
  %13 = call i32 @gsignal(i32 %11, i32 %12)
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %2, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIGURG, align 4
  %24 = call i32 @proc_signal(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %14
  br label %26

26:                                               ; preds = %25, %7
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @selwakeup(%struct.TYPE_4__* %29)
  %31 = load %struct.socket*, %struct.socket** %2, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SB_KNOTE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load %struct.socket*, %struct.socket** %2, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* @NOTE_OOB, align 4
  %44 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @KNOTE(i32* %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %26
  ret void
}

declare dso_local i32 @gsignal(i32, i32) #1

declare dso_local i32 @proc_signal(i32, i32) #1

declare dso_local i32 @selwakeup(%struct.TYPE_4__*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
