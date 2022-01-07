; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_AddHostCache.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_AddHostCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }

@HostCacheList = common dso_local global i32* null, align 8
@EXPIRES_HOSTNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddHostCache(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %101

17:                                               ; preds = %13
  %18 = call i32 (...) @IsNetworkNameCacheEnabled()
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %101

21:                                               ; preds = %17
  %22 = load i32*, i32** @HostCacheList, align 8
  %23 = call i32 @LockList(i32* %22)
  %24 = call i32 @Zero(%struct.TYPE_10__* %5, i32 16)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @Copy(i32* %25, i32* %26, i32 4)
  %28 = load i32*, i32** @HostCacheList, align 8
  %29 = call %struct.TYPE_10__* @Search(i32* %28, %struct.TYPE_10__* %5)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = call %struct.TYPE_10__* @ZeroMalloc(i32 16)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @Copy(i32* %35, i32* %36, i32 4)
  %38 = load i32*, i32** @HostCacheList, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i32 @Add(i32* %38, %struct.TYPE_10__* %39)
  br label %41

41:                                               ; preds = %32, %21
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @StrCpy(i32 %44, i32 4, i8* %45)
  %47 = call i64 (...) @Tick64()
  %48 = load i64, i64* @EXPIRES_HOSTNAME, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = call i32* @NewListFast(i32* null)
  store i32* %52, i32** %8, align 8
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %72, %41
  %54 = load i64, i64* %7, align 8
  %55 = load i32*, i32** @HostCacheList, align 8
  %56 = call i64 @LIST_NUM(i32* %55)
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load i32*, i32** @HostCacheList, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call %struct.TYPE_10__* @LIST_DATA(i32* %59, i64 %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 (...) @Tick64()
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = call i32 @Add(i32* %68, %struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %53

75:                                               ; preds = %53
  store i64 0, i64* %7, align 8
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i64, i64* %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 @LIST_NUM(i32* %78)
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call %struct.TYPE_10__* @LIST_DATA(i32* %82, i64 %83)
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %10, align 8
  %85 = load i32*, i32** @HostCacheList, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = call i64 @Delete(i32* %85, %struct.TYPE_10__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = call i32 @Free(%struct.TYPE_10__* %90)
  br label %92

92:                                               ; preds = %89, %81
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %7, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %7, align 8
  br label %76

96:                                               ; preds = %76
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @ReleaseList(i32* %97)
  %99 = load i32*, i32** @HostCacheList, align 8
  %100 = call i32 @UnlockList(i32* %99)
  br label %101

101:                                              ; preds = %96, %20, %16
  ret void
}

declare dso_local i32 @IsNetworkNameCacheEnabled(...) #1

declare dso_local i32 @LockList(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @Search(i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_10__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @Delete(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @Free(%struct.TYPE_10__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
