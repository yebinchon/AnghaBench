; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosThreadToOpenNewFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosThreadToOpenNewFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LOG_FILE_NAME_LEN = common dso_local global i32 0, align 4
@taosLogFlag = common dso_local global i32 0, align 4
@taosLogLines = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@taosLogName = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@logHandle = common dso_local global %struct.TYPE_2__* null, align 8
@openInProgress = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"new log file is opened!!!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosThreadToOpenNewFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @LOG_FILE_NAME_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @taosLogFlag, align 4
  %12 = xor i32 %11, 1
  store i32 %12, i32* @taosLogFlag, align 4
  store i64 0, i64* @taosLogLines, align 8
  %13 = load i8*, i8** @taosLogName, align 8
  %14 = load i32, i32* @taosLogFlag, align 4
  %15 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = call i32 @umask(i32 0)
  %17 = load i32, i32* @O_WRONLY, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_TRUNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IRWXU, align 4
  %23 = load i32, i32* @S_IRWXG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @S_IRWXO, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %10, i32 %21, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @taosLockFile(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i32 @lseek(i32 %30, i32 0, i32 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @logHandle, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @logHandle, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i64 0, i64* @taosLogLines, align 8
  store i64 0, i64* @openInProgress, align 8
  %39 = call i32 @pPrint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @taosCloseLogByFd(i32 %40)
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @taosLockFile(i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @pPrint(i8*) #2

declare dso_local i32 @taosCloseLogByFd(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
