; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_restore.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.ogg* }
%struct.ogg = type { i32, i32, %struct.ogg_stream*, i32, %struct.ogg_state* }
%struct.ogg_stream = type { i32, i32 }
%struct.ogg_state = type { i32, %struct.TYPE_6__*, i32, i32, %struct.ogg_state* }
%struct.TYPE_6__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ogg_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_restore(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.ogg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ogg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ogg_stream*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.ogg*, %struct.ogg** %11, align 8
  store %struct.ogg* %12, %struct.ogg** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.ogg*, %struct.ogg** %4, align 8
  %17 = getelementptr inbounds %struct.ogg, %struct.ogg* %16, i32 0, i32 4
  %18 = load %struct.ogg_state*, %struct.ogg_state** %17, align 8
  store %struct.ogg_state* %18, %struct.ogg_state** %6, align 8
  %19 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %20 = icmp ne %struct.ogg_state* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %117

22:                                               ; preds = %1
  %23 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %24 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %23, i32 0, i32 4
  %25 = load %struct.ogg_state*, %struct.ogg_state** %24, align 8
  %26 = load %struct.ogg*, %struct.ogg** %4, align 8
  %27 = getelementptr inbounds %struct.ogg, %struct.ogg* %26, i32 0, i32 4
  store %struct.ogg_state* %25, %struct.ogg_state** %27, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %67, %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ogg*, %struct.ogg** %4, align 8
  %31 = getelementptr inbounds %struct.ogg, %struct.ogg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load %struct.ogg*, %struct.ogg** %4, align 8
  %36 = getelementptr inbounds %struct.ogg, %struct.ogg* %35, i32 0, i32 2
  %37 = load %struct.ogg_stream*, %struct.ogg_stream** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %37, i64 %39
  store %struct.ogg_stream* %40, %struct.ogg_stream** %9, align 8
  %41 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %42 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %41, i32 0, i32 1
  %43 = call i32 @av_freep(i32* %42)
  %44 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %45 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %44, i32 0, i32 0
  %46 = call i32 @av_freep(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %49 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %34
  %53 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %54 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52, %34
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @free_stream(%struct.TYPE_5__* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %28

70:                                               ; preds = %28
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %73 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SEEK_SET, align 4
  %76 = call i32 @avio_seek(i32* %71, i32 %74, i32 %75)
  %77 = load %struct.ogg*, %struct.ogg** %4, align 8
  %78 = getelementptr inbounds %struct.ogg, %struct.ogg* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  %79 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %80 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ogg*, %struct.ogg** %4, align 8
  %83 = getelementptr inbounds %struct.ogg, %struct.ogg* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %85 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ogg*, %struct.ogg** %4, align 8
  %88 = getelementptr inbounds %struct.ogg, %struct.ogg* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ogg*, %struct.ogg** %4, align 8
  %90 = getelementptr inbounds %struct.ogg, %struct.ogg* %89, i32 0, i32 2
  %91 = load %struct.ogg*, %struct.ogg** %4, align 8
  %92 = getelementptr inbounds %struct.ogg, %struct.ogg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @av_reallocp_array(%struct.ogg_stream** %90, i32 %93, i32 8)
  store i32 %94, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %70
  %97 = load %struct.ogg*, %struct.ogg** %4, align 8
  %98 = getelementptr inbounds %struct.ogg, %struct.ogg* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %117

100:                                              ; preds = %70
  %101 = load %struct.ogg*, %struct.ogg** %4, align 8
  %102 = getelementptr inbounds %struct.ogg, %struct.ogg* %101, i32 0, i32 2
  %103 = load %struct.ogg_stream*, %struct.ogg_stream** %102, align 8
  %104 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %105 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %108 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcpy(%struct.ogg_stream* %103, %struct.TYPE_6__* %106, i32 %112)
  br label %114

114:                                              ; preds = %100
  %115 = load %struct.ogg_state*, %struct.ogg_state** %6, align 8
  %116 = call i32 @av_free(%struct.ogg_state* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %96, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @free_stream(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @av_reallocp_array(%struct.ogg_stream**, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ogg_stream*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @av_free(%struct.ogg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
