; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDisconnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@ERR_ACCOUNT_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_ACCOUNT_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LC_DISCONNECT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtDisconnect(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = icmp eq %struct.TYPE_18__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %105

18:                                               ; preds = %14
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LockList(i32 %21)
  %23 = call %struct.TYPE_20__* @ZeroMalloc(i32 4)
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @UniStrCpy(i32 %28, i32 4, i32 %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_19__* @Search(i32 %35, %struct.TYPE_19__* %9)
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %10, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %38 = icmp eq %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %18
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @UnlockList(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = call i32 @Free(%struct.TYPE_20__* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = load i32, i32* @ERR_ACCOUNT_NOT_FOUND, align 4
  %49 = call i32 @CiSetError(%struct.TYPE_18__* %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %105

50:                                               ; preds = %18
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = call i32 @Free(%struct.TYPE_20__* %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @Lock(i32 %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = icmp eq %struct.TYPE_16__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = load i32, i32* @ERR_ACCOUNT_INACTIVE, align 4
  %65 = call i32 @CiSetError(%struct.TYPE_18__* %63, i32 %64)
  br label %76

66:                                               ; preds = %50
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %11, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AddRef(i32 %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %75, align 8
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %66, %62
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @Unlock(i32 %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @UnlockList(i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %86 = icmp ne %struct.TYPE_16__* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CLog(%struct.TYPE_18__* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = call i32 @StopSession(%struct.TYPE_16__* %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = call i32 @ReleaseSession(%struct.TYPE_16__* %95)
  br label %97

97:                                               ; preds = %87, %76
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = call i32 @CiNotify(%struct.TYPE_18__* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %39, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @Search(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_20__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @CLog(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @StopSession(%struct.TYPE_16__*) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_16__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
