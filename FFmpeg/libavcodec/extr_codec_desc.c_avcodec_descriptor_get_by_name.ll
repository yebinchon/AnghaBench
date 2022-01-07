; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_codec_desc.c_avcodec_descriptor_get_by_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_codec_desc.c_avcodec_descriptor_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @avcodec_descriptor_get_by_name(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = call %struct.TYPE_5__* @avcodec_descriptor_next(%struct.TYPE_5__* %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %2, align 8
  br label %20

18:                                               ; preds = %9
  br label %5

19:                                               ; preds = %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %21
}

declare dso_local %struct.TYPE_5__* @avcodec_descriptor_next(%struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
