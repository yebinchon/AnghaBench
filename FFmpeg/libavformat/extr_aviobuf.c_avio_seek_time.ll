; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_avio_seek_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_avio_seek_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i32, i32, i64, i32)*, i64 (i32, i32, i32)*, i64, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @avio_seek_time(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (i32, i32, i64, i32)*, i64 (i32, i32, i64, i32)** %13, align 8
  %15 = icmp ne i64 (i32, i32, i64, i32)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = call i64 @AVERROR(i32 %17)
  store i64 %18, i64* %5, align 8
  br label %63

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (i32, i32, i64, i32)*, i64 (i32, i32, i64, i32)** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 %22(i32 %25, i32 %26, i64 %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %19
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SEEK_CUR, align 4
  %45 = call i64 %40(i32 %43, i32 0, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %60

52:                                               ; preds = %32
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @ENOSYS, align 4
  %55 = call i64 @AVERROR(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %16
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
