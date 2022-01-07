; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedaala.c_daala_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedaala.c_daala_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__**, %struct.ogg* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i64, i32, i32, i32, i32*, i64, i64, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@OGG_FLAG_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @daala_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daala_packet(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ogg*, align 8
  %8 = alloca %struct.ogg_stream*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.ogg*, %struct.ogg** %11, align 8
  store %struct.ogg* %12, %struct.ogg** %7, align 8
  %13 = load %struct.ogg*, %struct.ogg** %7, align 8
  %14 = getelementptr inbounds %struct.ogg, %struct.ogg* %13, i32 0, i32 0
  %15 = load %struct.ogg_stream*, %struct.ogg_stream** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %15, i64 %17
  store %struct.ogg_stream* %18, %struct.ogg_stream** %8, align 8
  %19 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %20 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %25 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %139

29:                                               ; preds = %23, %2
  %30 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %31 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @OGG_FLAG_EOS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %139, label %36

36:                                               ; preds = %29
  %37 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %38 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %59, %36
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %43 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %48 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 255
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %66 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @daala_gptopts(%struct.TYPE_6__* %63, i32 %64, i32 %67, i32* null)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %9, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %72, %62
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %80 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %82 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %77
  %95 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %96 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %100, i64 %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %97, i64* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %108, i64 %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %94
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %120, i64 %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, %126
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %117, %94
  br label %138

138:                                              ; preds = %137, %77
  br label %139

139:                                              ; preds = %138, %29, %23
  %140 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %141 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %146 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %145, i32 0, i32 7
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %139
  ret i32 0
}

declare dso_local i64 @daala_gptopts(%struct.TYPE_6__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
