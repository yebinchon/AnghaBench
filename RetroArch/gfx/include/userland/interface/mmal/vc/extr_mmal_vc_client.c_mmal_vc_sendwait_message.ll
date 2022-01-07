; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_sendwait_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_sendwait_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MMAL_CLIENT_T = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }

@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wait %p, reply to %p\00", align 1
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@MMAL_EIO = common dso_local global i32 0, align 4
@mmal_vc_sendwait_message.data = internal global [8 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"failed bulk transmit\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"got reply (len %i/%i)\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_vc_sendwait_message(%struct.MMAL_CLIENT_T* %0, %struct.TYPE_11__* %1, i64 %2, i32 %3, i8* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.MMAL_CLIENT_T*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [1 x %struct.TYPE_12__], align 16
  %20 = alloca i32, align 4
  store %struct.MMAL_CLIENT_T* %0, %struct.MMAL_CLIENT_T** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %19, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = ptrtoint %struct.TYPE_11__* %23 to i64
  store i64 %24, i64* %22, align 16
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %26 = load i64, i64* %11, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %25, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp uge i64 %28, 16
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @vcos_assert(i8* %32)
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @vcos_assert(i8* %34)
  %36 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %37 = getelementptr inbounds %struct.MMAL_CLIENT_T, %struct.MMAL_CLIENT_T* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = call i32 @vcos_assert(i8* null)
  %42 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %42, i32* %8, align 4
  br label %145

43:                                               ; preds = %7
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %48 = getelementptr inbounds %struct.MMAL_CLIENT_T, %struct.MMAL_CLIENT_T* %47, i32 0, i32 0
  %49 = call i32 @vcos_mutex_lock(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %52 = call %struct.TYPE_13__* @get_waiter(%struct.MMAL_CLIENT_T* %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %17, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %59, align 8
  %60 = load i32, i32* @MMAL_MAGIC, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i64*, i64** %14, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 (i8*, ...) @LOG_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %70, i8* %71)
  %73 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %74 = call i32 @mmal_vc_use_internal(%struct.MMAL_CLIENT_T* %73)
  %75 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %76 = getelementptr inbounds %struct.MMAL_CLIENT_T, %struct.MMAL_CLIENT_T* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %19, i64 0, i64 0
  %79 = call i64 @vchiq_queue_message(i32 %77, %struct.TYPE_12__* %78, i32 1)
  store i64 %79, i64* %18, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %50
  %84 = load i32, i32* @MMAL_EIO, align 4
  store i32 %84, i32* %16, align 4
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %89 = getelementptr inbounds %struct.MMAL_CLIENT_T, %struct.MMAL_CLIENT_T* %88, i32 0, i32 0
  %90 = call i32 @vcos_mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %138

92:                                               ; preds = %50
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %92
  store i32 8, i32* %20, align 4
  %96 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %97 = getelementptr inbounds %struct.MMAL_CLIENT_T, %struct.MMAL_CLIENT_T* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = call i64 @vchiq_queue_bulk_transmit(i32 %98, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @mmal_vc_sendwait_message.data, i64 0, i64 0), i32 %99, %struct.TYPE_11__* %100)
  store i64 %101, i64* %18, align 8
  %102 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %103 = getelementptr inbounds %struct.MMAL_CLIENT_T, %struct.MMAL_CLIENT_T* %102, i32 0, i32 0
  %104 = call i32 @vcos_mutex_unlock(i32* %103)
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @vcos_verify(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %95
  %112 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i32 @vcos_assert(i8* null)
  %114 = load i32, i32* @MMAL_EIO, align 4
  store i32 %114, i32* %16, align 4
  br label %138

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = call i32 @vcos_semaphore_wait(i32* %118)
  %120 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %121 = call i32 @mmal_vc_release_internal(%struct.MMAL_CLIENT_T* %120)
  %122 = load i64*, i64** %14, align 8
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 (i8*, ...) @LOG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %14, align 8
  store i64 %132, i64* %133, align 8
  %134 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %136 = call i32 @release_waiter(%struct.MMAL_CLIENT_T* %134, %struct.TYPE_13__* %135)
  %137 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %137, i32* %8, align 4
  br label %145

138:                                              ; preds = %111, %91
  %139 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %140 = call i32 @mmal_vc_release_internal(%struct.MMAL_CLIENT_T* %139)
  %141 = load %struct.MMAL_CLIENT_T*, %struct.MMAL_CLIENT_T** %9, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %143 = call i32 @release_waiter(%struct.MMAL_CLIENT_T* %141, %struct.TYPE_13__* %142)
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %138, %116, %40
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @vcos_assert(i8*) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @get_waiter(%struct.MMAL_CLIENT_T*) #1

declare dso_local i32 @LOG_TRACE(i8*, ...) #1

declare dso_local i32 @mmal_vc_use_internal(%struct.MMAL_CLIENT_T*) #1

declare dso_local i64 @vchiq_queue_message(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i64 @vchiq_queue_bulk_transmit(i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @mmal_vc_release_internal(%struct.MMAL_CLIENT_T*) #1

declare dso_local i32 @release_waiter(%struct.MMAL_CLIENT_T*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
