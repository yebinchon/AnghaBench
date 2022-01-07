; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_il.c_mmalil_omx_default_channel_mapping.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_il.c_mmalil_omx_default_channel_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@mmalil_omx_default_channel_mapping.default_mapping = internal constant [9 x [8 x %struct.TYPE_6__]] [[8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 131, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 137, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 137, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 137, i32 136, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 137, i32 133, i32 129, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 137, i32 134, i32 133, i32 129, i32 0, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 137, i32 134, i32 133, i32 129, i32 136, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer], [8 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 135, i32 130, i32 137, i32 134, i32 133, i32 129, i32 132, i32 128 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ zeroinitializer]], align 16
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalil_omx_default_channel_mapping(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @MMAL_COUNTOF(%struct.TYPE_6__** bitcast ([9 x [8 x %struct.TYPE_6__]]* @mmalil_omx_default_channel_mapping.default_mapping to %struct.TYPE_6__**))
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [9 x [8 x %struct.TYPE_6__]], [9 x [8 x %struct.TYPE_6__]]* @mmalil_omx_default_channel_mapping.default_mapping, i64 0, i64 %17
  %19 = getelementptr inbounds [8 x %struct.TYPE_6__], [8 x %struct.TYPE_6__]* %18, i64 0, i64 0
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 32, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memcpy(%struct.TYPE_6__* %15, %struct.TYPE_6__* %19, i32 %23)
  %25 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @MMAL_COUNTOF(%struct.TYPE_6__**) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
