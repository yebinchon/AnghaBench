; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_crc32.c_file_crc32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_crc32.c_file_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@CRC32_BUFFER_SIZE = common dso_local global i32 0, align 4
@CRC32_MAX_MB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_crc32(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %16 = call i32* @filestream_open(i8* %14, i32 %15, i32 0)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %59

20:                                               ; preds = %13
  %21 = load i32, i32* @CRC32_BUFFER_SIZE, align 4
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %59

27:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CRC32_MAX_MB, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @CRC32_BUFFER_SIZE, align 4
  %36 = call i64 @filestream_read(i32* %33, i8* %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %59

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @encoding_crc32(i32 %41, i8* %42, i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @filestream_eof(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %28

53:                                               ; preds = %48, %28
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @filestream_close(i32* %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %39, %26, %19
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @filestream_close(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %53, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @filestream_read(i32*, i8*, i32) #1

declare dso_local i32 @encoding_crc32(i32, i8*, i64) #1

declare dso_local i64 @filestream_eof(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
