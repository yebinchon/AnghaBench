; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzSeek64.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzSeek64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@MZ_OK = common dso_local global i64 0, align 8
@UNZ_PARAMERROR = common dso_local global i32 0, align 4
@MZ_COMPRESS_METHOD_STORE = common dso_local global i64 0, align 8
@UNZ_ERRNO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@MZ_SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzSeek64(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i64, i64* @MZ_OK, align 8
  store i64 %15, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %19, i32* %4, align 4
  br label %105

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @mz_zip_entry_get_info(i32 %23, %struct.TYPE_4__** %9)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @MZ_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %105

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MZ_COMPRESS_METHOD_STORE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %38, i32* %4, align 4
  br label %105

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %10, align 8
  br label %69

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SEEK_CUR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %10, align 8
  br label %68

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SEEK_END, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %10, align 8
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %105

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %76, i32* %4, align 4
  br label %105

77:                                               ; preds = %69
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @mz_zip_get_stream(i32 %80, i8** %12)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @MZ_OK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* @MZ_SEEK_SET, align 4
  %93 = call i64 @mz_stream_seek(i8* %86, i64 %91, i32 %92)
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %85, %77
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @MZ_OK, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i64, i64* %11, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %75, %65, %37, %28, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @mz_zip_entry_get_info(i32, %struct.TYPE_4__**) #1

declare dso_local i64 @mz_zip_get_stream(i32, i8**) #1

declare dso_local i64 @mz_stream_seek(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
