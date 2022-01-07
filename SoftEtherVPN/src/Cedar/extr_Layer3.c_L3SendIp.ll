; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SendIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SendIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@L3_IPV4 = common dso_local global i64 0, align 8
@IP_WAIT_FOR_ARP_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3SendIp(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = icmp eq %struct.TYPE_17__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %128

15:                                               ; preds = %11
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @L3_IPV4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %128

24:                                               ; preds = %15
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %7, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %65, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %35
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51, %24
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %51, %35
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %107

78:                                               ; preds = %69, %66
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32* @L3SearchArpTable(%struct.TYPE_17__* %82, i32 %85)
  store i32* %86, i32** %5, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = call i64 (...) @Tick64()
  %91 = load i64, i64* @IP_WAIT_FOR_ARP_TIMEOUT, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = call i32 @Insert(i32 %97, %struct.TYPE_16__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @L3SendArp(%struct.TYPE_17__* %100, i32 %103)
  br label %128

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %77
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = call i32 @L3SendIpNow(%struct.TYPE_17__* %111, i32* %112, %struct.TYPE_16__* %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = call i32 @Free(%struct.TYPE_16__* %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = call i32 @FreePacket(%struct.TYPE_14__* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = call i32 @Free(%struct.TYPE_16__* %126)
  br label %128

128:                                              ; preds = %115, %89, %23, %14
  ret void
}

declare dso_local i32* @L3SearchArpTable(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @L3SendArp(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @L3SendIpNow(%struct.TYPE_17__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @Free(%struct.TYPE_16__*) #1

declare dso_local i32 @FreePacket(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
