; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3GenerateMacAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3GenerateMacAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3GenerateMacAddress(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load i32, i32* @SHA1_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %64

14:                                               ; preds = %1
  %15 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @StrLen(i32* %26)
  %28 = call i32 @WriteBuf(%struct.TYPE_10__* %16, i32* %21, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @StrLen(i32* %35)
  %37 = call i32 @WriteBuf(%struct.TYPE_10__* %29, i32* %32, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = call i32 @WriteBuf(%struct.TYPE_10__* %38, i32* %40, i32 4)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @GenMacAddress(i32* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @Sha0(i32* %10, i32 %48, i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = call i32 @Copy(i32* %56, i32* %10, i32 4)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 163, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = call i32 @FreeBuf(%struct.TYPE_10__* %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %14, %13
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_10__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @StrLen(i32*) #2

declare dso_local i32 @GenMacAddress(i32*) #2

declare dso_local i32 @Sha0(i32*, i32, i32) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
