; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_FreePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_FreePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreePacket(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = icmp eq %struct.TYPE_7__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 130, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @FreePacketIPv4(%struct.TYPE_7__* %16)
  br label %24

18:                                               ; preds = %11
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = call i32 @FreePacketARPv4(%struct.TYPE_7__* %19)
  br label %24

21:                                               ; preds = %11
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 @FreePacketTagVlan(%struct.TYPE_7__* %22)
  br label %24

24:                                               ; preds = %11, %21, %18, %15
  br label %25

25:                                               ; preds = %24, %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @Free(%struct.TYPE_7__* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = call i32 @Free(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %35, %5
  ret void
}

declare dso_local i32 @FreePacketIPv4(%struct.TYPE_7__*) #1

declare dso_local i32 @FreePacketARPv4(%struct.TYPE_7__*) #1

declare dso_local i32 @FreePacketTagVlan(%struct.TYPE_7__*) #1

declare dso_local i32 @Free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
