; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_attrib_convert.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_attrib_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_HOST_SYSTEM_MSDOS = common dso_local global i64 0, align 8
@MZ_HOST_SYSTEM_WINDOWS_NTFS = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i32 0, align 4
@MZ_HOST_SYSTEM_UNIX = common dso_local global i64 0, align 8
@MZ_HOST_SYSTEM_OSX_DARWIN = common dso_local global i64 0, align 8
@MZ_HOST_SYSTEM_RISCOS = common dso_local global i64 0, align 8
@MZ_SUPPORT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_attrib_convert(i64 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %13, i32* %5, align 4
  br label %103

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MZ_HOST_SYSTEM_MSDOS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MZ_HOST_SYSTEM_WINDOWS_NTFS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19, %14
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @MZ_HOST_SYSTEM_MSDOS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @MZ_HOST_SYSTEM_WINDOWS_NTFS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @MZ_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %103

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @MZ_HOST_SYSTEM_UNIX, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @MZ_HOST_SYSTEM_OSX_DARWIN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @MZ_HOST_SYSTEM_RISCOS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %39, %35
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @mz_zip_attrib_win32_to_posix(i32 %48, i32* %49)
  store i32 %50, i32* %5, align 4
  br label %103

51:                                               ; preds = %43
  br label %101

52:                                               ; preds = %19
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @MZ_HOST_SYSTEM_UNIX, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @MZ_HOST_SYSTEM_OSX_DARWIN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @MZ_HOST_SYSTEM_RISCOS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %60, %56, %52
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @MZ_HOST_SYSTEM_UNIX, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @MZ_HOST_SYSTEM_OSX_DARWIN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @MZ_HOST_SYSTEM_RISCOS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72, %68, %64
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 16
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 16
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %7, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @MZ_OK, align 4
  store i32 %86, i32* %5, align 4
  br label %103

87:                                               ; preds = %72
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @MZ_HOST_SYSTEM_MSDOS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @MZ_HOST_SYSTEM_WINDOWS_NTFS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @mz_zip_attrib_posix_to_win32(i32 %96, i32* %97)
  store i32 %98, i32* %5, align 4
  br label %103

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100, %51
  %102 = load i32, i32* @MZ_SUPPORT_ERROR, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %95, %83, %47, %31, %12
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @mz_zip_attrib_win32_to_posix(i32, i32*) #1

declare dso_local i32 @mz_zip_attrib_posix_to_win32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
