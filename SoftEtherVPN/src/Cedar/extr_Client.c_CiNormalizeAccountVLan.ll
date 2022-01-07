; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiNormalizeAccountVLan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiNormalizeAccountVLan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiNormalizeAccountVLan(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = icmp eq %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %84

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = call i8* @CiGetFirstVLan(%struct.TYPE_12__* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %10
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LockList(i32 %18)
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %64, %15
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @LIST_NUM(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call %struct.TYPE_13__* @LIST_DATA(i32 %30, i64 %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @Lock(i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %27
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CiIsVLan(%struct.TYPE_12__* %42, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @StrCpy(i32 %55, i32 4, i8* %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %41
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @Unlock(i32 %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %20

67:                                               ; preds = %20
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @UnlockList(i32 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @Free(i8* %72)
  br label %74

74:                                               ; preds = %67, %10
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = call i32 @CiNotify(%struct.TYPE_12__* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = call i32 @CiSendGlobalPulse(%struct.TYPE_12__* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = call i32 @CiSaveConfigurationFile(%struct.TYPE_12__* %82)
  br label %84

84:                                               ; preds = %9, %77, %74
  ret void
}

declare dso_local i8* @CiGetFirstVLan(%struct.TYPE_12__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @CiIsVLan(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_12__*) #1

declare dso_local i32 @CiSendGlobalPulse(%struct.TYPE_12__*) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
