; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_bh_control_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_bh_control_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: EOS\00", align 1
@SVP_STOP_EOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: MMAL error: %s\00", align 1
@SVP_STOP_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: buf %p, event %4.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @svp_bh_control_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svp_bh_control_cb(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, i32, ...) @LOG_TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load i32, i32* @SVP_STOP_EOS, align 4
  %20 = call i32 @svp_set_stop(%struct.TYPE_8__* %18, i32 %19)
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mmal_status_to_string(i32 %29)
  %31 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load i32, i32* @SVP_STOP_ERROR, align 4
  %34 = call i32 @svp_set_stop(%struct.TYPE_8__* %32, i32 %33)
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 (i8*, i32, ...) @LOG_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %38, %struct.TYPE_10__* %39, i8* %42)
  br label %44

44:                                               ; preds = %35, %21, %13
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @mmal_buffer_header_release(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @vcos_semaphore_post(i32* %48)
  ret void
}

declare dso_local i32 @LOG_TRACE(i8*, i32, ...) #1

declare dso_local i32 @svp_set_stop(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

declare dso_local i32 @mmal_status_to_string(i32) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_10__*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
