; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_seek.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, i32)* }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8
@MZ_STREAM_ERROR = common dso_local global i32 0, align 4
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@MZ_SEEK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_seek(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %22, align 8
  %24 = icmp eq i32 (%struct.TYPE_5__*, i32, i32)* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %13, %3
  %26 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @mz_stream_is_open(i8* %28)
  %30 = load i64, i64* @MZ_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MZ_STREAM_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MZ_SEEK_SET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @MZ_SEEK_ERROR, align 4
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %38, %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 %48(%struct.TYPE_5__* %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %41, %32, %25
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @mz_stream_is_open(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
