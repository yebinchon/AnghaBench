; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_digest_md5.c_main.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_digest_md5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Usage: %s <my.AppImage>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Calculate AppImage MD5 digest, and compare it to embedded value (if available)\0A\00", align 1
@G_FILE_TEST_IS_REGULAR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"No such file or directory: %s\0A\00", align 1
@main.digest_size = internal constant i32 16, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not calculate MD5 digest\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"calculated: %s\0A\00", align 1
@main.section_name = internal constant [12 x i8] c".digest_md5\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Could not find %s section in file\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"Invalid section length for section %s: expected %d bytes, found %lu bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to open AppImage for writing\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [58 x i8] c"Failed to read embedded digest: failed to seek to offset\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"Failed to read embedded digest: read invalid amount of bytes from file\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"  embedded: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Digests match\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Digests don't match!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @G_FILE_TEST_IS_REGULAR, align 4
  %29 = call i32 @g_file_test(i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  store i32 1, i32* %3, align 4
  br label %115

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %38 = call i32 @appimage_type2_digest_md5(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %115

43:                                               ; preds = %35
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %45 = call i8* @appimage_hexlify(i8* %44, i32 16)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @appimage_get_elf_section_offset_and_length(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.section_name, i64 0, i64 0), i64* %9, i64* %10)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %53, %43
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.section_name, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %115

62:                                               ; preds = %56
  %63 = load i64, i64* %10, align 8
  %64 = icmp ult i64 %63, 16
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @main.section_name, i64 0, i64 0), i32 16, i64 %67)
  store i32 1, i32* %3, align 4
  br label %115

69:                                               ; preds = %62
  %70 = load i8*, i8** %6, align 8
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %115

77:                                               ; preds = %69
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i64 @fseek(i32* %78, i64 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @fclose(i32* %86)
  store i32 1, i32* %3, align 4
  br label %115

88:                                               ; preds = %77
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @fread(i8* %89, i32 1, i32 16, i32* %90)
  %92 = icmp ne i32 %91, 16
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0))
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @fclose(i32* %96)
  store i32 1, i32* %3, align 4
  br label %115

98:                                               ; preds = %88
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @fclose(i32* %99)
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %102 = call i8* @appimage_hexlify(i8* %101, i32 16)
  store i8* %102, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @free(i8* %105)
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %109 = call i64 @compare_byte_buffers(i8* %107, i8* %108, i32 16)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %115

113:                                              ; preds = %98
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %111, %93, %83, %74, %65, %59, %40, %31
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @g_file_test(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @appimage_type2_digest_md5(i8*, i8*) #1

declare dso_local i8* @appimage_hexlify(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @appimage_get_elf_section_offset_and_length(i8*, i8*, i64*, i64*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @compare_byte_buffers(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
