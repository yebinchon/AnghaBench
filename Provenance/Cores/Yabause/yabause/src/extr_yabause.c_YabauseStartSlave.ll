; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseStartSlave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseStartSlave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64*, i64 }

@yabsys = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SSH2 = common dso_local global %struct.TYPE_11__* null, align 8
@CurrentSH2 = common dso_local global %struct.TYPE_11__* null, align 8
@MSH2 = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YabauseStartSlave() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yabsys, i32 0, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %53

3:                                                ; preds = %0
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** @CurrentSH2, align 8
  %5 = call i32 @MappedMemoryWriteLong(i32 -32, i32 -1520827407)
  %6 = call i32 @MappedMemoryWriteLong(i32 -28, i32 -1520828164)
  %7 = call i32 @MappedMemoryWriteLong(i32 -24, i32 -1520806571)
  %8 = call i32 @MappedMemoryWriteLong(i32 -20, i32 -1520828304)
  %9 = call i32 @MappedMemoryWriteWord(i32 -288, i32 0)
  %10 = call i32 @MappedMemoryWriteWord(i32 -286, i32 0)
  %11 = call i32 @MappedMemoryWriteWord(i32 -416, i32 3840)
  %12 = call i32 @MappedMemoryWriteWord(i32 -414, i32 24673)
  %13 = call i32 @MappedMemoryWriteWord(i32 -412, i32 25187)
  %14 = call i32 @MappedMemoryWriteWord(i32 -410, i32 25701)
  %15 = call i32 @MappedMemoryWriteWord(i32 -408, i32 26112)
  %16 = call i32 @MappedMemoryWriteWord(i32 -284, i32 26729)
  %17 = call i32 @MappedMemoryWriteLong(i32 -88, i32 108)
  %18 = call i32 @MappedMemoryWriteLong(i32 -96, i32 109)
  %19 = call i32 @MappedMemoryWriteLong(i32 -244, i32 110)
  %20 = call i32 @MappedMemoryWriteLong(i32 -496, i32 129)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MSH2, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** @CurrentSH2, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = call i32 @SH2GetRegisters(%struct.TYPE_11__* %22, %struct.TYPE_12__* %24)
  %26 = call i64 (...) @Cs2GetSlaveStackAdress()
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 15
  store i64 %26, i64* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 100664320, i32* %34, align 8
  %35 = call i64 @MappedMemoryReadLong(i32 100663888)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = call i64 @MappedMemoryReadLong(i32 100663980)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = call i64 @MappedMemoryReadLong(i32 100663980)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 15
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = call i32 @SH2SetRegisters(%struct.TYPE_11__* %49, %struct.TYPE_12__* %51)
  br label %56

53:                                               ; preds = %0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SSH2, align 8
  %55 = call i32 @SH2PowerOn(%struct.TYPE_11__* %54)
  br label %56

56:                                               ; preds = %53, %48
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yabsys, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @MappedMemoryWriteLong(i32, i32) #1

declare dso_local i32 @MappedMemoryWriteWord(i32, i32) #1

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @Cs2GetSlaveStackAdress(...) #1

declare dso_local i64 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @SH2SetRegisters(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @SH2PowerOn(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
