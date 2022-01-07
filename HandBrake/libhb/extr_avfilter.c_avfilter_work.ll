; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_avfilter.c_avfilter_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_avfilter.c_avfilter_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, i64, i64 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)* @avfilter_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avfilter_work(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
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
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = call %struct.TYPE_18__* @filterFrame(%struct.TYPE_16__* %25, %struct.TYPE_18__* null)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = call %struct.TYPE_18__* @hb_buffer_list_tail(i32* %28)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %11, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %39, %32, %24
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = call i32 @hb_buffer_list_prepend(i32* %54, %struct.TYPE_18__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = call i32 @hb_buffer_list_append(i32* %58, %struct.TYPE_18__* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %62)
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %64, align 8
  %65 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %65, align 8
  %66 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %3
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = call %struct.TYPE_18__* @filterFrame(%struct.TYPE_16__* %68, %struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %71, align 8
  %72 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %52
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_18__* @filterFrame(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @hb_buffer_list_tail(i32*) #1

declare dso_local i32 @hb_buffer_list_prepend(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @hb_buffer_list_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
