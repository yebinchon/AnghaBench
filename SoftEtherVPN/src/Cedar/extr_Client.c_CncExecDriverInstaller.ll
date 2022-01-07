; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncExecDriverInstaller.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncExecDriverInstaller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"exec_driver_installer\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CncExecDriverInstaller(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32* (...) @CncConnect()
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = call i32* (...) @NewPack()
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @PackAddStr(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @PackAddStr(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @SendPack(i32* %18, i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @FreePack(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @RecvPack(i32* %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @Disconnect(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ReleaseSock(i32* %30)
  store i32 0, i32* %2, align 4
  br label %42

32:                                               ; preds = %11
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PackGetBool(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @FreePack(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @Disconnect(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ReleaseSock(i32* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %27, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @CncConnect(...) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @SendPack(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @RecvPack(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @PackGetBool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
