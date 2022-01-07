; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_clock.c_mmal_clock_create_scheduling.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_clock.c_mmal_clock_create_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@MMAL_FALSE = common dso_local global i64 0, align 8
@VCOS_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to create timer %p\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mmal-clock sema\00", align 1
@VCOS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to create event semaphore %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to create list %p %p\00", align 1
@CLOCK_REQUEST_SLOTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"mmal-clock thread\00", align 1
@mmal_clock_worker_thread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to create worker thread\00", align 1
@VCOS_AFFINITY_MASK = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@MMAL_ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @mmal_clock_create_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_clock_create_scheduling(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load i64, i64* @MMAL_FALSE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = call i64 @mmal_clock_timer_create(i32* %11, %struct.TYPE_9__* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %17)
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = call i32 @vcos_semaphore_create(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @VCOS_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %106

29:                                               ; preds = %19
  %30 = call i8* (...) @mmal_list_create()
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = call i8* (...) @mmal_list_create()
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %43, %29
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %57)
  br label %106

59:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @CLOCK_REQUEST_SLOTS, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i32 @mmal_list_push_back(i8* %68, i32* %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i32, i32* @mmal_clock_worker_thread, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = call i32 @vcos_thread_create(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %84, %struct.TYPE_9__* %85)
  %87 = load i32, i32* @VCOS_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %106

91:                                               ; preds = %81
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = call i32 @vcos_thread_get_priority(i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @VCOS_AFFINITY_MASK, align 4
  %99 = and i32 %97, %98
  %100 = or i32 1, %99
  %101 = call i32 @vcos_thread_set_priority(i32* %96, i32 %100)
  %102 = load i32, i32* @MMAL_TRUE, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %105, i32* %2, align 4
  br label %147

106:                                              ; preds = %89, %49, %26, %16
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @VCOS_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = call i32 @vcos_semaphore_delete(i32* %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i64, i64* %5, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = call i32 @mmal_clock_timer_destroy(i32* %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @mmal_list_destroy(i8* %131)
  br label %133

133:                                              ; preds = %127, %121
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @mmal_list_destroy(i8* %143)
  br label %145

145:                                              ; preds = %139, %133
  %146 = load i32, i32* @MMAL_ENOSPC, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %91
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @mmal_clock_timer_create(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i8* @mmal_list_create(...) #1

declare dso_local i32 @mmal_list_push_back(i8*, i32*) #1

declare dso_local i32 @vcos_thread_create(i32*, i8*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @vcos_thread_get_priority(i32*) #1

declare dso_local i32 @vcos_thread_set_priority(i32*, i32) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @mmal_clock_timer_destroy(i32*) #1

declare dso_local i32 @mmal_list_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
