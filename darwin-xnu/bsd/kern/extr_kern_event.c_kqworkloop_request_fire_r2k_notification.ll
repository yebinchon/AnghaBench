; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_request_fire_r2k_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_request_fire_r2k_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { %struct.kqrequest }
%struct.kqrequest = type { i32, i32 }

@KQR_R2K_NOTIF_ARMED = common dso_local global i32 0, align 4
@AST_KEVENT_RETURN_TO_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqworkloop*)* @kqworkloop_request_fire_r2k_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqworkloop_request_fire_r2k_notification(%struct.kqworkloop* %0) #0 {
  %2 = alloca %struct.kqworkloop*, align 8
  %3 = alloca %struct.kqrequest*, align 8
  store %struct.kqworkloop* %0, %struct.kqworkloop** %2, align 8
  %4 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %5 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %4, i32 0, i32 0
  store %struct.kqrequest* %5, %struct.kqrequest** %3, align 8
  %6 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %7 = call i32 @kq_req_held(%struct.kqworkloop* %6)
  %8 = load %struct.kqrequest*, %struct.kqrequest** %3, align 8
  %9 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KQR_R2K_NOTIF_ARMED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.kqrequest*, %struct.kqrequest** %3, align 8
  %16 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @KQR_R2K_NOTIF_ARMED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.kqrequest*, %struct.kqrequest** %3, align 8
  %22 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.kqrequest*, %struct.kqrequest** %3, align 8
  %26 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AST_KEVENT_RETURN_TO_KERNEL, align 4
  %29 = call i32 @act_set_astkevent(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @kq_req_held(%struct.kqworkloop*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @act_set_astkevent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
