; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_mt_frame_filter.c_mt_frame_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_mt_frame_filter.c_mt_frame_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)* @mt_frame_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_frame_work(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %9, align 8
  %17 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = call %struct.TYPE_18__* @mt_frame_filter_flush(%struct.TYPE_16__* %26)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %11, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %29 = call i32 @hb_buffer_list_set(i32* %10, %struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %31 = call i32 @hb_buffer_list_append(i32* %10, %struct.TYPE_18__* %30)
  %32 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %10)
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %33, align 8
  %34 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %39, i64 %44
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = call %struct.TYPE_18__* @mt_frame_filter(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %48, align 8
  %49 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %35, %25
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_18__* @mt_frame_filter_flush(%struct.TYPE_16__*) #1

declare dso_local i32 @hb_buffer_list_set(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_18__* @mt_frame_filter(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
