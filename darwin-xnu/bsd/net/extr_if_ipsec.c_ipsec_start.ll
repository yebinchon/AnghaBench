; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_pcb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ipsec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipsec_pcb*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ipsec_pcb* @ifnet_softc(i32 %5)
  store %struct.ipsec_pcb* %6, %struct.ipsec_pcb** %4, align 8
  %7 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %4, align 8
  %8 = icmp ne %struct.ipsec_pcb* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @ifnet_dequeue(i32 %12, i32* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %23

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @ipsec_output(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  br label %11

23:                                               ; preds = %21, %15
  ret void
}

declare dso_local %struct.ipsec_pcb* @ifnet_softc(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @ifnet_dequeue(i32, i32*) #1

declare dso_local i64 @ipsec_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
