; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_merge_analog_part.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_merge_analog_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32, %struct.TYPE_8__* }
%struct.delta_frame = type { %struct.TYPE_8__** }

@NETPLAY_SHARE_ANALOG_BITS = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.delta_frame*, i64, i64, i64, i32)* @merge_analog_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_analog_part(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.delta_frame* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.delta_frame*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store %struct.delta_frame* %2, %struct.delta_frame** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %17, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NETPLAY_SHARE_ANALOG_BITS, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %29 = load %struct.delta_frame*, %struct.delta_frame** %10, align 8
  %30 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %15, align 8
  br label %35

35:                                               ; preds = %60, %7
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %38
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 1, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %12, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %52, %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %15, align 8
  br label %35

64:                                               ; preds = %35
  store i64 0, i64* %16, align 8
  br label %65

65:                                               ; preds = %125, %64
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @MAX_CLIENTS, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %128

69:                                               ; preds = %65
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %16, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = and i64 %70, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %125

78:                                               ; preds = %69
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = load %struct.delta_frame*, %struct.delta_frame** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call %struct.TYPE_8__* @netplay_device_client_state(%struct.TYPE_7__* %79, %struct.delta_frame* %80, i64 %81, i64 %82)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %15, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %125

87:                                               ; preds = %78
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %17, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = ashr i32 %95, %96
  %98 = and i32 %97, 65535
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %20, align 8
  %100 = load i32, i32* %18, align 4
  switch i32 %100, label %105 [
    i32 128, label %101
  ]

101:                                              ; preds = %87
  %102 = load i64, i64* %20, align 8
  %103 = load i64, i64* %19, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %19, align 8
  br label %124

105:                                              ; preds = %87
  %106 = load i64, i64* %20, align 8
  %107 = call i32 @abs(i64 %106)
  %108 = load i64, i64* %19, align 8
  %109 = call i32 @abs(i64 %108)
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %105
  %112 = load i64, i64* %20, align 8
  %113 = call i32 @abs(i64 %112)
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @abs(i64 %114)
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i64, i64* %20, align 8
  %119 = load i64, i64* %19, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117, %105
  %122 = load i64, i64* %20, align 8
  store i64 %122, i64* %19, align 8
  br label %123

123:                                              ; preds = %121, %117, %111
  br label %124

124:                                              ; preds = %123, %101
  br label %125

125:                                              ; preds = %124, %86, %77
  %126 = load i64, i64* %16, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %16, align 8
  br label %65

128:                                              ; preds = %65
  %129 = load i32, i32* %18, align 4
  %130 = icmp eq i32 %129, 128
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i64, i64* %17, align 8
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %19, align 8
  %137 = udiv i64 %136, %135
  store i64 %137, i64* %19, align 8
  br label %138

138:                                              ; preds = %134, %131
  br label %139

139:                                              ; preds = %138, %128
  %140 = load i64, i64* %19, align 8
  %141 = load i32, i32* %14, align 4
  %142 = zext i32 %141 to i64
  %143 = shl i64 %140, %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %13, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = or i64 %150, %143
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  ret void
}

declare dso_local %struct.TYPE_8__* @netplay_device_client_state(%struct.TYPE_7__*, %struct.delta_frame*, i64, i64) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
