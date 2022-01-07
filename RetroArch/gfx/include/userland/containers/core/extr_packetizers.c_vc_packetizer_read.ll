; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_packetizers.c_vc_packetizer_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_packetizers.c_vc_packetizer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_packetizer_read(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %10, %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %20, %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 4
  store i32 %46, i32* %4, align 4
  br label %66

47:                                               ; preds = %40, %35, %30, %27
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %6, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)**
  %61 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %61(%struct.TYPE_9__* %62, %struct.TYPE_10__* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %55, %45, %25, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
