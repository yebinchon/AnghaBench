; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Object.c_CheckDeadLock.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Object.c_CheckDeadLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error: CheckDeadLock() Failed: %s\0A\00", align 1
@CheckDeadLockThread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckDeadLock(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = trunc i64 %13 to i32
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @Format(i8* %15, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = call i32 @Zero(%struct.TYPE_4__* %7, i32 16)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @CheckDeadLockThread, align 4
  %34 = call i32* @NewThread(i32 %33, %struct.TYPE_4__* %7)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @WaitThreadInit(i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WaitThread(i32* %37, i32 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @AbortExitEx(i8* %15)
  br label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @INFINITE, align 4
  %50 = call i32 @WaitThread(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %45
  br label %52

52:                                               ; preds = %51, %23
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ReleaseThread(i32* %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %18
  %56 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #2

declare dso_local i32* @NewThread(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @WaitThreadInit(i32*) #2

declare dso_local i32 @WaitThread(i32*, i32) #2

declare dso_local i32 @AbortExitEx(i8*) #2

declare dso_local i32 @ReleaseThread(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
