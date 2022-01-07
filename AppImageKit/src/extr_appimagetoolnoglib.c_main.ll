; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_main.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i8*, i8**, i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"Warning: binreloc failed to initialize (error code %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"This tool is located at %s\0A\00", align 1
@argp = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%s from the AppImage %s should be dumped to stdout\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"To be implemented\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Original SOURCE = %s\0AOriginal DESTINATION = %s\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c".AppImage\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"DESTINATION not specified, so assuming %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s should be packaged as %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Generating squashfs...\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"sfs_mksquashfs error\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Generating AppImage...\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Not able to open the tempfile for reading, aborting\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"Not able to open the destination file for writing, aborting\00", align 1
@runtime_len = common dso_local global i32 0, align 4
@runtime = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"Size of the embedded runtime: %d bytes\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Size of the embedded runtime is too large, aborting\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"Not able to write padding to destination file, aborting\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"Marking the AppImage as executable...\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Could not set executable bit, aborting\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Could not delete the tempfile, aborting\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Success\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"%s is a file, assuming it is an AppImage and should be unpacked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arguments, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = call i64 @br_init(i32* %6)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = call i8* @br_find_exe_dir(i32* null)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 0
  store i8* null, i8** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @argp_parse(i32* @argp, i32 %29, i8** %30, i32 0, i32 0, %struct.arguments* %7)
  %32 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sfs_ls(i8* %39)
  %41 = call i32 @exit(i32 0) #4
  unreachable

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* @stdout, align 4
  %48 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %53)
  %55 = call i32 @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %46, %42
  %57 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* @stdout, align 4
  %62 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %65, i8* %69)
  br label %71

71:                                               ; preds = %60, %56
  %72 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @is_directory(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %200

78:                                               ; preds = %71
  %79 = load i32, i32* @PATH_MAX, align 4
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %9, align 8
  %82 = alloca i8, i64 %80, align 16
  store i64 %80, i64* %10, align 8
  %83 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @realpath(i8* %86, i8* %82)
  %88 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %8, align 8
  br label %104

98:                                               ; preds = %78
  %99 = call i8* @br_strcat(i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i8* @basename(i8* %99)
  store i8* %100, i8** %8, align 8
  %101 = load i32, i32* @stdout, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* @stdout, align 4
  %106 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %109, i8* %110)
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %114 = load i8*, i8** %8, align 8
  %115 = call i8* @br_strcat(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %115, i8** %11, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @sfs_mksquashfs(i8* %82, i8* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %104
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %125 = load i8*, i8** %11, align 8
  %126 = call i32* @fopen(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %126, i32** %13, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %122
  %132 = load i8*, i8** %8, align 8
  %133 = call i32* @fopen(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32* %133, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i32, i32* @runtime_len, align 4
  store i32 %139, i32* %15, align 4
  %140 = load i8*, i8** @runtime, align 8
  store i8* %140, i8** %16, align 8
  %141 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %144, %138
  %148 = load i32, i32* %15, align 4
  %149 = icmp sgt i32 %148, 114686
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i8*, i8** %16, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 @fwrite(i8* %153, i32 %154, i32 1, i32* %155)
  %157 = load i32*, i32** %14, align 8
  %158 = call i32 @fileno(i32* %157)
  %159 = call i64 @ftruncate(i32 %158, i32 131072)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = call i32 @die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %152
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* @SEEK_END, align 4
  %166 = call i32 @fseek(i32* %164, i32 0, i32 %165)
  br label %167

167:                                              ; preds = %172, %163
  %168 = load i32*, i32** %13, align 8
  %169 = call i32 @feof(i32* %168)
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @fread(i8* %17, i32 1, i32 1, i32* %173)
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @fwrite(i8* %17, i32 1, i32 1, i32* %175)
  br label %167

177:                                              ; preds = %167
  %178 = load i32*, i32** %13, align 8
  %179 = call i32 @fclose(i32* %178)
  %180 = load i32*, i32** %14, align 8
  %181 = call i32 @fclose(i32* %180)
  %182 = load i32, i32* @stderr, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  %184 = load i8*, i8** %8, align 8
  %185 = call i64 @chmod(i8* %184, i32 493)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %189 = call i32 @exit(i32 1) #4
  unreachable

190:                                              ; preds = %177
  %191 = load i8*, i8** %11, align 8
  %192 = call i64 @unlink(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i32, i32* @stderr, align 4
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %199 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %199)
  br label %200

200:                                              ; preds = %196, %71
  %201 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %202 = load i8**, i8*** %201, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @is_regular_file(i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %200
  %208 = load i32, i32* @stdout, align 4
  %209 = getelementptr inbounds %struct.arguments, %struct.arguments* %7, i32 0, i32 1
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i8* %212)
  %214 = call i32 @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %215

215:                                              ; preds = %207, %200
  ret i32 0
}

declare dso_local i64 @br_init(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @br_find_exe_dir(i32*) #1

declare dso_local i32 @argp_parse(i32*, i32, i8**, i32, i32, %struct.arguments*) #1

declare dso_local i32 @sfs_ls(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @is_directory(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @realpath(i8*, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i8* @br_strcat(i8*, i8*) #1

declare dso_local i32 @sfs_mksquashfs(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @unlink(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i64 @is_regular_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
