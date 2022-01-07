; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_mem.c_mz_stream_mem_seek.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_mem.c_mz_stream_mem_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@MZ_OK = common dso_local global i32 0, align 4
@MZ_SEEK_ERROR = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_mem_seek(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* @MZ_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %29 [
    i32 130, label %15
    i32 129, label %21
    i32 128, label %27
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %9, align 8
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %9, align 8
  br label %31

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %9, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @MZ_SEEK_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %70

31:                                               ; preds = %27, %21, %15
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @MZ_SEEK_ERROR, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %37
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @mz_stream_mem_set_size(i8* %47, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MZ_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %46
  br label %63

57:                                               ; preds = %31
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @MZ_SEEK_ERROR, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @MZ_OK, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %60, %54, %44, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mz_stream_mem_set_size(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
