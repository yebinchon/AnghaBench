; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_do_deep_probe.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_do_deep_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@V = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"do_deep_probe: unexpected codec_id (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @do_deep_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_deep_probe(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_16__* @avcodec_find_decoder(i32 %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = call %struct.TYPE_15__* @avcodec_alloc_context3(%struct.TYPE_16__* %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @av_parser_init(i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %112

31:                                               ; preds = %21
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %112

35:                                               ; preds = %31
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = call i64 @hb_avcodec_open(%struct.TYPE_15__* %36, %struct.TYPE_16__* %37, i32* null, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %112

41:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %106, %74, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @av_parser_parse2(i32* %51, %struct.TYPE_15__* %52, i32** %13, i32* %12, i64 %60, i32 %67, i32 0, i32 0, i32 0)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %42

75:                                               ; preds = %50
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %101 [
    i32 129, label %79
    i32 128, label %90
  ]

79:                                               ; preds = %75
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load i8*, i8** @V, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  store i32 1, i32* %6, align 4
  br label %106

90:                                               ; preds = %75
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 2, i32* %97, align 4
  %98 = load i8*, i8** @V, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  store i32 1, i32* %6, align 4
  br label %106

101:                                              ; preds = %75
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %104)
  store i32 -1, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %90, %79
  br label %42

107:                                              ; preds = %42
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @av_parser_close(i32* %108)
  %110 = call i32 @hb_avcodec_free_context(%struct.TYPE_15__** %8)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %40, %34, %30, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_16__* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_15__* @avcodec_alloc_context3(%struct.TYPE_16__*) #1

declare dso_local i32* @av_parser_init(i32) #1

declare dso_local i64 @hb_avcodec_open(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @av_parser_parse2(i32*, %struct.TYPE_15__*, i32**, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @av_parser_close(i32*) #1

declare dso_local i32 @hb_avcodec_free_context(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
