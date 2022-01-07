; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_NewIkeClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_NewIkeClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32, i32, i8*, i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"New IKE_CLIENT: %p: %s:%u -> %s:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"LI_NEW_IKE_CLIENT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @NewIkeClient(%struct.TYPE_9__* %0, i32* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32, %29, %26, %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %16, align 4
  br label %93

39:                                               ; preds = %35
  %40 = call %struct.TYPE_10__* @ZeroMalloc(i32 56)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 8
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 7
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @Copy(i32* %48, i32* %49, i32 4)
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 5
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @Copy(i32* %55, i32* %56, i32 4)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @Copy(i32* %59, i32* %60, i32 4)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @Copy(i32* %63, i32* %64, i32 4)
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = trunc i64 %18 to i32
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @IPToStr(i8* %20, i32 %79, i32* %80)
  %82 = trunc i64 %22 to i32
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @IPToStr(i8* %23, i32 %82, i32* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %85, i8* %20, i8* %86, i8* %23, i8* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = call i32 @IPsecLog(%struct.TYPE_9__* %89, %struct.TYPE_10__* %90, i32* null, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %39, %38
  %94 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @Debug(i8*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @IPsecLog(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
