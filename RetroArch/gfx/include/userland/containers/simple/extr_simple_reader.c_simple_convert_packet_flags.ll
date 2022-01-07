; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/simple/extr_simple_reader.c_simple_convert_packet_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/simple/extr_simple_reader.c_simple_convert_packet_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.convert_from_t = type { i32, i32 }

@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_CONFIG = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @simple_convert_packet_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_convert_packet_flags(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [7 x %struct.convert_from_t], align 16
  %9 = alloca [4 x %struct.convert_from_t], align 16
  %10 = alloca %struct.convert_from_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [7 x %struct.convert_from_t], [7 x %struct.convert_from_t]* %8, i64 0, i64 0
  %14 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %13, i32 0, i32 0
  store i32 2, i32* %14, align 8
  %15 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %13, i32 0, i32 1
  %16 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %13, i64 1
  %18 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %17, i32 0, i32 1
  %20 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %17, i64 1
  %22 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %21, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %21, i32 0, i32 1
  %24 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %21, i64 1
  %26 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %25, i32 0, i32 0
  store i32 16, i32* %26, align 8
  %27 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %25, i32 0, i32 1
  %28 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_DISCONTINUITY, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %25, i64 1
  %30 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %29, i32 0, i32 1
  %32 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_CONFIG, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %29, i64 1
  %34 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %33, i32 0, i32 0
  store i32 64, i32* %34, align 8
  %35 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %33, i32 0, i32 1
  %36 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_ENCRYPTED, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %33, i64 1
  %38 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %37, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [4 x %struct.convert_from_t], [4 x %struct.convert_from_t]* %9, i64 0, i64 0
  %41 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %40, i32 0, i32 0
  store i32 16, i32* %41, align 8
  %42 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %40, i32 0, i32 1
  %43 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %40, i64 1
  %45 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %44, i32 0, i32 0
  store i32 32, i32* %45, align 8
  %46 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %44, i32 0, i32 1
  %47 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %44, i64 1
  %49 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %48, i32 0, i32 0
  store i32 128, i32* %49, align 8
  %50 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %48, i32 0, i32 1
  %51 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_CONFIG, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %48, i64 1
  %53 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %52, i32 0, i32 1
  store i32 0, i32* %54, align 4
  store %struct.convert_from_t* null, %struct.convert_from_t** %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %72 [
    i32 129, label %68
    i32 128, label %70
  ]

68:                                               ; preds = %3
  %69 = getelementptr inbounds [7 x %struct.convert_from_t], [7 x %struct.convert_from_t]* %8, i64 0, i64 0
  store %struct.convert_from_t* %69, %struct.convert_from_t** %10, align 8
  br label %73

70:                                               ; preds = %3
  %71 = getelementptr inbounds [4 x %struct.convert_from_t], [4 x %struct.convert_from_t]* %9, i64 0, i64 0
  store %struct.convert_from_t* %71, %struct.convert_from_t** %10, align 8
  br label %73

72:                                               ; preds = %3
  br label %73

73:                                               ; preds = %72, %70, %68
  %74 = load %struct.convert_from_t*, %struct.convert_from_t** %10, align 8
  %75 = icmp ne %struct.convert_from_t* %74, null
  br i1 %75, label %76, label %110

76:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %105, %76
  %78 = load %struct.convert_from_t*, %struct.convert_from_t** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %78, i64 %80
  %82 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %77
  %86 = load %struct.convert_from_t*, %struct.convert_from_t** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %86, i64 %88
  %90 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load %struct.convert_from_t*, %struct.convert_from_t** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %96, i64 %98
  %100 = getelementptr inbounds %struct.convert_from_t, %struct.convert_from_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %95, %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %77

108:                                              ; preds = %77
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %4, align 4
  br label %112

110:                                              ; preds = %73
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
