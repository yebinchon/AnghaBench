; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_mmalcam_next_drc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_mmalcam_next_drc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@mmalcam_next_drc.drc_setting = internal constant [4 x i32] [i32 128, i32 130, i32 129, i32 131], align 16
@mmalcam_next_drc.index = internal global i32 0, align 4
@MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Failed to set drc, %d\00", align 1
@MMAL_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to retrieve drc, %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"DRC set (%d) was not retrieved (%d)\00", align 1
@MMAL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @mmalcam_next_drc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalcam_next_drc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 20, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %9 = load i32, i32* @MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION, align 4
  store i32 %9, i32* %8, align 4
  %10 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %12 = load i32, i32* @MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @mmalcam_next_drc.index, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* @mmalcam_next_drc.index, align 4
  %15 = load i32, i32* @mmalcam_next_drc.index, align 4
  %16 = call i32 @countof(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mmalcam_next_drc.drc_setting, i64 0, i64 0))
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* @mmalcam_next_drc.index, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @mmalcam_next_drc.index, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* @mmalcam_next_drc.drc_setting, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %29 = call i64 @mmal_port_parameter_set(i32 %27, i32* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @MMAL_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (i8*, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @MMAL_FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %63

37:                                               ; preds = %19
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %42 = call i64 @mmal_port_parameter_get(i32 %40, i32* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @MMAL_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i64, i64* %4, align 8
  %48 = call i32 (i8*, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @MMAL_FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %37
  %51 = call i64 @memcmp(%struct.TYPE_8__* %5, %struct.TYPE_8__* %6, i32 20)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %56, i32 %58)
  %60 = load i32, i32* @MMAL_FALSE, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @MMAL_TRUE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %53, %46, %33
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @countof(i32*) #2

declare dso_local i64 @mmal_port_parameter_set(i32, i32*) #2

declare dso_local i32 @LOG_ERROR(i8*, i64, ...) #2

declare dso_local i64 @mmal_port_parameter_get(i32, i32*) #2

declare dso_local i64 @memcmp(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
