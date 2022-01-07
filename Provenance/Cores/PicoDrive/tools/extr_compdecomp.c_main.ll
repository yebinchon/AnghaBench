; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_compdecomp.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_compdecomp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"usage: %s <0|1> <infile> <outfile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MEM_LIMIT = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"result %i, size %i -> %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %3, align 4
  br label %119

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 2, i32* %3, align 4
  br label %119

28:                                               ; preds = %20
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @SEEK_END, align 4
  %31 = call i32 @fseek(i32* %29, i32 0, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @ftell(i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @SEEK_SET, align 4
  %36 = call i32 @fseek(i32* %34, i32 0, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @malloc(i32 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 3, i32* %3, align 4
  br label %119

42:                                               ; preds = %28
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fread(i8* %43, i32 1, i32 %44, i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @atoi(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %75, %54
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %57, 16
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @MEM_LIMIT, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 4, i32* %3, align 4
  br label %119

63:                                               ; preds = %56
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i8* @realloc(i8* %64, i32 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 5, i32* %3, align 4
  br label %119

70:                                               ; preds = %63
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @uncompress(i8* %71, i32* %12, i8* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @Z_BUF_ERROR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %56, label %79

79:                                               ; preds = %75
  br label %94

80:                                               ; preds = %42
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1024
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i8* @malloc(i32 %83)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 5, i32* %3, align 4
  br label %119

88:                                               ; preds = %80
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %93 = call i32 @compress2(i8* %89, i32* %12, i8* %90, i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %88, %79
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @Z_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32* @fopen(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %102, i32** %9, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 6, i32* %3, align 4
  br label %119

106:                                              ; preds = %98
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @fwrite(i8* %107, i32 1, i32 %108, i32* %109)
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @fclose(i32* %111)
  br label %113

113:                                              ; preds = %106, %94
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %113, %105, %87, %69, %62, %41, %27, %15
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @uncompress(i8*, i32*, i8*, i32) #1

declare dso_local i32 @compress2(i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
