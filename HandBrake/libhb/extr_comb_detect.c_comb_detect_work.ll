; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_comb_detect_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_comb_detect_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_DELAY = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__**, %struct.TYPE_19__**)* @comb_detect_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comb_detect_work(%struct.TYPE_18__* %0, %struct.TYPE_19__** %1, %struct.TYPE_19__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %7, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %9, align 8
  %15 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %27, i64 2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = call %struct.TYPE_19__* @hb_buffer_dup(%struct.TYPE_19__* %29)
  %31 = call i32 @store_ref(%struct.TYPE_17__* %24, %struct.TYPE_19__* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %34, i64 0
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = icmp ne %struct.TYPE_19__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = call i32 @process_frame(%struct.TYPE_17__* %39)
  br label %41

41:                                               ; preds = %38, %23
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = call i32 @hb_buffer_list_append(i32* %43, %struct.TYPE_19__* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = call %struct.TYPE_19__* @hb_buffer_list_clear(i32* %47)
  %49 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %49, align 8
  %50 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %50, i32* %4, align 4
  br label %84

51:                                               ; preds = %3
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = call %struct.TYPE_19__* @hb_buffer_dup(%struct.TYPE_19__* %58)
  %60 = call i32 @store_ref(%struct.TYPE_17__* %57, %struct.TYPE_19__* %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = call i32 @store_ref(%struct.TYPE_17__* %61, %struct.TYPE_19__* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @HB_FILTER_DELAY, align 4
  store i32 %66, i32* %4, align 4
  br label %84

67:                                               ; preds = %51
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = call i32 @store_ref(%struct.TYPE_17__* %68, %struct.TYPE_19__* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = call i32 @process_frame(%struct.TYPE_17__* %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = call i32 @hb_buffer_list_count(i32* %74)
  %76 = icmp sgt i32 %75, 3
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = call %struct.TYPE_19__* @hb_buffer_list_rem_head(i32* %79)
  %81 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %81, align 8
  br label %82

82:                                               ; preds = %77, %67
  %83 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %56, %41
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @store_ref(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @hb_buffer_dup(%struct.TYPE_19__*) #1

declare dso_local i32 @process_frame(%struct.TYPE_17__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @hb_buffer_list_count(i32*) #1

declare dso_local %struct.TYPE_19__* @hb_buffer_list_rem_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
