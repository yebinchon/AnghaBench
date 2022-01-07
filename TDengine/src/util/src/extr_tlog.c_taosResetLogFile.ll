; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosResetLogFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosResetLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_FILE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@taosLogName = common dso_local global i8* null, align 8
@taosLogFlag = common dso_local global i32 0, align 4
@taosLogMaxLines = common dso_local global i64 0, align 8
@taosLogLines = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"==================================\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"   reset log file \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosResetLogFile() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @LOG_FILE_NAME_LEN, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i8, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = load i8*, i8** @taosLogName, align 8
  %8 = load i32, i32* @taosLogFlag, align 4
  %9 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8)
  %10 = load i64, i64* @taosLogMaxLines, align 8
  %11 = add nsw i64 %10, 10
  store i64 %11, i64* @taosLogLines, align 8
  %12 = call i32 (...) @taosOpenNewLogFile()
  %13 = call i32 @remove(i8* %6)
  %14 = call i32 @pPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @pPrint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %16)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @taosOpenNewLogFile(...) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @pPrint(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
