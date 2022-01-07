; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_event_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_event = type { i32, i32, i32*, %struct.rtentry* }
%struct.rtentry = type { i32, i32 }
%struct.sockaddr = type { i32 }

@ROUTE_EVHDLR_DEREGISTER = common dso_local global i32 0, align 4
@route_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @route_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route_event_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.route_event*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.route_event*
  store %struct.route_event* %8, %struct.route_event** %3, align 8
  %9 = load %struct.route_event*, %struct.route_event** %3, align 8
  %10 = getelementptr inbounds %struct.route_event, %struct.route_event* %9, i32 0, i32 3
  %11 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  store %struct.rtentry* %11, %struct.rtentry** %4, align 8
  %12 = load %struct.route_event*, %struct.route_event** %3, align 8
  %13 = getelementptr inbounds %struct.route_event, %struct.route_event* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.route_event*, %struct.route_event** %3, align 8
  %16 = getelementptr inbounds %struct.route_event, %struct.route_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ROUTE_EVHDLR_DEREGISTER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %27 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %26, i32 0, i32 1
  %28 = load i32, i32* @route_event, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @EVENTHANDLER_DEREGISTER(i32* %27, i32 %28, i32* %29)
  %31 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %32 = call i32 @rtfree(%struct.rtentry* %31)
  br label %49

33:                                               ; preds = %1
  %34 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 1
  %36 = load i32, i32* @route_event, align 4
  %37 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %38 = call i32 @rt_key(%struct.rtentry* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.route_event*, %struct.route_event** %3, align 8
  %41 = getelementptr inbounds %struct.route_event, %struct.route_event* %40, i32 0, i32 1
  %42 = bitcast i32* %41 to %struct.sockaddr*
  %43 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %44 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @EVENTHANDLER_INVOKE(i32* %35, i32 %36, i32 %38, i32 %39, %struct.sockaddr* %42, i32 %45)
  %47 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %48 = call i32 @rtfree(%struct.rtentry* %47)
  br label %49

49:                                               ; preds = %33, %21
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32*, i32, i32*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32*, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
