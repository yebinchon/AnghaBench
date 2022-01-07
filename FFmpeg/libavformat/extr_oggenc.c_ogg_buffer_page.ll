; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_buffer_page.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_buffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_17__ }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_13__*)* @ogg_buffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_buffer_page(%struct.TYPE_16__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store %struct.TYPE_14__** %13, %struct.TYPE_14__*** %7, align 8
  %14 = call %struct.TYPE_14__* @av_mallocz(i32 16)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = bitcast %struct.TYPE_17__* %22 to i8*
  %26 = bitcast %struct.TYPE_17__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ogg_granule_to_timestamp(%struct.TYPE_13__* %27, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = call i32 @ogg_reset_cur_page(%struct.TYPE_13__* %40)
  br label %42

42:                                               ; preds = %56, %20
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = call i64 @ogg_compare_granule(%struct.TYPE_16__* %47, %struct.TYPE_17__* %50, %struct.TYPE_17__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store %struct.TYPE_14__** %59, %struct.TYPE_14__*** %7, align 8
  br label %42

60:                                               ; preds = %55, %42
  %61 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_14__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ogg_granule_to_timestamp(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ogg_reset_cur_page(%struct.TYPE_13__*) #1

declare dso_local i64 @ogg_compare_granule(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
