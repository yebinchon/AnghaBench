; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_SendL2TPControlPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_SendL2TPControlPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i32* }

@L2TP_PACKET_RESEND_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendL2TPControlPacket(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = icmp eq %struct.TYPE_17__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = icmp eq %struct.TYPE_19__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %4
  br label %79

20:                                               ; preds = %16
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = call i32* @BuildL2TPPacketData(%struct.TYPE_19__* %46, %struct.TYPE_16__* %47)
  store i32* %48, i32** %9, align 8
  %49 = call %struct.TYPE_18__* @ZeroMalloc(i32 24)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @L2TP_PACKET_RESEND_INTERVAL, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %68 = call i32 @SendL2TPControlPacketMain(%struct.TYPE_17__* %65, %struct.TYPE_16__* %66, %struct.TYPE_18__* %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @L2TPAddInterrupt(%struct.TYPE_17__* %69, i64 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = call i32 @Add(i32 %76, %struct.TYPE_18__* %77)
  br label %79

79:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32* @BuildL2TPPacketData(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local i32 @SendL2TPControlPacketMain(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @L2TPAddInterrupt(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @Add(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
