; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ssa_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ssa_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__**, %struct.TYPE_17__**)* @ssa_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssa_work(%struct.TYPE_16__* %0, %struct.TYPE_17__** %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ass_process_codec_private(i32 %23, i8* %29, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %20, %3
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %49, align 8
  %50 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %50, i32* %4, align 4
  br label %106

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %70, %51
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_17__* @hb_fifo_get(i32 %57)
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %10, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %98

60:                                               ; preds = %52
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @hb_buffer_close(%struct.TYPE_17__** %10)
  br label %98

70:                                               ; preds = %60
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 90
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %89, %93
  %95 = sdiv i32 %94, 90
  %96 = call i32 @ass_process_chunk(i32 %73, i8* %77, i32 %80, i32 %85, i32 %95)
  %97 = call i32 @hb_buffer_close(%struct.TYPE_17__** %10)
  br label %52

98:                                               ; preds = %68, %52
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = call i32 @ApplySSASubs(%struct.TYPE_15__* %99, %struct.TYPE_17__* %100)
  %102 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %104, align 8
  %105 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %98, %46
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ass_process_codec_private(i32, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @hb_fifo_get(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_17__**) #1

declare dso_local i32 @ass_process_chunk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ApplySSASubs(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
