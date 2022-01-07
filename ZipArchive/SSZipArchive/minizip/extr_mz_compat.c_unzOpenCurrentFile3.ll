; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzOpenCurrentFile3.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzOpenCurrentFile3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@UNZ_PARAMERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzOpenCurrentFile3(i64 %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %18 = load i64, i64* @MZ_OK, align 8
  store i64 %18, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %22, i32* %6, align 4
  br label %100

23:                                               ; preds = %5
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** %9, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @mz_zip_entry_read_open(i32 %38, i32 %39, i8* %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @MZ_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @mz_zip_entry_get_info(i32 %48, %struct.TYPE_4__** %13)
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %45, %33
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @MZ_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  store i32 6, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 6
  switch i32 %70, label %77 [
    i32 128, label %71
    i32 130, label %73
    i32 129, label %75
  ]

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  br label %77

73:                                               ; preds = %65
  %74 = load i32*, i32** %9, align 8
  store i32 2, i32* %74, align 4
  br label %77

75:                                               ; preds = %65
  %76 = load i32*, i32** %9, align 8
  store i32 9, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %75, %73, %71
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @MZ_OK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @mz_zip_get_stream(i32 %86, i8** %15)
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* @MZ_OK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @mz_stream_tell(i8* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i64, i64* %14, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %21
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @mz_zip_entry_read_open(i32, i32, i8*) #1

declare dso_local i64 @mz_zip_entry_get_info(i32, %struct.TYPE_4__**) #1

declare dso_local i64 @mz_zip_get_stream(i32, i8**) #1

declare dso_local i32 @mz_stream_tell(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
