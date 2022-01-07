; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_process.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_END_OF_STREAM = common dso_local global i64 0, align 8
@MZ_WRITE_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_add_process(i8* %0, i8* %1, i64 (i8*, i32, i32)* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i32, i32)*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i32, i32)* %2, i64 (i8*, i32, i32)** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* @MZ_OK, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = call i64 @mz_zip_writer_is_open(%struct.TYPE_3__* %15)
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %20, i64* %4, align 8
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @mz_zip_entry_is_open(i32 %24)
  %26 = load i64, i64* @MZ_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %29, i64* %4, align 8
  br label %66

30:                                               ; preds = %21
  %31 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %7, align 8
  %32 = icmp eq i64 (i8*, i32, i32)* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %34, i64* %4, align 8
  br label %66

35:                                               ; preds = %30
  %36 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 %36(i8* %37, i32 %40, i32 4)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* @MZ_END_OF_STREAM, align 8
  store i64 %45, i64* %4, align 8
  br label %66

46:                                               ; preds = %35
  %47 = load i64, i64* %9, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %4, align 8
  br label %66

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @mz_zip_writer_entry_write(i8* %53, i32 %56, i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i64, i64* @MZ_WRITE_ERROR, align 8
  store i64 %63, i64* %4, align 8
  br label %66

64:                                               ; preds = %52
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %62, %49, %44, %33, %28, %19
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @mz_zip_writer_is_open(%struct.TYPE_3__*) #1

declare dso_local i64 @mz_zip_entry_is_open(i32) #1

declare dso_local i64 @mz_zip_writer_entry_write(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
