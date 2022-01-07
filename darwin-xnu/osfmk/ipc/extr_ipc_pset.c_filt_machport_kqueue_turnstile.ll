; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_kqueue_turnstile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_kqueue_turnstile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.knote = type { i32, i32 }

@MACH_RCV_MSG = common dso_local global i32 0, align 4
@KN_DISPATCH = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.turnstile* @filt_machport_kqueue_turnstile(%struct.knote* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.knote*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  %4 = load %struct.knote*, %struct.knote** %3, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MACH_RCV_MSG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.knote*, %struct.knote** %3, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KN_DISPATCH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.knote*, %struct.knote** %3, align 8
  %19 = call i32 @knote_get_kq(%struct.knote* %18)
  %20 = call %struct.turnstile* @kqueue_turnstile(i32 %19)
  store %struct.turnstile* %20, %struct.turnstile** %2, align 8
  br label %23

21:                                               ; preds = %10, %1
  %22 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %22, %struct.turnstile** %2, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  ret %struct.turnstile* %24
}

declare dso_local %struct.turnstile* @kqueue_turnstile(i32) #1

declare dso_local i32 @knote_get_kq(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
