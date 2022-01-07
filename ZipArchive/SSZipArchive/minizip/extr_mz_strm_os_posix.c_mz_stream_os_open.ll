; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_os_posix.c_mz_stream_os_open.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_os_posix.c_mz_stream_os_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_READWRITE = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@MZ_OPEN_MODE_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MZ_OPEN_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MZ_SEEK_END = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_os_open(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MZ_OPEN_MODE_READWRITE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %39

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MZ_OPEN_MODE_APPEND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @MZ_OPEN_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32* @fopen64(i8* %40, i8* %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32, i32* @errno, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @MZ_OPEN_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %65

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MZ_OPEN_MODE_APPEND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @MZ_SEEK_END, align 4
  %62 = call i32 @mz_stream_os_seek(i8* %60, i32 0, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @MZ_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %59, %49, %35, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32* @fopen64(i8*, i8*) #1

declare dso_local i32 @mz_stream_os_seek(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
