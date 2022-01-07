; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_GenerateDummyIpAndMark.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_GenerateDummyIpAndMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"20151002\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenerateDummyIpAndMark(i8* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %49

15:                                               ; preds = %11
  %16 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WriteBufInt(%struct.TYPE_10__* %17, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @SHA1_SIZE, align 4
  %23 = call i32 @WriteBuf(%struct.TYPE_10__* %20, i8* %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = call i32 @WriteBufStr(%struct.TYPE_10__* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @NewPRand(i32 %28, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = call i32 @FreeBuf(%struct.TYPE_10__* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = call i32 @GenerateDummyIp(i32* %35, i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = call i32 @GenerateDummyIp(i32* %39, i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @GenerateDummyMark(i32* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @FreePRand(i32* %47)
  br label %49

49:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.TYPE_10__* @NewBuf(...) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @WriteBufStr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32* @NewPRand(i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #1

declare dso_local i32 @GenerateDummyIp(i32*, i32*) #1

declare dso_local i32 @GenerateDummyMark(i32*) #1

declare dso_local i32 @FreePRand(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
