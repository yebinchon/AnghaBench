; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzGetGlobalInfo64.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzGetGlobalInfo64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@MZ_OK = common dso_local global i64 0, align 8
@UNZ_PARAMERROR = common dso_local global i32 0, align 4
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetGlobalInfo64(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load i64, i64* @MZ_OK, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @memset(%struct.TYPE_5__* %12, i32 0, i32 16)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @mz_zip_get_comment(i32 %21, i8** %7)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @MZ_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @MZ_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @MZ_EXIST_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i64 @mz_zip_get_number_entry(i32 %42, i32* %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @MZ_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i64 @mz_zip_get_disk_number_with_cd(i32 %53, i32* %55)
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @mz_zip_get_comment(i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mz_zip_get_number_entry(i32, i32*) #1

declare dso_local i64 @mz_zip_get_disk_number_with_cd(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
