; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledGetNatStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledGetNatStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiCalledGetNatStatus(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = call i32* (...) @NewPack()
  store i32* %23, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = trunc i64 %14 to i32
  %27 = call i32 @PackGetStr(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32* (...) @NewPack()
  store i32* %30, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

31:                                               ; preds = %24
  %32 = call i32 @Zero(i32* %8, i32 4)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LockHubList(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_9__* @GetHub(i32 %39, i8* %16)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %10, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @UnlockHubList(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %31
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @Lock(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NtGetStatus(i32 %61, i32* %8)
  br label %63

63:                                               ; preds = %56, %47
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @Unlock(i32 %66)
  br label %68

68:                                               ; preds = %63, %31
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = call i32 @ReleaseHub(%struct.TYPE_9__* %69)
  %71 = call i32* (...) @NewPack()
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @OutRpcNatStatus(i32* %72, i32* %8)
  %74 = call i32 @FreeRpcNatStatus(i32* %8)
  %75 = load i32*, i32** %9, align 8
  store i32* %75, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %68, %29, %22
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32*, i32** %3, align 8
  ret i32* %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @LockHubList(i32) #2

declare dso_local %struct.TYPE_9__* @GetHub(i32, i8*) #2

declare dso_local i32 @UnlockHubList(i32) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @NtGetStatus(i32, i32*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_9__*) #2

declare dso_local i32 @OutRpcNatStatus(i32*, i32*) #2

declare dso_local i32 @FreeRpcNatStatus(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
