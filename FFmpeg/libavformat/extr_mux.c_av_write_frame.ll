; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_write_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__**, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_22__*, i32*)* }
%struct.TYPE_21__ = type { i64 }

@AVFMT_ALLOW_FLUSH = common dso_local global i32 0, align 4
@AVFMT_NOTIMESTAMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_write_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %9 = call i32 @prepare_input_packet(%struct.TYPE_22__* %7, %struct.TYPE_21__* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %108

14:                                               ; preds = %2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = icmp ne %struct.TYPE_21__* %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AVFMT_ALLOW_FLUSH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %17
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32*)** %30, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = call i32 %31(%struct.TYPE_22__* %32, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = call i32 @flush_if_needed(%struct.TYPE_22__* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %26
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = icmp ne %struct.TYPE_20__* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %50, %43, %38, %26
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %108

58:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %108

59:                                               ; preds = %14
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = call i32 @do_packet_auto_bsf(%struct.TYPE_22__* %60, %struct.TYPE_21__* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %108

67:                                               ; preds = %59
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = call i32 @write_packet(%struct.TYPE_22__* %68, %struct.TYPE_21__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = icmp ne %struct.TYPE_20__* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %78, %73, %67
  %92 = load i32, i32* %6, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %97, i64 %100
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %94, %91
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %65, %58, %56, %12
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @prepare_input_packet(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @flush_if_needed(%struct.TYPE_22__*) #1

declare dso_local i32 @do_packet_auto_bsf(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @write_packet(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
