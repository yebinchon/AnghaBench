; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_info.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_add_info(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i64, i64* @MZ_OK, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @mz_zip_writer_is_open(i8* %15)
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %20, i64* %5, align 8
  br label %66

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %25, i64* %5, align 8
  br label %66

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @mz_zip_writer_entry_open(i8* %27, i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @MZ_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %5, align 8
  br label %66

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @mz_zip_attrib_is_dir(i32 %42, i32 %46)
  %48 = load i64, i64* @MZ_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %38
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @mz_zip_writer_add(i8* %51, i8* %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @MZ_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %5, align 8
  br label %66

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @mz_zip_writer_entry_close(i8* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %62, %58, %33, %24, %19
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @mz_zip_writer_is_open(i8*) #1

declare dso_local i64 @mz_zip_writer_entry_open(i8*, i32*) #1

declare dso_local i64 @mz_zip_attrib_is_dir(i32, i32) #1

declare dso_local i64 @mz_zip_writer_add(i8*, i8*, i32) #1

declare dso_local i64 @mz_zip_writer_entry_close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
