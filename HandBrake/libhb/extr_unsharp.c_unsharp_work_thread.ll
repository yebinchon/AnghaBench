; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_unsharp.c_unsharp_work_thread.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_unsharp.c_unsharp_work_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32**, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**, i32)* @unsharp_work_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsharp_work_thread(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %10, align 8
  %19 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %11, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %30 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %30, align 8
  %31 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %31, align 8
  %32 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %32, i32* %5, align 4
  br label %151

33:                                               ; preds = %4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_18__* @hb_frame_buffer_init(i32 %37, i32 %41, i32 %45)
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %12, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %138, %33
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %141

78:                                               ; preds = %75
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %14, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %15, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %14, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32 @unsharp(i32 %102, i32 %110, i32 %118, i32 %126, i32 %134, i32* %135, i32* %136)
  br label %138

138:                                              ; preds = %78
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %75

141:                                              ; preds = %75
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = bitcast %struct.TYPE_15__* %143 to i8*
  %147 = bitcast %struct.TYPE_15__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 4, i1 false)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %149, align 8
  %150 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %141, %28
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_18__* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i32 @unsharp(i32, i32, i32, i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
