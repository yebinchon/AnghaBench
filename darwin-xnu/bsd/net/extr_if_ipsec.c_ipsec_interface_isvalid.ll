; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_interface_isvalid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_interface_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_pcb = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipsec_interface_isvalid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ipsec_pcb*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ipsec_pcb* null, %struct.ipsec_pcb** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.ipsec_pcb* @ifnet_softc(i32* %9)
  store %struct.ipsec_pcb* %10, %struct.ipsec_pcb** %4, align 8
  %11 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %4, align 8
  %12 = icmp eq %struct.ipsec_pcb* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %4, align 8
  %16 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %13, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.ipsec_pcb* @ifnet_softc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
