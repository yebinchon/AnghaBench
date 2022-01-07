; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/tests/extr_kextcopyright.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/tests/extr_kextcopyright.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gProgname = common dso_local global i8* null, align 8
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't create path from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't create bundle at path %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't get info dictionary from bundle\0A\00", align 1
@kCFBundleGetInfoStringKey = common dso_local global i32 0, align 4
@kNSHumanReadableCopyrightKey = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"This kext does not have a value for NSHumanReadableCopyright\00", align 1
@.str.4 = private unnamed_addr constant [199 x i8] c"Warning: This kext has a value for CFBundleGetInfoString.\0AThis key is obsolete, and may be removed from the kext's Info.plist.\0AIt has been replaced by CFBundleVersion and NSHumanReadableCopyright.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [225 x i8] c"Warning: The copyright string in NSHumanReadableCopyright is invalid,\0Abut the string in CFBundleGetInfoString is valid.  CFBundleGetInfoString is\0Aobsolete.  Please migrate your copyright string to NSHumanReadableCopyright.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Error: There is no valid copyright string for this kext.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @gProgname, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @usage()
  br label %119

23:                                               ; preds = %2
  %24 = load i32, i32* @kCFAllocatorDefault, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32* @CFURLCreateFromFileSystemRepresentation(i32 %24, i32* %28, i32 %32, i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %119

43:                                               ; preds = %23
  %44 = load i32, i32* @kCFAllocatorDefault, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32* @CFBundleCreate(i32 %44, i32* %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %119

55:                                               ; preds = %43
  %56 = load i32*, i32** %10, align 8
  %57 = call i32* @CFBundleGetInfoDictionary(i32* %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %119

63:                                               ; preds = %55
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* @kCFBundleGetInfoStringKey, align 4
  %66 = call i32* @CFDictionaryGetValue(i32* %64, i32 %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @kNSHumanReadableCopyrightKey, align 4
  %69 = call i32* @CFDictionaryGetValue(i32* %67, i32 %68)
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %119

78:                                               ; preds = %72, %63
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32*, i32** %12, align 8
  %85 = call i8* @convert_cfstring(i32* %84)
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %119

89:                                               ; preds = %81
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @kxld_validate_copyright_string(i8* %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %78
  %93 = load i32*, i32** %13, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32*, i32** %13, align 8
  %97 = call i8* @convert_cfstring(i32* %96)
  store i8* %97, i8** %15, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %119

101:                                              ; preds = %95
  %102 = load i8*, i8** %15, align 8
  %103 = call i32 @kxld_validate_copyright_string(i8* %102)
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %92
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.5, i64 0, i64 0))
  br label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %116 = call i32 (...) @printFormat()
  br label %119

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %104
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %113, %100, %88, %75, %60, %49, %37, %21
  %120 = load i32*, i32** %9, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @CFRelease(i32* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @CFRelease(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i8*, i8** %14, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i8*, i8** %15, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @free(i8* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @usage(...) #1

declare dso_local i32* @CFURLCreateFromFileSystemRepresentation(i32, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @CFBundleCreate(i32, i32*) #1

declare dso_local i32* @CFBundleGetInfoDictionary(i32*) #1

declare dso_local i32* @CFDictionaryGetValue(i32*, i32) #1

declare dso_local i8* @convert_cfstring(i32*) #1

declare dso_local i32 @kxld_validate_copyright_string(i8*) #1

declare dso_local i32 @printFormat(...) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
