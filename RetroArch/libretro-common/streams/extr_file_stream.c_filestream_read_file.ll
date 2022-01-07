; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_read_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to read %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @filestream_read_file(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %14 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %15 = call i32* @filestream_open(i8* %12, i32 %13, i32 %14)
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  br label %71

24:                                               ; preds = %3
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @filestream_get_size(i32* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %71

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %71

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %40, 1
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %71

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @filestream_read(i32* %45, i8* %46, i64 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @errno, align 4
  %55 = call i8* @strerror(i32 %54)
  %56 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %55)
  br label %71

57:                                               ; preds = %44
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @filestream_close(i32* %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i8**, i8*** %6, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i64*, i64** %7, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i64, i64* %8, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %57
  store i64 1, i64* %4, align 8
  br label %90

71:                                               ; preds = %51, %43, %36, %29, %18
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @filestream_close(i32* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i64*, i64** %7, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64*, i64** %7, align 8
  store i64 -1, i64* %87, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8**, i8*** %6, align 8
  store i8* null, i8** %89, align 8
  store i64 0, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %70
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @filestream_get_size(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @filestream_read(i32*, i8*, i64) #1

declare dso_local i32 @filestream_close(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
