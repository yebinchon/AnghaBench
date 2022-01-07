; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__**, %struct.TYPE_15__**)* @nlmeans_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmeans_work(%struct.TYPE_14__* %0, %struct.TYPE_15__** %1, %struct.TYPE_15__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_15__* @nlmeans_filter_flush(i32* %25)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %11, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = call i32 @hb_buffer_list_set(i32* %10, %struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = call i32 @hb_buffer_list_append(i32* %10, %struct.TYPE_15__* %29)
  %31 = call %struct.TYPE_15__* @hb_buffer_list_clear(i32* %10)
  %32 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %32, align 8
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %33, align 8
  %34 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = call i32 @nlmeans_add_frame(i32* %36, %struct.TYPE_15__* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call %struct.TYPE_15__* @nlmeans_filter(i32* %39)
  %41 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %41, align 8
  %42 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_15__* @nlmeans_filter_flush(i32*) #1

declare dso_local i32 @hb_buffer_list_set(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @nlmeans_add_frame(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @nlmeans_filter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
