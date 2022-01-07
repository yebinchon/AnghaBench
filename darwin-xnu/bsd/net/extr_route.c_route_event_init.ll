; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_event_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_event = type { i32, %struct.rtentry*, %struct.rtentry* }
%struct.rtentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_event_init(%struct.route_event* %0, %struct.rtentry* %1, %struct.rtentry* %2, i32 %3) #0 {
  %5 = alloca %struct.route_event*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca i32, align 4
  store %struct.route_event* %0, %struct.route_event** %5, align 8
  store %struct.rtentry* %1, %struct.rtentry** %6, align 8
  store %struct.rtentry* %2, %struct.rtentry** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.route_event*, %struct.route_event** %5, align 8
  %10 = icmp ne %struct.route_event* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.route_event*, %struct.route_event** %5, align 8
  %14 = call i32 @bzero(%struct.route_event* %13, i32 24)
  %15 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %16 = load %struct.route_event*, %struct.route_event** %5, align 8
  %17 = getelementptr inbounds %struct.route_event, %struct.route_event* %16, i32 0, i32 2
  store %struct.rtentry* %15, %struct.rtentry** %17, align 8
  %18 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %19 = load %struct.route_event*, %struct.route_event** %5, align 8
  %20 = getelementptr inbounds %struct.route_event, %struct.route_event* %19, i32 0, i32 1
  store %struct.rtentry* %18, %struct.rtentry** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.route_event*, %struct.route_event** %5, align 8
  %23 = getelementptr inbounds %struct.route_event, %struct.route_event* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.route_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
