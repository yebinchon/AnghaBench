; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_enable_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_enable_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*)* }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*)* @graph_port_enable_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_port_enable_cb(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = call %struct.TYPE_17__* @find_port_to_graph(%struct.TYPE_18__* %12, %struct.TYPE_17__* %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = call i32 @vcos_assert(i32 0)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = call i32 @mmal_buffer_header_release(%struct.TYPE_19__* %19)
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*)** %24, align 8
  %26 = icmp ne i64 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*)* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*)** %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i64 %31(%struct.TYPE_20__* %33, %struct.TYPE_17__* %34, %struct.TYPE_19__* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @MMAL_ENOSYS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %55

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i32 @mmal_port_event_send(%struct.TYPE_17__* %48, %struct.TYPE_19__* %49)
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_17__* %52, %struct.TYPE_19__* %53)
  br label %55

55:                                               ; preds = %17, %40, %51, %47
  ret void
}

declare dso_local %struct.TYPE_17__* @find_port_to_graph(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_19__*) #1

declare dso_local i32 @mmal_port_event_send(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
