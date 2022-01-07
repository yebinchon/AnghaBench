; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_fopen.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_fopen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"http://192.168.7.3/testfile\00", align 1
@FGETSFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"couldn't open fgets output file\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"couldn't url_fopen() %s\0A\00", align 1
@FREADFILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"couldn't open fread output file\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"testfile\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"couldn't url_fopen() testfile\0A\00", align 1
@REWINDFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* @FGETSFILE, align 4
  %20 = call i32* @fopen(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %125

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = call i32* @url_fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @fclose(i32* %33)
  store i32 2, i32* %3, align 4
  br label %125

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %41, %35
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @url_feof(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @url_fgets(i8* %42, i32 256, i32* %43)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %47 = call i64 @strlen(i8* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @fwrite(i8* %45, i32 1, i64 %47, i32* %48)
  br label %36

50:                                               ; preds = %36
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @url_fclose(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i32, i32* @FREADFILE, align 4
  %56 = call i32* @fopen(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %125

61:                                               ; preds = %50
  %62 = call i32* @url_fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @fclose(i32* %67)
  store i32 2, i32* %3, align 4
  br label %125

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %78, %69
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %72 = load i32*, i32** %6, align 8
  %73 = call i64 @url_fread(i8* %71, i32 1, i32 256, i32* %72)
  store i64 %73, i64* %8, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %75 = load i64, i64* %8, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @fwrite(i8* %74, i32 1, i64 %75, i32* %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %70, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @url_fclose(i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @fclose(i32* %84)
  %86 = load i32, i32* @REWINDFILE, align 4
  %87 = call i32* @fopen(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %125

92:                                               ; preds = %81
  %93 = call i32* @url_fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @fclose(i32* %98)
  store i32 2, i32* %3, align 4
  br label %125

100:                                              ; preds = %92
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %102 = load i32*, i32** %6, align 8
  %103 = call i64 @url_fread(i8* %101, i32 1, i32 256, i32* %102)
  store i64 %103, i64* %8, align 8
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %105 = load i64, i64* %8, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @fwrite(i8* %104, i32 1, i64 %105, i32* %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @url_rewind(i32* %108)
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 10, i8* %110, align 16
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @fwrite(i8* %111, i32 1, i64 1, i32* %112)
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %115 = load i32*, i32** %6, align 8
  %116 = call i64 @url_fread(i8* %114, i32 1, i32 256, i32* %115)
  store i64 %116, i64* %8, align 8
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %118 = load i64, i64* %8, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @fwrite(i8* %117, i32 1, i64 %118, i32* %119)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @url_fclose(i32* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @fclose(i32* %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %100, %96, %90, %65, %59, %30, %23
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @url_fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @url_feof(i32*) #1

declare dso_local i32 @url_fgets(i8*, i32, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @url_fclose(i32*) #1

declare dso_local i64 @url_fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @url_rewind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
