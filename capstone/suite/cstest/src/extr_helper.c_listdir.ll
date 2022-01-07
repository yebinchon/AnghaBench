; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_helper.c_listdir.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_helper.c_listdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@DT_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listdir(i8* %0, i8*** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @opendir(i8* %11)
  store i32* %12, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %100

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %96, %38, %15
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.dirent* @readdir(i32* %17)
  store %struct.dirent* %18, %struct.dirent** %8, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %97

20:                                               ; preds = %16
  %21 = load %struct.dirent*, %struct.dirent** %8, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DT_DIR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.dirent*, %struct.dirent** %8, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.dirent*, %struct.dirent** %8, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %16

39:                                               ; preds = %32
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.dirent*, %struct.dirent** %8, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @snprintf(i8* %40, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %44)
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %47 = load i8***, i8**** %5, align 8
  %48 = load i32*, i32** %6, align 8
  call void @listdir(i8* %46, i8*** %47, i32* %48)
  br label %96

49:                                               ; preds = %20
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i8***, i8**** %5, align 8
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call i64 @realloc(i8** %53, i32 %58)
  %60 = inttoptr i64 %59 to i8**
  %61 = load i8***, i8**** %5, align 8
  store i8** %60, i8*** %61, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 %63, 1
  %65 = load %struct.dirent*, %struct.dirent** %8, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %64, %68
  %70 = add nsw i32 %69, 10
  %71 = sext i32 %70 to i64
  %72 = mul i64 1, %71
  %73 = trunc i64 %72 to i32
  %74 = call i64 @malloc(i32 %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = load i8***, i8**** %5, align 8
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %75, i8** %80, align 8
  %81 = load i8***, i8**** %5, align 8
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load %struct.dirent*, %struct.dirent** %8, align 8
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %90)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %49, %39
  br label %16

97:                                               ; preds = %16
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @closedir(i32* %98)
  br label %100

100:                                              ; preds = %97, %14
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
