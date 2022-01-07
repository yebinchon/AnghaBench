; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadCertList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadCertList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"X509\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadCertList(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
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
  br label %61

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @LockList(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_4__* @CfgEnumFolderToTokenList(i32* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %53, %16
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @CfgGetFolder(i32* %28, i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @CfgGetBuf(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %27
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @BufToX(i32* %41, i32 0)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @Insert(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @FreeBuf(i32* %50)
  br label %52

52:                                               ; preds = %49, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = call i32 @FreeToken(%struct.TYPE_4__* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @UnlockList(i32* %59)
  br label %61

61:                                               ; preds = %56, %15
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local %struct.TYPE_4__* @CfgEnumFolderToTokenList(i32*) #1

declare dso_local i32* @CfgGetFolder(i32*, i32) #1

declare dso_local i32* @CfgGetBuf(i32*, i8*) #1

declare dso_local i32* @BufToX(i32*, i32) #1

declare dso_local i32 @Insert(i32*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
