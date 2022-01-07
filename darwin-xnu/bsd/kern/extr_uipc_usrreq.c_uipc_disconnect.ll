; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.unpcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @uipc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_disconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = call %struct.unpcb* @sotounpcb(%struct.socket* %5)
  store %struct.unpcb* %6, %struct.unpcb** %4, align 8
  %7 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %8 = icmp eq %struct.unpcb* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %13 = call i32 @unp_disconnect(%struct.unpcb* %12)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @unp_disconnect(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
