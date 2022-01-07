; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtTrafficPrintProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtTrafficPrintProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@CONSOLE_LOCAL = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PtTrafficPrintProc(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %49

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CONSOLE_LOCAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @Lock(i32 %25)
  %27 = load i32, i32* @MAX_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %31 = mul nuw i64 4, %28
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @UniStrCpy(i32* %30, i32 %32, i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @UniEndWith(i32* %35, i8* bitcast ([2 x i32]* @.str to i8*))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = mul nuw i64 4, %28
  %40 = trunc i64 %39 to i32
  %41 = call i32 @UniStrCat(i32* %30, i32 %40, i8* bitcast ([2 x i32]* @.str to i8*))
  br label %42

42:                                               ; preds = %38, %22
  %43 = call i32 @UniPrint(i8* bitcast ([3 x i32]* @.str.1 to i8*), i32* %30)
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Unlock(i32 %47)
  br label %49

49:                                               ; preds = %13, %42, %14
  ret void
}

declare dso_local i32 @Lock(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @UniEndWith(i32*, i8*) #1

declare dso_local i32 @UniStrCat(i32*, i32, i8*) #1

declare dso_local i32 @UniPrint(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
