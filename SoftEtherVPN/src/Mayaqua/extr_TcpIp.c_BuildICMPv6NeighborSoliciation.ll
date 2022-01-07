; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildICMPv6NeighborSoliciation.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildICMPv6NeighborSoliciation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, i32* }

@ICMPV6_TYPE_NEIGHBOR_SOLICIATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @BuildICMPv6NeighborSoliciation(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %60

25:                                               ; preds = %21
  %26 = call i32 @Zero(%struct.TYPE_16__* %11, i32 24)
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @Copy(i32* %28, i32* %29, i32 6)
  %31 = call i32 @Zero(%struct.TYPE_16__* %10, i32 24)
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %32, align 8
  %33 = call %struct.TYPE_17__* @BuildICMPv6Options(%struct.TYPE_16__* %10)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %13, align 8
  %34 = call i32 @Zero(%struct.TYPE_16__* %12, i32 24)
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @Copy(i32* %35, i32* %36, i32 4)
  %38 = call %struct.TYPE_17__* (...) @NewBuf()
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %14, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %40 = call i32 @WriteBuf(%struct.TYPE_17__* %39, %struct.TYPE_16__* %12, i32 24)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %43 = call i32 @WriteBufBuf(%struct.TYPE_17__* %41, %struct.TYPE_17__* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @ICMPV6_TYPE_NEIGHBOR_SOLICIATION, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.TYPE_17__* @BuildICMPv6(i32* %44, i32* %45, i32 255, i32 %46, i32 0, i32 %49, i32 %52, i32 %53)
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %15, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %56 = call i32 @FreeBuf(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %58 = call i32 @FreeBuf(%struct.TYPE_17__* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %5, align 8
  br label %60

60:                                               ; preds = %25, %24
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %61
}

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_17__* @BuildICMPv6Options(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @WriteBufBuf(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @BuildICMPv6(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
