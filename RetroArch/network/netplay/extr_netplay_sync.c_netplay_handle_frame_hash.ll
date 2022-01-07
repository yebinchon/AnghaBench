; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_handle_frame_hash.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_handle_frame_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64 }
%struct.delta_frame = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Netplay CRCs mismatch!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.delta_frame*)* @netplay_handle_frame_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_handle_frame_hash(%struct.TYPE_6__* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %17 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @abs(i64 %21)
  %23 = srem i32 %18, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %28 = call i8* @netplay_delta_frame_crc(%struct.TYPE_6__* %26, %struct.delta_frame* %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %31 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %34 = call i32 @netplay_cmd_crc(%struct.TYPE_6__* %32, %struct.delta_frame* %33)
  br label %35

35:                                               ; preds = %25, %15, %10
  br label %93

36:                                               ; preds = %2
  %37 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %38 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %92

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %49 = call i8* @netplay_delta_frame_crc(%struct.TYPE_6__* %47, %struct.delta_frame* %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %53 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %46
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  br label %81

64:                                               ; preds = %56
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %79

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = call i32 @netplay_cmd_request_savestate(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %76, %74
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %61
  br label %91

82:                                               ; preds = %46
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %81
  br label %92

92:                                               ; preds = %91, %41, %36
  br label %93

93:                                               ; preds = %92, %35
  ret void
}

declare dso_local i32 @abs(i64) #1

declare dso_local i8* @netplay_delta_frame_crc(%struct.TYPE_6__*, %struct.delta_frame*) #1

declare dso_local i32 @netplay_cmd_crc(%struct.TYPE_6__*, %struct.delta_frame*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @netplay_cmd_request_savestate(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
