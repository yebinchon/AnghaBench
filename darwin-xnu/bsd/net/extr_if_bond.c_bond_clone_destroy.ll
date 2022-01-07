; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@IFT_IEEE8023ADLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @bond_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %5 = call i32 (...) @bond_lock()
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = call i32* @ifnet_softc(%struct.ifnet* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = call i64 @ifnet_type(%struct.ifnet* %11)
  %13 = load i64, i64* @IFT_IEEE8023ADLAG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = call i32 (...) @bond_unlock()
  store i32 0, i32* %2, align 4
  br label %29

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ifbond_flags_if_detaching(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @bond_unlock()
  store i32 0, i32* %2, align 4
  br label %29

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @bond_remove(i32* %24)
  %26 = call i32 (...) @bond_unlock()
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = call i32 @bond_if_detach(%struct.ifnet* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %21, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32* @ifnet_softc(%struct.ifnet*) #1

declare dso_local i64 @ifnet_type(%struct.ifnet*) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i64 @ifbond_flags_if_detaching(i32*) #1

declare dso_local i32 @bond_remove(i32*) #1

declare dso_local i32 @bond_if_detach(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
