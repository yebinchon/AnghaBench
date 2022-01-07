; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_hb_decomb_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_hb_decomb_work.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__**, %struct.TYPE_19__**)* @hb_decomb_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_decomb_work(%struct.TYPE_18__* %0, %struct.TYPE_19__** %1, %struct.TYPE_19__** %2) #0 {
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
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %26, i64 2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = icmp ne %struct.TYPE_19__* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %34, i64 2
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = call %struct.TYPE_19__* @hb_buffer_dup(%struct.TYPE_19__* %36)
  %38 = call i32 @store_ref(%struct.TYPE_17__* %31, %struct.TYPE_19__* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = call i32 @process_frame(%struct.TYPE_17__* %39)
  br label %41

41:                                               ; preds = %30, %23
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
  br label %80

51:                                               ; preds = %3
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = call i32 @fill_stride(%struct.TYPE_19__* %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = call %struct.TYPE_19__* @hb_buffer_dup(%struct.TYPE_19__* %60)
  %62 = call i32 @store_ref(%struct.TYPE_17__* %59, %struct.TYPE_19__* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = call i32 @store_ref(%struct.TYPE_17__* %63, %struct.TYPE_19__* %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @HB_FILTER_DELAY, align 4
  store i32 %68, i32* %4, align 4
  br label %80

69:                                               ; preds = %51
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %72 = call i32 @store_ref(%struct.TYPE_17__* %70, %struct.TYPE_19__* %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = call i32 @process_frame(%struct.TYPE_17__* %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = call %struct.TYPE_19__* @hb_buffer_list_clear(i32* %76)
  %78 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %78, align 8
  %79 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %69, %58, %41
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @store_ref(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @hb_buffer_dup(%struct.TYPE_19__*) #1

declare dso_local i32 @process_frame(%struct.TYPE_17__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @fill_stride(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
