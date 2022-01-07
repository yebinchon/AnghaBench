; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_validate.c_main.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_validate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: %s Signed.AppImage\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".sha256_sig\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to read .sha256_sig section\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Skipping ELF section %s with offset %lu, length %lu\0A\00", align 1
@segment_name = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"ELF section %s not found, is the file signed?\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".digest\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".sig\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Not able to open the signature file for writing, aborting\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"offset+length cannot be less than the file size\0A\00", align 1
@main.buffer = internal global [65 x i8] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Error opening digestfile\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@G_FILE_TEST_IS_REGULAR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"Error writing digestfile\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"gpg2\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%s --verify %s %s\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"gpg2 command did not succeed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.stat, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @appimage_get_elf_section_offset_and_length(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %7, i64* %8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %31
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @segment_name, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %47, i64 %48, i64 %49)
  br label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** @segment_name, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %45
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @g_strconcat(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %59 = call i8* @basename(i8* %58)
  %60 = call i8* @g_strconcat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %59, i32* null)
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @g_strconcat(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %63 = call i8* @basename(i8* %62)
  %64 = call i8* @g_strconcat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %63, i32* null)
  store i8* %64, i8** %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32* @malloc(i64 %65)
  store i32* %66, i32** %11, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i32 @fseek(i32* %69, i64 %70, i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @fread(i32* %73, i64 %74, i32 4, i32* %75)
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @fclose(i32* %77)
  %79 = load i8*, i8** %10, align 8
  %80 = call i32* @fopen(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %56
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %86 = call i32 @exit(i32 1) #3
  unreachable

87:                                               ; preds = %56
  store i64 0, i64* %12, align 8
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32*, i32** %14, align 8
  %94 = ptrtoint i32* %93 to i32
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %12, align 8
  br label %88

103:                                              ; preds = %88
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @free(i32* %106)
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @stat(i8* %108, %struct.stat* %15)
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %114, %115
  %117 = icmp ult i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %103
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %121 = call i32 @exit(i32 1) #3
  unreachable

122:                                              ; preds = %103
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @sha256_file(i8* %123, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @main.buffer, i64 0, i64 0), i64 %124, i64 %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @main.buffer, i64 0, i64 0))
  %128 = load i8*, i8** %9, align 8
  %129 = call i32* @fopen(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %129, i32** %17, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %122
  %136 = load i32*, i32** %17, align 8
  %137 = ptrtoint i32* %136 to i32
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @main.buffer, i64 0, i64 0))
  %139 = load i32*, i32** %17, align 8
  %140 = call i32 @fclose(i32* %139)
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* @G_FILE_TEST_IS_REGULAR, align 4
  %143 = call i32 @g_file_test(i8* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %135
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %147 = call i32 @exit(i32 1) #3
  unreachable

148:                                              ; preds = %135
  %149 = call i8* @g_find_program_in_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store i8* %149, i8** %19, align 8
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %151 = load i8*, i8** %19, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @sprintf(i8* %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %151, i8* %152, i8* %153)
  %155 = load i32, i32* @stderr, align 4
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %156)
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %159 = call i32* @popen(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %159, i32** %20, align 8
  %160 = load i32*, i32** %20, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %148
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %148
  %166 = load i32*, i32** %20, align 8
  %167 = call i32 @pclose(i32* %166)
  %168 = call i32 @WEXITSTATUS(i32 %167)
  store i32 %168, i32* %21, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @unlink(i8* %169)
  %171 = load i8*, i8** %10, align 8
  %172 = call i32 @unlink(i8* %171)
  %173 = load i32, i32* %21, align 4
  ret i32 %173
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @appimage_get_elf_section_offset_and_length(i8*, i8*, i64*, i64*) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(i32*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @sha256_file(i8*, i8*, i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @g_file_test(i8*, i32) #1

declare dso_local i8* @g_find_program_in_path(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
