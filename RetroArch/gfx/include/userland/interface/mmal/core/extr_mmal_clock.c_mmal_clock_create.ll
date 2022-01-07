; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_clock.c_mmal_clock_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_clock.c_mmal_clock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@__const.mmal_clock_create.scale = private unnamed_addr constant %struct.TYPE_6__ { i32 1, i32 1 }, align 4
@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mmal-clock\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@MMAL_ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"mmal-clock lock\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to create lock mutex\00", align 1
@MMAL_ENOSPC = common dso_local global i32 0, align 4
@CLOCK_UPDATE_THRESHOLD_LOWER = common dso_local global i32 0, align 4
@CLOCK_UPDATE_THRESHOLD_UPPER = common dso_local global i32 0, align 4
@CLOCK_DISCONT_THRESHOLD = common dso_local global i32 0, align 4
@CLOCK_DISCONT_DURATION = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_clock_create(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 40, i32* %4, align 4
  %7 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_6__* @__const.mmal_clock_create.scale to i8*), i64 8, i1 false)
  %8 = load i32**, i32*** %3, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_7__* @vcos_calloc(i32 1, i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = call i64 @vcos_mutex_create(i32* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i64, i64* @VCOS_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = call i32 @vcos_free(%struct.TYPE_7__* %28)
  %30 = load i32, i32* @MMAL_ENOSPC, align 4
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %20
  %32 = load i32, i32* @CLOCK_UPDATE_THRESHOLD_LOWER, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @CLOCK_UPDATE_THRESHOLD_UPPER, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @CLOCK_DISCONT_THRESHOLD, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @CLOCK_DISCONT_DURATION, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @MMAL_FALSE, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_6__* %5 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @mmal_clock_scale_set(i32* %50, i64 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %3, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %31, %26, %17, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @vcos_calloc(i32, i32, i8*) #2

declare dso_local i32 @LOG_ERROR(i8*) #2

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #2

declare dso_local i32 @vcos_free(%struct.TYPE_7__*) #2

declare dso_local i32 @mmal_clock_scale_set(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
