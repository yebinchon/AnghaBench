; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_StartPeapSslClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_StartPeapSslClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StartPeapSslClient(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = icmp eq %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = icmp ne %struct.TYPE_18__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %71

17:                                               ; preds = %11
  %18 = call %struct.TYPE_18__* @NewSslPipe(i32 0, i32* null, i32* null, i32* null)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %6, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = call i32 @SyncSslPipe(%struct.TYPE_18__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = call %struct.TYPE_17__* @ReadFifoAll(%struct.TYPE_15__* %39)
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %7, align 8
  br label %41

41:                                               ; preds = %17, %57
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SendPeapRawPacket(%struct.TYPE_16__* %42, i32* %45, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = call i32 @FreeBuf(%struct.TYPE_17__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %60

57:                                               ; preds = %41
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = call %struct.TYPE_17__* @ReadFifoAll(%struct.TYPE_15__* %58)
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %7, align 8
  br label %41

60:                                               ; preds = %56
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = call i32 @SendPeapRawPacket(%struct.TYPE_16__* %61, i32* null, i32 0)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %60, %16, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_18__* @NewSslPipe(i32, i32*, i32*, i32*) #1

declare dso_local i32 @SyncSslPipe(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @ReadFifoAll(%struct.TYPE_15__*) #1

declare dso_local i32 @SendPeapRawPacket(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
