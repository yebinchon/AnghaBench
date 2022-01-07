; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_load_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: read error\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"temporary file write error\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"temporary file read error\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: out of memory loading file\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s: empty file\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s: open failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"makepng: %s: could not open temporary file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64**)* @load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_file(i8* %0, i64** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64** %1, i64*** %4, align 8
  %11 = call i32* (...) @tmpfile()
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %124

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %115

19:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %27, %19
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @getc(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EOF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @putc(i32 %28, i32* %29)
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %20

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @ferror(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @perror(i8* %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @fclose(i32* %43)
  br label %114

45:                                               ; preds = %33
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @ferror(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %113

55:                                               ; preds = %45
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @rewind(i32* %56)
  %58 = load i64, i64* %7, align 8
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %55
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 3
  %63 = and i64 %62, -4
  %64 = call i64* @malloc(i64 %63)
  store i64* %64, i64** %9, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %103

67:                                               ; preds = %60
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %75, %67
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @getc(i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @EOF, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %82

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  %81 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %81, align 8
  br label %68

82:                                               ; preds = %74
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @ferror(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %82
  %91 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i64*, i64** %9, align 8
  %95 = call i32 @free(i64* %94)
  br label %102

96:                                               ; preds = %86
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @fclose(i32* %97)
  %99 = load i64*, i64** %9, align 8
  %100 = load i64**, i64*** %4, align 8
  store i64* %99, i64** %100, align 8
  %101 = load i64, i64* %7, align 8
  ret i64 %101

102:                                              ; preds = %90
  br label %107

103:                                              ; preds = %60
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %3, align 8
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %103, %102
  br label %112

108:                                              ; preds = %55
  %109 = load i32, i32* @stderr, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %108, %107
  br label %113

113:                                              ; preds = %112, %51
  br label %114

114:                                              ; preds = %113, %37
  br label %121

115:                                              ; preds = %14
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @perror(i8* %116)
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %115, %114
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @fclose(i32* %122)
  br label %128

124:                                              ; preds = %2
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @free(i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
