; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 (i8*, i32, i32*, i64)* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_END_OF_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_add(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* @MZ_OK, align 8
  store i64 %16, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %18, align 8
  %20 = icmp ne i32 (i8*, i32, i32*, i64)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %10, align 8
  %32 = call i32 %24(i8* %25, i32 %28, i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %21, %3
  br label %34

34:                                               ; preds = %88, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @MZ_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @mz_zip_writer_add_process(i8* %39, i8* %40, i32 %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @MZ_END_OF_STREAM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %89

47:                                               ; preds = %38
  %48 = load i64, i64* %13, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i64, i64* %13, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* %13, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i64 (...) @mz_os_ms_time()
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %59
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %70, align 8
  %72 = icmp ne i32 (i8*, i32, i32*, i64)* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %10, align 8
  %84 = call i32 %76(i8* %77, i32 %80, i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %73, %68
  %86 = load i64, i64* %10, align 8
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %8, align 8
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %85, %59
  br label %34

89:                                               ; preds = %46, %34
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %91, align 8
  %93 = icmp ne i32 (i8*, i32, i32*, i64)* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32 (i8*, i32, i32*, i64)*, i32 (i8*, i32, i32*, i64)** %100, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %10, align 8
  %109 = call i32 %101(i8* %102, i32 %105, i32* %107, i64 %108)
  br label %110

110:                                              ; preds = %98, %94, %89
  %111 = load i64, i64* %12, align 8
  ret i64 %111
}

declare dso_local i64 @mz_zip_writer_add_process(i8*, i8*, i32) #1

declare dso_local i64 @mz_os_ms_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
