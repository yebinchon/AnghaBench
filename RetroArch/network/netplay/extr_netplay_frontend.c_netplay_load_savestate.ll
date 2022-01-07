; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_load_savestate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_load_savestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_15__, %struct.TYPE_15__, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@NETPLAY_QUIRK_NO_SAVESTATES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_TRANSMISSION = common dso_local global i32 0, align 4
@NETPLAY_COMPRESSION_ZLIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_load_savestate(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = call i32 @netplay_force_future(%struct.TYPE_14__* %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %83, label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %22
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @netplay_delta_frame_ready(%struct.TYPE_14__* %16, %struct.TYPE_12__* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %15
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = call i32 @core_serialize(%struct.TYPE_13__* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %124

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %5, align 8
  br label %80

54:                                               ; preds = %29
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %57, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i32 %71, i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %62, %54
  br label %80

80:                                               ; preds = %79, %50
  br label %82

81:                                               ; preds = %15
  br label %124

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82, %12
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %124

89:                                               ; preds = %83
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %94 = load i32, i32* @NETPLAY_QUIRK_NO_TRANSMISSION, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %124

99:                                               ; preds = %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = call i32 @netplay_send_savestate(%struct.TYPE_14__* %106, %struct.TYPE_13__* %107, i32 0, %struct.TYPE_15__* %109)
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = load i32, i32* @NETPLAY_COMPRESSION_ZLIB, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = call i32 @netplay_send_savestate(%struct.TYPE_14__* %118, %struct.TYPE_13__* %119, i32 %120, %struct.TYPE_15__* %122)
  br label %124

124:                                              ; preds = %49, %81, %88, %98, %117, %111
  ret void
}

declare dso_local i32 @netplay_force_future(%struct.TYPE_14__*) #1

declare dso_local i64 @netplay_delta_frame_ready(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @core_serialize(%struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @netplay_send_savestate(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
