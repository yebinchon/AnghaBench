; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_tx_handle_packet.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_tx_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__* }

@_mdns_server = common dso_local global %struct.TYPE_16__* null, align 8
@PCB_OFF = common dso_local global i32 0, align 4
@PCB_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @_mdns_tx_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_tx_handle_packet(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** @_mdns_server, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i64 %18
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %5, align 8
  store i32 1000, i32* %6, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PCB_OFF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call i32 @_mdns_free_tx_packet(%struct.TYPE_13__* %26)
  br label %108

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call i32 @_mdns_dispatch_tx_packet(%struct.TYPE_13__* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %105 [
    i32 130, label %34
    i32 129, label %48
    i32 128, label %60
    i32 133, label %86
    i32 132, label %86
    i32 131, label %99
  ]

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %4, align 8
  br label %38

38:                                               ; preds = %41, %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %4, align 8
  br label %38

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %28, %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 @_mdns_schedule_tx_packet(%struct.TYPE_13__* %49, i32 250)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %108

60:                                               ; preds = %28
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = call %struct.TYPE_13__* @_mdns_create_announce_from_probe(%struct.TYPE_13__* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %3, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = call i32 @_mdns_schedule_tx_packet(%struct.TYPE_13__* %66, i32 250)
  br label %108

68:                                               ; preds = %60
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 5
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @free(i32* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @_mdns_free_tx_packet(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %2, align 8
  store i32 250, i32* %6, align 4
  br label %86

86:                                               ; preds = %28, %28, %68
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @_mdns_schedule_tx_packet(%struct.TYPE_13__* %87, i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %108

99:                                               ; preds = %28
  %100 = load i32, i32* @PCB_RUNNING, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %104 = call i32 @_mdns_free_tx_packet(%struct.TYPE_13__* %103)
  br label %108

105:                                              ; preds = %28
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = call i32 @_mdns_free_tx_packet(%struct.TYPE_13__* %106)
  br label %108

108:                                              ; preds = %25, %105, %99, %86, %65, %48
  ret void
}

declare dso_local i32 @_mdns_free_tx_packet(%struct.TYPE_13__*) #1

declare dso_local i32 @_mdns_dispatch_tx_packet(%struct.TYPE_13__*) #1

declare dso_local i32 @_mdns_schedule_tx_packet(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @_mdns_create_announce_from_probe(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
