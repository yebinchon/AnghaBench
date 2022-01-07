; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decpgssub.c_decsubInit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decpgssub.c_decsubInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__*, i32*, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@AV_CODEC_ID_HDMV_PGS_SUBTITLE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"decsubInit: avcodec_open failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @decsubInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decsubInit(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @AV_CODEC_ID_HDMV_PGS_SUBTITLE, align 4
  %11 = call i32* @avcodec_find_decoder(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_16__* @avcodec_alloc_context3(i32* %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = call %struct.TYPE_14__* @calloc(i32 1, i32 48)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 6
  %23 = call i32 @hb_buffer_list_clear(i32* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  %26 = call i32 @hb_buffer_list_clear(i32* %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  store i32* null, i32** %9, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @hb_avcodec_open(%struct.TYPE_16__* %60, i32* %61, i32** %9, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %2
  %65 = call i32 @av_dict_free(i32** %9)
  %66 = call i32 @hb_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

67:                                               ; preds = %2
  %68 = call i32 @av_dict_free(i32** %9)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_16__* @avcodec_alloc_context3(i32*) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32 @hb_buffer_list_clear(i32*) #1

declare dso_local i64 @hb_avcodec_open(%struct.TYPE_16__*, i32*, i32**, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @hb_log(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
