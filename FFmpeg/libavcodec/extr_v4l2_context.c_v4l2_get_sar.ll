; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_get_sar.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_get_sar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVRational = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_cropcap = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@__const.v4l2_get_sar.sar = private unnamed_addr constant %struct.AVRational { i32 0, i32 1, i32 0, i32 0 }, align 4
@VIDIOC_CROPCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.TYPE_7__*)* @v4l2_get_sar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @v4l2_get_sar(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.AVRational, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.v4l2_cropcap, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = bitcast %struct.AVRational* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.AVRational* @__const.v4l2_get_sar.sar to i8*), i64 16, i1 false)
  %7 = call i32 @memset(%struct.v4l2_cropcap* %4, i32 0, i32 12)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call %struct.TYPE_8__* @ctx_to_m2mctx(%struct.TYPE_7__* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VIDIOC_CROPCAP, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, %struct.v4l2_cropcap* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %30

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.AVRational, %struct.AVRational* %2, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %4, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.AVRational, %struct.AVRational* %2, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = bitcast %struct.AVRational* %2 to { i64, i64 }*
  %32 = load { i64, i64 }, { i64, i64 }* %31, align 4
  ret { i64, i64 } %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.v4l2_cropcap*, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_cropcap*) #2

declare dso_local %struct.TYPE_8__* @ctx_to_m2mctx(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
