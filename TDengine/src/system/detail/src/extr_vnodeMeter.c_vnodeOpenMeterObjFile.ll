; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeOpenMeterObjFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeOpenMeterObjFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@TSDB_FILENAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/vnode%d\00", align 1
@tsDirectory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s/vnode%d/meterObj.v%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"file:%s is corrupted, need to restore it first\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to open %s, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vnodeOpenMeterObjFile(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** @tsDirectory, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i8*, i8*, i8*, i32, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = call i64 @stat(i8* %12, %struct.stat* %7)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load i8*, i8** @tsDirectory, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, i8*, i8*, i32, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %21, i32 %22)
  %24 = call i64 @stat(i8* %12, %struct.stat* %7)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %47

27:                                               ; preds = %19
  %28 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @vnodeCheckFileIntegrity(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 (i8*, i8*, ...) @dError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %12)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = call i32 @exit(i32 1) #4
  unreachable

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %27
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, i8*, ...) @dError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %12, i32 %43)
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32*, i32** %4, align 8
  store i32* %46, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %26, %18
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, ...) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @vnodeCheckFileIntegrity(i32*) #2

declare dso_local i32 @dError(i8*, i8*, ...) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
