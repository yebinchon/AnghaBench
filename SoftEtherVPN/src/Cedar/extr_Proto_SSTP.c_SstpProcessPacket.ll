; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpProcessPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpProcessPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SstpProcessPacket(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = icmp eq %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %29

11:                                               ; preds = %7
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = call i32 @SstpProcessControlPacket(%struct.TYPE_9__* %22, %struct.TYPE_10__* %23)
  br label %29

25:                                               ; preds = %11
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @SstpProcessDataPacket(%struct.TYPE_9__* %26, %struct.TYPE_10__* %27)
  br label %29

29:                                               ; preds = %10, %25, %21
  ret void
}

declare dso_local i32 @SstpProcessControlPacket(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @SstpProcessDataPacket(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
