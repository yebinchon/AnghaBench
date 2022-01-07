; ModuleID = '/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_rmtree.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_rmtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ct: unlink: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ct: opendir\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ct: path %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ct: rmdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rmtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmtree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @unlink(i8* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @errno, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  br label %90

19:                                               ; preds = %14
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @opendir(i8* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @ENOTDIR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %36

34:                                               ; preds = %25
  %35 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %90

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %58, %57, %40
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.dirent* @readdir(i32* %42)
  store %struct.dirent* %43, %struct.dirent** %6, align 8
  %44 = icmp ne %struct.dirent* %43, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load %struct.dirent*, %struct.dirent** %6, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.dirent*, %struct.dirent** %6, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  br label %41

58:                                               ; preds = %51
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = add nsw i32 %60, 1
  %62 = load %struct.dirent*, %struct.dirent** %6, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %61, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %8, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %9, align 8
  %72 = load i8*, i8** %2, align 8
  %73 = load %struct.dirent*, %struct.dirent** %6, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %72, i8* %75)
  call void @rmtree(i8* %71)
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %41

78:                                               ; preds = %41
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @closedir(i32* %79)
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @rmdir(i8* %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @stderr, align 4
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %18, %36, %85, %78
  ret void
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
