; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteCertList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteCertList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Cert%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"X509\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteCertList(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %54

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @LockList(i32* %17)
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %48, %16
  %20 = load i64, i64* %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @LIST_NUM(i32* %21)
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load i32, i32* @MAX_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %7, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32* @LIST_DATA(i32* %29, i64 %30)
  store i32* %31, i32** %6, align 8
  %32 = trunc i64 %26 to i32
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @Format(i8* %28, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @XToBuf(i32* %35, i32 0)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %24
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @CfgCreateFolder(i32* %40, i8* %28)
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @CfgAddBuf(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @FreeBuf(i32* %44)
  br label %46

46:                                               ; preds = %39, %24
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  br label %48

48:                                               ; preds = %46
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %19

51:                                               ; preds = %19
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @UnlockList(i32* %52)
  br label %54

54:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Format(i8*, i32, i8*, i64) #1

declare dso_local i32* @XToBuf(i32*, i32) #1

declare dso_local i32 @CfgAddBuf(i32, i8*, i32*) #1

declare dso_local i32 @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
