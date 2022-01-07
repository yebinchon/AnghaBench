; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_writer.c_rawvideo_writer_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_writer.c_rawvideo_writer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i8* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" S%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @rawvideo_writer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rawvideo_writer_write(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i64 @rawvideo_write_header(%struct.TYPE_12__* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %92

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %19, %2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %38
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = call i32 @WRITE_BYTES(%struct.TYPE_12__* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %45
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %61, %58 ], [ %65, %62 ]
  %68 = call i32 @snprintf(i8* %53, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %70, 32
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @WRITE_BYTES(%struct.TYPE_12__* %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = call i32 @_WRITE_U8(%struct.TYPE_12__* %79, i32 10)
  br label %81

81:                                               ; preds = %78, %38, %33
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @WRITE_BYTES(%struct.TYPE_12__* %82, i8* %85, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = call i64 @STREAM_STATUS(%struct.TYPE_12__* %90)
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %81, %30
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i64 @rawvideo_write_header(%struct.TYPE_12__*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @_WRITE_U8(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
