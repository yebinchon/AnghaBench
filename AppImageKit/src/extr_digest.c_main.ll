; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_digest.c_main.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_digest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s file offset length\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"If no offset and length are provided, the ELF section '%s' is skipped\0A\0A\00", align 1
@segment_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [87 x i8] c"Calculate a sha256 of a file except a skipped area from offset to offset+length bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"which is replaced with 0x00 during checksum calculation.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"This is useful when a signature is placed in the skipped area.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"not existing file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c".sha256_sig\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Skipping ELF section %s with offset %lu, length %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"offset+length cannot be less than the file size\0A\00", align 1
@main.buffer = internal global [65 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @segment_name, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @stat(i8* %34, %struct.stat* %10)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @appimage_get_elf_section_offset_and_length(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64* %7, i64* %8)
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @segment_name, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %45
  br label %72

57:                                               ; preds = %42
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @atoi(i8* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @atoi(i8* %67)
  store i64 %68, i64* %8, align 8
  br label %71

69:                                               ; preds = %57
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %56
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %77, %78
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %72
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @sha256_file(i8* %86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @main.buffer, i64 0, i64 0), i64 %87, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @main.buffer, i64 0, i64 0))
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @appimage_get_elf_section_offset_and_length(i8*, i8*, i64*, i64*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @sha256_file(i8*, i8*, i64, i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
