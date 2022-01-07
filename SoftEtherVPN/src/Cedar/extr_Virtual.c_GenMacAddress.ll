; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_GenMacAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_GenMacAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenMacAddress(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @SHA1_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %57

16:                                               ; preds = %1
  %17 = call i32 (...) @SystemTime64()
  store i32 %17, i32* %4, align 4
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %19 = call i32 @Rand(i32* %18, i32 128)
  %20 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 @WriteBuf(%struct.TYPE_5__* %21, i32* %4, i32 4)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %25 = call i32 @WriteBuf(%struct.TYPE_5__* %23, i32* %24, i32 128)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Sha0(i32* %12, i32 %28, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 94, i32* %34, align 4
  %35 = getelementptr inbounds i32, i32* %12, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds i32, i32* %12, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %12, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %12, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %12, i64 4
  %52 = load i32, i32* %51, align 16
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = call i32 @FreeBuf(%struct.TYPE_5__* %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %16, %15
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %61 [
    i32 0, label %60
    i32 1, label %60
  ]

60:                                               ; preds = %57, %57
  ret void

61:                                               ; preds = %57
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SystemTime64(...) #2

declare dso_local i32 @Rand(i32*, i32) #2

declare dso_local %struct.TYPE_5__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_5__*, i32*, i32) #2

declare dso_local i32 @Sha0(i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
