; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeDebugUdpSendRawPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeDebugUdpSendRawPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeDebugUdpSendRawPacket(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call %struct.TYPE_8__* @IkeBuildEx(%struct.TYPE_7__* %12, i32* null, i32 1)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %33

17:                                               ; preds = %9
  %18 = call i32 @Zero(i32* %4, i32 4)
  %19 = call i32 @SetIP(i32* %4, i32 1, i32 2, i32 3, i32 4)
  %20 = call i32* @NewUDP(i32 0)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SendTo(i32* %21, i32* %4, i32 500, i32 %24, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ReleaseSock(i32* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 @FreeBuf(%struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %17, %16, %8
  ret void
}

declare dso_local %struct.TYPE_8__* @IkeBuildEx(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @SetIP(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @NewUDP(i32) #1

declare dso_local i32 @SendTo(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
