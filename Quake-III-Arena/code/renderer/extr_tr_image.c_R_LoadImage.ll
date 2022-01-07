; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_LoadImage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".pcx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadImage(i8* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32**, i32*** %6, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %108

20:                                               ; preds = %4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -4
  %26 = call i32 @Q_stricmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %63, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @LoadTGA(i8* %29, i32** %30, i32* %31, i32* %32)
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @MAX_QPATH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %10, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcpy(i8* %41, i8* %42)
  %44 = call i32 @strlen(i8* %41)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %41, i64 %47
  store i8 106, i8* %48, align 1
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %41, i64 %51
  store i8 112, i8* %52, align 1
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %41, i64 %55
  store i8 103, i8* %56, align 1
  %57 = load i32**, i32*** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @LoadJPG(i8* %41, i32** %57, i32* %58, i32* %59)
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %37, %28
  br label %108

63:                                               ; preds = %20
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 -4
  %69 = call i32 @Q_stricmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  %73 = load i32**, i32*** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @LoadPCX32(i8* %72, i32** %73, i32* %74, i32* %75)
  br label %107

77:                                               ; preds = %63
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 -4
  %83 = call i32 @Q_stricmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load i8*, i8** %5, align 8
  %87 = load i32**, i32*** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @LoadBMP(i8* %86, i32** %87, i32* %88, i32* %89)
  br label %106

91:                                               ; preds = %77
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 -4
  %97 = call i32 @Q_stricmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = load i32**, i32*** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @LoadJPG(i8* %100, i32** %101, i32* %102, i32* %103)
  br label %105

105:                                              ; preds = %99, %91
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %71
  br label %108

108:                                              ; preds = %19, %107, %62
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @LoadTGA(i8*, i32**, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @LoadJPG(i8*, i32**, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LoadPCX32(i8*, i32**, i32*, i32*) #1

declare dso_local i32 @LoadBMP(i8*, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
