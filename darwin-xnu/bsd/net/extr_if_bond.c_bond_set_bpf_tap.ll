; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_set_bpf_tap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_set_bpf_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i8*)* @bond_set_bpf_tap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_set_bpf_tap(%struct.ifnet* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call i32 (...) @bond_lock()
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = call %struct.TYPE_4__* @ifnet_softc(%struct.ifnet* %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = call i64 @ifbond_flags_if_detaching(%struct.TYPE_4__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = call i32 (...) @bond_unlock()
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %45 [
    i32 131, label %23
    i32 130, label %28
    i32 128, label %33
    i32 129, label %38
  ]

23:                                               ; preds = %21
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %46

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  br label %46

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  br label %46

38:                                               ; preds = %21
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32* %40, i32** %44, align 8
  br label %46

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45, %38, %33, %28, %23
  %47 = call i32 (...) @bond_unlock()
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local %struct.TYPE_4__* @ifnet_softc(%struct.ifnet*) #1

declare dso_local i64 @ifbond_flags_if_detaching(%struct.TYPE_4__*) #1

declare dso_local i32 @bond_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
