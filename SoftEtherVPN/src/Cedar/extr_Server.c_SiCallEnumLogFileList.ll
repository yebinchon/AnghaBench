; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallEnumLogFileList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallEnumLogFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"enumlogfilelist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiCallEnumLogFileList(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %41

17:                                               ; preds = %13
  %18 = call i32* (...) @NewPack()
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @OutRpcEnumLogFile(i32* %19, i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @FreeRpcEnumLogFile(i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @Zero(i32* %24, i32 4)
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @PackAddStr(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @SiCallTask(i32* %29, i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %41

35:                                               ; preds = %17
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @InRpcEnumLogFile(i32* %36, i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @FreePack(i32* %39)
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %34, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @OutRpcEnumLogFile(i32*, i32*) #1

declare dso_local i32 @FreeRpcEnumLogFile(i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32* @SiCallTask(i32*, i32*, i8*) #1

declare dso_local i32 @InRpcEnumLogFile(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
