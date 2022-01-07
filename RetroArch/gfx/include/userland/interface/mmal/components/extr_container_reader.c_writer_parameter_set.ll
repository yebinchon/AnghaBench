; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_writer_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_writer_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error opening file %s (%i)\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__*)* @writer_parameter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writer_parameter_set(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %60 [
    i32 128, label %20
  ]

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = bitcast %struct.TYPE_12__* %35 to %struct.TYPE_11__*
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strncpy(i32 %34, i32 %38, i32 3)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vc_container_open_writer(i32 %42, i32* %8, i32 0, i32 0)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @container_map_to_mmal_status(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %27
  %59 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %2
  %61 = load i32, i32* @MMAL_ENOSYS, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %50, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @vc_container_open_writer(i32, i32*, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

declare dso_local i32 @container_map_to_mmal_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
