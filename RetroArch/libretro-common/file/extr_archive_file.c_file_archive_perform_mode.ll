; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_perform_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_perform_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_extract_userdata = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (%struct.TYPE_5__*, i32*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_archive_perform_mode(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.archive_extract_userdata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.archive_extract_userdata*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.archive_extract_userdata* %7, %struct.archive_extract_userdata** %17, align 8
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %80 [
    i32 128, label %21
    i32 129, label %29
  ]

21:                                               ; preds = %8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @filestream_write_file(i8* %22, i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %82

28:                                               ; preds = %21
  br label %81

29:                                               ; preds = %8
  store i32 0, i32* %18, align 4
  %30 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %31 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %37 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_6__* @file_archive_get_file_backend(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %82

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_5__*, i32*, i32, i32)*, i32 (%struct.TYPE_5__*, i32*, i32, i32)** %48, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 %49(%struct.TYPE_5__* %19, i32* %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %82

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %65, %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %61(i32 %63)
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %18, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %57, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %18, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @file_archive_decompress_data_to_file(%struct.TYPE_5__* %19, i32 %69, i8* %70, i8* %71, i32* %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %82

79:                                               ; preds = %68
  br label %81

80:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %82

81:                                               ; preds = %79, %28
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %80, %78, %55, %44, %27
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @filestream_write_file(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @file_archive_get_file_backend(i32) #1

declare dso_local i32 @file_archive_decompress_data_to_file(%struct.TYPE_5__*, i32, i8*, i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
