; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_goto_next_entry.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_goto_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@mz_zip_reader_locate_entry_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_goto_next_entry(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load i64, i64* @MZ_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @mz_zip_reader_is_open(i8* %9)
  %11 = load i64, i64* @MZ_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %14, i64* %2, align 8
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @mz_zip_entry_is_open(i32 %18)
  %20 = load i64, i64* @MZ_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @mz_zip_reader_entry_close(i8* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @mz_zip_goto_next_entry(i32 %33)
  store i64 %34, i64* %5, align 8
  br label %42

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = load i32, i32* @mz_zip_reader_locate_entry_cb, align 4
  %41 = call i64 @mz_zip_locate_next_entry(i32 %38, %struct.TYPE_3__* %39, i32 %40)
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MZ_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i64 @mz_zip_entry_get_info(i32 %51, i32** %53)
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %55, %13
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i64 @mz_zip_reader_is_open(i8*) #1

declare dso_local i64 @mz_zip_entry_is_open(i32) #1

declare dso_local i32 @mz_zip_reader_entry_close(i8*) #1

declare dso_local i64 @mz_zip_goto_next_entry(i32) #1

declare dso_local i64 @mz_zip_locate_next_entry(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @mz_zip_entry_get_info(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
