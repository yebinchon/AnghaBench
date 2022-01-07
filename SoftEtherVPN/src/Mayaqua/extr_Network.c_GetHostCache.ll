; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostCache.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@HostCacheList = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetHostCache(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %50

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @HostCacheList, align 4
  %19 = call i32 @LockList(i32 %18)
  %20 = call i32 @Zero(%struct.TYPE_5__* %9, i32 16)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @Copy(i32* %21, i32* %22, i32 4)
  %24 = load i32, i32* @HostCacheList, align 4
  %25 = call %struct.TYPE_5__* @Search(i32 %24, %struct.TYPE_5__* %9)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %17
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @IsEmptyStr(i8* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @StrCpy(i8* %35, i32 %36, i8* %39)
  br label %45

41:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @StrCpy(i8* %42, i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* @HostCacheList, align 4
  %48 = call i32 @UnlockList(i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @Search(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
