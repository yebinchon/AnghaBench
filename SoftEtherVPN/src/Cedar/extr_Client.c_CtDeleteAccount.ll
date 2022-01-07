; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDeleteAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDeleteAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_ACCOUNT_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_ACCOUNT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"LC_DELETE_ACCOUNT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtDeleteAccount(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = icmp eq %struct.TYPE_17__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %112

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  %25 = call i32 @CiSetError(%struct.TYPE_17__* %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %112

26:                                               ; preds = %17
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @LockList(i32 %29)
  %31 = call %struct.TYPE_19__* @ZeroMalloc(i32 4)
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @UniStrCpy(i32 %36, i32 4, i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_18__* @Search(i32 %43, %struct.TYPE_18__* %9)
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %10, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %46 = icmp eq %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %26
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @UnlockList(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = call i32 @Free(%struct.TYPE_19__* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = load i32, i32* @ERR_ACCOUNT_NOT_FOUND, align 4
  %57 = call i32 @CiSetError(%struct.TYPE_17__* %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %112

58:                                               ; preds = %26
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = call i32 @Free(%struct.TYPE_19__* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @Lock(i32 %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @Unlock(i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @UnlockList(i32 %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = load i32, i32* @ERR_ACCOUNT_ACTIVE, align 4
  %81 = call i32 @CiSetError(%struct.TYPE_17__* %79, i32 %80)
  store i32 0, i32* %4, align 4
  br label %112

82:                                               ; preds = %58
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = call i32 @Delete(i32 %85, %struct.TYPE_18__* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @Unlock(i32 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = call i32 @CiFreeAccount(%struct.TYPE_18__* %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CLog(%struct.TYPE_17__* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i32 1, i32* %8, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @UnlockList(i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %82
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = call i32 @CiSaveConfigurationFile(%struct.TYPE_17__* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = call i32 @CiNotify(%struct.TYPE_17__* %108)
  br label %110

110:                                              ; preds = %105, %82
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %70, %47, %22, %16
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @CiSetError(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_19__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @Search(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_19__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @CiFreeAccount(%struct.TYPE_18__*) #1

declare dso_local i32 @CLog(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_17__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
