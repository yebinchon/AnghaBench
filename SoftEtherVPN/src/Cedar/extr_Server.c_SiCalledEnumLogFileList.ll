; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledEnumLogFileList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledEnumLogFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiCalledEnumLogFileList(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32* null, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %34

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = trunc i64 %13 to i32
  %25 = call i32 @PackGetStr(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %24)
  %26 = call i32 @Zero(i32* %6, i32 4)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @SiEnumLocalLogFileList(i32* %27, i8* %15, i32* %6)
  %29 = call i32* (...) @NewPack()
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @OutRpcEnumLogFile(i32* %30, i32* %6)
  %32 = call i32 @FreeRpcEnumLogFile(i32* %6)
  %33 = load i32*, i32** %7, align 8
  store i32* %33, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @SiEnumLocalLogFileList(i32*, i8*, i32*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @OutRpcEnumLogFile(i32*, i32*) #2

declare dso_local i32 @FreeRpcEnumLogFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
