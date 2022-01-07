; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_init.c_netplay_init_buffers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_init.c_netplay_init_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.delta_frame*, i64 }
%struct.delta_frame = type { i32 }

@NETPLAY_MAX_STALL_FRAMES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_SAVESTATES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_INITIALIZATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @netplay_init_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netplay_init_buffers(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.delta_frame* null, %struct.delta_frame** %4, align 8
  %5 = load i32, i32* @NETPLAY_MAX_STALL_FRAMES, align 4
  %6 = add nsw i32 %5, 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @calloc(i32 %21, i32 4)
  %23 = inttoptr i64 %22 to %struct.delta_frame*
  store %struct.delta_frame* %23, %struct.delta_frame** %4, align 8
  %24 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %25 = icmp ne %struct.delta_frame* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store %struct.delta_frame* %28, %struct.delta_frame** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %35 = load i32, i32* @NETPLAY_QUIRK_INITIALIZATION, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = call i32 @netplay_init_serialization(%struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = call i32 @netplay_init_socket_buffers(%struct.TYPE_5__* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %26
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @netplay_init_serialization(%struct.TYPE_5__*) #1

declare dso_local i32 @netplay_init_socket_buffers(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
