; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_get_private_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_get_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Track = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Track*, %struct.TYPE_3__*)* @get_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_private_data(%struct.Track* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Track*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.Track* %0, %struct.Track** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.Track*, %struct.Track** %4, align 8
  %7 = getelementptr inbounds %struct.Track, %struct.Track* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @av_mallocz(i64 %10)
  %12 = load %struct.Track*, %struct.Track** %4, align 8
  %13 = getelementptr inbounds %struct.Track, %struct.Track* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.Track*, %struct.Track** %4, align 8
  %15 = getelementptr inbounds %struct.Track, %struct.Track* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.Track*, %struct.Track** %4, align 8
  %26 = getelementptr inbounds %struct.Track, %struct.Track* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.Track*, %struct.Track** %4, align 8
  %28 = getelementptr inbounds %struct.Track, %struct.Track* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memcpy(i32 %29, i32 %32, i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %21, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @av_mallocz(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
