; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_flags(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %58

13:                                               ; preds = %3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i32 @ifnet_lock_exclusive(%struct.TYPE_10__* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @if_updown(%struct.TYPE_10__* %21, i32 %27)
  br label %29

29:                                               ; preds = %20, %13
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = or i32 %35, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IFF_MULTICAST, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_MULTICAST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i32 @ifnet_lock_done(%struct.TYPE_10__* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %11
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_10__*) #1

declare dso_local i32 @if_updown(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
