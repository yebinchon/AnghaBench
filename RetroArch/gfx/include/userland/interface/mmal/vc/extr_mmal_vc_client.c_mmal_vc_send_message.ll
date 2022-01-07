; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_send_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [7 x i8] c"len %d\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_MAGIC = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bulk transmit: %p, %i\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed bulk transmit\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@MMAL_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_vc_send_message(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [1 x %struct.TYPE_9__], align 16
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %15, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = ptrtoint %struct.TYPE_8__* %19 to i64
  store i64 %20, i64* %18, align 16
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %21, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 (i8*, i64, ...) @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp uge i64 %29, 8
  %31 = zext i1 %30 to i32
  %32 = call i32 @vcos_assert(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %6
  %38 = call i32 @vcos_assert(i32 0)
  %39 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %106

40:                                               ; preds = %6
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call i32 @vcos_mutex_lock(i32* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @MMAL_MAGIC, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %15, i64 0, i64 0
  %58 = call i64 @vchiq_queue_message(i32 %56, %struct.TYPE_9__* %57, i32 1)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %47
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @vcos_mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %104

71:                                               ; preds = %47
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %71
  %75 = load i32*, i32** %11, align 8
  %76 = ptrtoint i32* %75 to i64
  %77 = load i64, i64* %12, align 8
  %78 = call i32 (i8*, i64, ...) @LOG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 3
  %81 = and i64 %80, -4
  store i64 %81, i64* %12, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = call i64 @vchiq_queue_bulk_transmit(i32 %84, i32* %85, i64 %86, %struct.TYPE_8__* %87)
  store i64 %88, i64* %14, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @vcos_mutex_unlock(i32* %90)
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @vcos_verify(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %74
  %99 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @vcos_assert(i32 0)
  br label %104

101:                                              ; preds = %74
  br label %102

102:                                              ; preds = %101, %71
  %103 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %103, i32* %7, align 4
  br label %106

104:                                              ; preds = %98, %69
  %105 = load i32, i32* @MMAL_EIO, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %102, %37
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @LOG_TRACE(i8*, i64, ...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i64 @vchiq_queue_message(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i64 @vchiq_queue_bulk_transmit(i32, i32*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @vcos_verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
