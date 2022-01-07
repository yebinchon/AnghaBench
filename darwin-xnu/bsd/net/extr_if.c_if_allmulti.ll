; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_allmulti.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_allmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_allmulti(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* @IFF_ALLMULTI, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %11
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %43

34:                                               ; preds = %24
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %34, %29
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = call i32 @ifnet_lock_done(%struct.ifnet* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = load i32, i32* @SIOCSIFFLAGS, align 4
  %52 = call i32 @ifnet_ioctl(%struct.ifnet* %50, i32 0, i32 %51, i32* null)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = call i32 @rt_ifmsg(%struct.ifnet* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32*) #1

declare dso_local i32 @rt_ifmsg(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
