; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_entry_read_descriptor.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_entry_read_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_ZIP_MAGIC_DATADESCRIPTOR = common dso_local global i64 0, align 8
@MZ_FORMAT_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64*, i64*, i64*)* @mz_zip_entry_read_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mz_zip_entry_read_descriptor(i8* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* @MZ_OK, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @mz_stream_read_uint32(i8* %15, i64* %11)
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @MZ_ZIP_MAGIC_DATADESCRIPTOR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* @MZ_FORMAT_ERROR, align 8
  store i64 %21, i64* %13, align 8
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @MZ_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @mz_stream_read_uint32(i8* %27, i64* %11)
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @MZ_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64*, i64** %8, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33, %29
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @MZ_OK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @mz_stream_read_uint32(i8* %47, i64* %11)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %12, align 8
  br label %58

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @mz_stream_read_int64(i8* %51, i64* %12)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @MZ_FORMAT_ERROR, align 8
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57, %46
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @MZ_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64*, i64** %9, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %62, %58
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @MZ_OK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @mz_stream_read_uint32(i8* %77, i64* %11)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %11, align 8
  store i64 %79, i64* %12, align 8
  br label %88

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @mz_stream_read_int64(i8* %81, i64* %12)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* @MZ_FORMAT_ERROR, align 8
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %85, %80
  br label %88

88:                                               ; preds = %87, %76
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @MZ_OK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i64*, i64** %10, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i64, i64* %12, align 8
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %92, %88
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i64, i64* %13, align 8
  ret i64 %100
}

declare dso_local i64 @mz_stream_read_uint32(i8*, i64*) #1

declare dso_local i64 @mz_stream_read_int64(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
