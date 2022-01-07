; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledDeleteIpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledDeleteIpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCalledDeleteIpTable(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %9, align 4
  br label %75

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = trunc i64 %13 to i32
  %25 = call i32 @PackGetStr(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %75

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @PackGetInt(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %30, i64* %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LockHubList(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_7__* @GetHub(i32 %37, i8* %15)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %8, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @UnlockHubList(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = icmp eq %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %75

46:                                               ; preds = %28
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LockList(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %5, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i64 @IsInList(i32 %53, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %46
  %59 = load i64, i64* %5, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %10, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @Delete(i32 %63, i32* %64)
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @Free(i32* %66)
  br label %68

68:                                               ; preds = %58, %46
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @UnlockList(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = call i32 @ReleaseHub(%struct.TYPE_7__* %73)
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %68, %45, %27, %21
  %76 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %9, align 4
  switch i32 %77, label %79 [
    i32 0, label %78
    i32 1, label %78
  ]

78:                                               ; preds = %75, %75
  ret void

79:                                               ; preds = %75
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i64 @PackGetInt(i32*, i8*) #2

declare dso_local i32 @LockHubList(i32) #2

declare dso_local %struct.TYPE_7__* @GetHub(i32, i8*) #2

declare dso_local i32 @UnlockHubList(i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @IsInList(i32, i8*) #2

declare dso_local i32 @Delete(i32, i32*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
