; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_get_keepalive_offload_frames.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_get_keepalive_offload_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_keepalive_offload_frame = type { i32 }

@IFNET_KEEPALIVE_OFFLOAD_FRAME_DATA_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_get_keepalive_offload_frames(i32 %0, %struct.ifnet_keepalive_offload_frame* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet_keepalive_offload_frame*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ifnet_keepalive_offload_frame*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.ifnet_keepalive_offload_frame* %1, %struct.ifnet_keepalive_offload_frame** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.ifnet_keepalive_offload_frame*, %struct.ifnet_keepalive_offload_frame** %8, align 8
  %15 = icmp eq %struct.ifnet_keepalive_offload_frame* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = load i64*, i64** %11, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @IFNET_KEEPALIVE_OFFLOAD_FRAME_DATA_SIZE, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16, %5
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %93

25:                                               ; preds = %19
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @P2ROUNDUP(i64 %26, i32 8)
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %6, align 4
  br label %93

32:                                               ; preds = %25
  %33 = load i64*, i64** %11, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %93

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @IS_INTF_CLAT46(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %93

42:                                               ; preds = %37
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %53, %42
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.ifnet_keepalive_offload_frame*, %struct.ifnet_keepalive_offload_frame** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.ifnet_keepalive_offload_frame, %struct.ifnet_keepalive_offload_frame* %48, i64 %49
  store %struct.ifnet_keepalive_offload_frame* %50, %struct.ifnet_keepalive_offload_frame** %13, align 8
  %51 = load %struct.ifnet_keepalive_offload_frame*, %struct.ifnet_keepalive_offload_frame** %13, align 8
  %52 = call i32 @bzero(%struct.ifnet_keepalive_offload_frame* %51, i32 4)
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %43

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ifnet_keepalive_offload_frame*, %struct.ifnet_keepalive_offload_frame** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @key_fill_offload_frames_for_savs(i32 %57, %struct.ifnet_keepalive_offload_frame* %58, i64 %59, i64 %60)
  %62 = load i64*, i64** %11, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ifnet_keepalive_offload_frame*, %struct.ifnet_keepalive_offload_frame** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = call i32 @udp_fill_keepalive_offload_frames(i32 %68, %struct.ifnet_keepalive_offload_frame* %69, i64 %70, i64 %71, i64* %72)
  br label %74

74:                                               ; preds = %67, %56
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ifnet_keepalive_offload_frame*, %struct.ifnet_keepalive_offload_frame** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = call i32 @tcp_fill_keepalive_offload_frames(i32 %80, %struct.ifnet_keepalive_offload_frame* %81, i64 %82, i64 %83, i64* %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp sle i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @VERIFY(i32 %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %41, %36, %30, %23
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

declare dso_local i64 @IS_INTF_CLAT46(i32) #1

declare dso_local i32 @bzero(%struct.ifnet_keepalive_offload_frame*, i32) #1

declare dso_local i64 @key_fill_offload_frames_for_savs(i32, %struct.ifnet_keepalive_offload_frame*, i64, i64) #1

declare dso_local i32 @udp_fill_keepalive_offload_frames(i32, %struct.ifnet_keepalive_offload_frame*, i64, i64, i64*) #1

declare dso_local i32 @tcp_fill_keepalive_offload_frames(i32, %struct.ifnet_keepalive_offload_frame*, i64, i64, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
