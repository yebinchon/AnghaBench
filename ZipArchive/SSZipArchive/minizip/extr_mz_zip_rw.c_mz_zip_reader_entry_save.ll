; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32, i32 (i8*, i32, i32*, i64)* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_END_OF_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_entry_save(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  store i64 %17, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = call i64 @mz_zip_reader_is_open(%struct.TYPE_3__* %18)
  %20 = load i64, i64* @MZ_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %23, i64* %4, align 8
  br label %130

24:                                               ; preds = %3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %30, i64* %4, align 8
  br label %130

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %33, align 8
  %35 = icmp ne i32 (i8*, i32, i32*, i64)* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 %39(i8* %40, i32 %43, i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %36, %31
  br label %50

50:                                               ; preds = %105, %49
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @MZ_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %106

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @mz_zip_reader_entry_save_process(i8* %55, i8* %56, i32 %57)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @MZ_END_OF_STREAM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %106

63:                                               ; preds = %54
  %64 = load i64, i64* %14, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i64, i64* %14, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i64 (...) @mz_os_ms_time()
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %75
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %86, align 8
  %88 = icmp ne i32 (i8*, i32, i32*, i64)* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %91, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 %92(i8* %93, i32 %96, i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %89, %84
  %103 = load i64, i64* %11, align 8
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %102, %75
  br label %50

106:                                              ; preds = %62, %50
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %108, align 8
  %110 = icmp ne i32 (i8*, i32, i32*, i64)* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %117, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 %118(i8* %119, i32 %122, i32* %125, i64 %126)
  br label %128

128:                                              ; preds = %115, %111, %106
  %129 = load i64, i64* %13, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %128, %29, %22
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i64 @mz_zip_reader_is_open(%struct.TYPE_3__*) #1

declare dso_local i64 @mz_zip_reader_entry_save_process(i8*, i8*, i32) #1

declare dso_local i64 @mz_os_ms_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
