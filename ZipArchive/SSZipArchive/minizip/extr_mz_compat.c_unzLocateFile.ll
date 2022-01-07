; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzLocateFile.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzLocateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MZ_OK = common dso_local global i64 0, align 8
@UNZ_PARAMERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzLocateFile(i64 %0, i8* %1, i64 (i64, i8*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i64, i8*, i32)*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i64, i8*, i32)* %2, i64 (i64, i8*, i32)** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @MZ_OK, align 8
  store i64 %15, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @mz_zip_goto_first_entry(i32 %26)
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %64, %20
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MZ_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @mz_zip_entry_get_info(i32 %35, %struct.TYPE_4__** %9)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MZ_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %69

41:                                               ; preds = %32
  %42 = load i64 (i64, i8*, i32)*, i64 (i64, i8*, i32)** %7, align 8
  %43 = icmp ne i64 (i64, i8*, i32)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64 (i64, i8*, i32)*, i64 (i64, i8*, i32)** %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 %45(i64 %46, i8* %47, i32 %50)
  store i64 %51, i64* %12, align 8
  br label %58

52:                                               ; preds = %41
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i8* %53, i32 %56)
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* @MZ_OK, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %75

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @mz_zip_goto_next_entry(i32 %67)
  store i64 %68, i64* %11, align 8
  br label %28

69:                                               ; preds = %40, %28
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %61, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @mz_zip_goto_first_entry(i32) #1

declare dso_local i64 @mz_zip_entry_get_info(i32, %struct.TYPE_4__**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @mz_zip_goto_next_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
