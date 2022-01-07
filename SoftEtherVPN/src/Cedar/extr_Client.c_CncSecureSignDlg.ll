; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncSecureSignDlg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncSecureSignDlg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"secure_sign\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CncSecureSignDlg(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = call i32* (...) @CncConnect()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %53

15:                                               ; preds = %10
  %16 = call i32* (...) @NewPack()
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @PackAddStr(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @OutRpcSecureSign(i32* %19, i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @SendPack(i32* %22, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @FreePack(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @RecvPack(i32* %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %15
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @PackGetBool(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @FreeRpcSecureSign(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @Zero(i32* %39, i32 4)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @InRpcSecureSign(i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @FreePack(i32* %45)
  br label %47

47:                                               ; preds = %44, %15
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @Disconnect(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @ReleaseSock(i32* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %14, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32* @CncConnect(...) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @OutRpcSecureSign(i32*, i32*) #1

declare dso_local i32 @SendPack(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @RecvPack(i32*) #1

declare dso_local i32 @PackGetBool(i32*, i8*) #1

declare dso_local i32 @FreeRpcSecureSign(i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @InRpcSecureSign(i32*, i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
