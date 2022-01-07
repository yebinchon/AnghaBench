; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_SendMessageToClient.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_SendMessageToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i64, i32*, i32, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@PACKET_MASK = common dso_local global i64 0, align 8
@svs = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@NA_LOOPBACK = common dso_local global i64 0, align 8
@sv_lanForceRate = common dso_local global %struct.TYPE_18__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@CS_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SendMessageToClient(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PACKET_MASK, align 8
  %17 = and i64 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  store i32 %8, i32* %19, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PACKET_MASK, align 8
  %29 = and i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i64 %20, i64* %31, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PACKET_MASK, align 8
  %40 = and i64 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = call i32 @SV_Netchan_Transmit(%struct.TYPE_16__* %43, %struct.TYPE_15__* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NA_LOOPBACK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %2
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sv_lanForceRate, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @Sys_IsLANAddress(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58, %2
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %124

71:                                               ; preds = %58, %53
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SV_RateMsec(%struct.TYPE_16__* %72, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @qfalse, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  br label %93

89:                                               ; preds = %71
  %90 = load i32, i32* @qtrue, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CS_ACTIVE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %93
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %116 = add nsw i64 %115, 1000
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %120 = add nsw i64 %119, 1000
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %111, %105
  br label %124

124:                                              ; preds = %66, %123, %93
  ret void
}

declare dso_local i32 @SV_Netchan_Transmit(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @Sys_IsLANAddress(i64) #1

declare dso_local i32 @SV_RateMsec(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
