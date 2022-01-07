; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_container_read_packet.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_container_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { {}*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }

@VC_CONTAINER_ERROR_CONTINUE = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @container_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @container_read_packet(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %3, %23, %98
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)**
  %15 = load i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)** %14, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 %15(%struct.TYPE_14__* %16, %struct.TYPE_15__* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @VC_CONTAINER_ERROR_CONTINUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %24
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  br label %124

34:                                               ; preds = %27
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %124

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %74, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %51, i64 %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %48
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_ENCRYPTED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %60
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %67, %48, %40
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)**
  %85 = load i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %89 = call i64 %85(%struct.TYPE_14__* %86, %struct.TYPE_15__* %87, i32 %88)
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %79, %74
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @VC_CONTAINER_ERROR_CONTINUE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %9

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %67, %60
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %4, align 8
  br label %124

106:                                              ; preds = %100
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = call i64 @vc_container_filter_process(i64 %118, %struct.TYPE_15__* %119)
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %113, %106
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %122, %104, %38, %32
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i64 @vc_container_filter_process(i64, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
