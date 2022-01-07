; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeCreateHeadDataFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeCreateHeadDataFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_FILENAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"vid:%d, fileId:%d, empty header file:%s dataFile:%s lastFile:%s on disk:%s is created \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCreateHeadDataFile(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @vnodeGetDataDir(i32 %28, i32 %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %70

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = call i32 @vnodeCreateDataDirIfNeeded(i32 %35, i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @vnodeGetHeadDataLname(i8* %38, i8* %39, i8* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @vnodeGetHeadDataDname(i8* %21, i8* %24, i8* %27, i32 %44, i32 %45, i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @symlink(i8* %21, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %70

52:                                               ; preds = %34
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @symlink(i8* %24, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %70

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @symlink(i8* %27, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @dTrace(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i8* %65, i8* %66, i8* %67, i8* %68)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %70

70:                                               ; preds = %62, %61, %56, %51, %33
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @vnodeGetDataDir(i32, i32) #2

declare dso_local i32 @vnodeCreateDataDirIfNeeded(i32, i8*) #2

declare dso_local i32 @vnodeGetHeadDataLname(i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @vnodeGetHeadDataDname(i8*, i8*, i8*, i32, i32, i8*) #2

declare dso_local i64 @symlink(i8*, i8*) #2

declare dso_local i32 @dTrace(i8*, i32, i32, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
