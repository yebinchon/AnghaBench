; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/test/examples/extr_example_connections.c_control_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/test/examples/extr_example_connections.c_control_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.CONTEXT_T = type { i32, i32, i32 }

@MMAL_EVENT_ERROR = common dso_local global i64 0, align 8
@MMAL_EVENT_EOS = common dso_local global i64 0, align 8
@MMAL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @control_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @control_callback(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.CONTEXT_T*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.CONTEXT_T*
  store %struct.CONTEXT_T* %9, %struct.CONTEXT_T** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMAL_EVENT_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.CONTEXT_T*, %struct.CONTEXT_T** %5, align 8
  %22 = getelementptr inbounds %struct.CONTEXT_T, %struct.CONTEXT_T* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MMAL_EVENT_EOS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @MMAL_TRUE, align 4
  %31 = load %struct.CONTEXT_T*, %struct.CONTEXT_T** %5, align 8
  %32 = getelementptr inbounds %struct.CONTEXT_T, %struct.CONTEXT_T* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @mmal_buffer_header_release(%struct.TYPE_7__* %35)
  %37 = load %struct.CONTEXT_T*, %struct.CONTEXT_T** %5, align 8
  %38 = getelementptr inbounds %struct.CONTEXT_T, %struct.CONTEXT_T* %37, i32 0, i32 0
  %39 = call i32 @vcos_semaphore_post(i32* %38)
  ret void
}

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_7__*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
