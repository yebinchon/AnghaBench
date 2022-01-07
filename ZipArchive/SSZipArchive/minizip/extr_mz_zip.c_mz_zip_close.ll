; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_close.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Zip - Close\0A\00", align 1
@MZ_OPEN_MODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_close(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load i64, i64* @MZ_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %12, i64* %2, align 8
  br label %93

13:                                               ; preds = %1
  %14 = call i32 @mz_zip_print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @mz_zip_entry_is_open(i8* %15)
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @mz_zip_entry_close(i8* %20)
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @MZ_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @mz_zip_write_cd(i8* %34)
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %33, %26, %22
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @mz_stream_close(i32* %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = call i32 @mz_stream_delete(i32** %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @mz_stream_mem_close(i32* %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = call i32 @mz_stream_mem_delete(i32** %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @mz_stream_mem_close(i32* %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = call i32 @mz_stream_mem_delete(i32** %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @MZ_FREE(i32* %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %87, %11
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i32 @mz_zip_print(i8*) #1

declare dso_local i64 @mz_zip_entry_is_open(i8*) #1

declare dso_local i64 @mz_zip_entry_close(i8*) #1

declare dso_local i64 @mz_zip_write_cd(i8*) #1

declare dso_local i32 @mz_stream_close(i32*) #1

declare dso_local i32 @mz_stream_delete(i32**) #1

declare dso_local i32 @mz_stream_mem_close(i32*) #1

declare dso_local i32 @mz_stream_mem_delete(i32**) #1

declare dso_local i32 @MZ_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
