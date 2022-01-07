; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCommit.c_vnodeInitCommit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCommit.c_vnodeInitCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double, i64, i64, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { double }

@vnodeList = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s/vnode%d/db/submit%d.log\00", align 1
@tsDirectory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"%s/vnode%d/db/submit%d.olog\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"vid:%d, commit log init failed\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"vid:%d, commit log is initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeInitCommit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vnodeList, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i64 %9
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 8
  %13 = call i32 @pthread_mutex_init(i32* %12, i32* null)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** @tsDirectory, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** @tsDirectory, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sprintf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fmul double %32, %37
  %39 = fmul double %38, 1.500000e+00
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store double %39, double* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, 0x3FE6666666666666
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store double %45, double* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @vnodeRestoreDataFromLog(i32 %48, i32 %51, i32* %5)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ult i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %111

56:                                               ; preds = %1
  %57 = load i64, i64* %4, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i32 @vnodeCommitToFile(%struct.TYPE_8__* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @remove(i32 %70)
  br label %72

72:                                               ; preds = %67, %56
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @vnodeRestoreDataFromLog(i32 %73, i32 %76, i32* %5)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp ult i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 -1, i32* %2, align 4
  br label %111

81:                                               ; preds = %72
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %111

88:                                               ; preds = %81
  %89 = load i64, i64* %4, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @vnodeOpenCommitLog(i32 %96, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @dError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %2, align 4
  br label %111

103:                                              ; preds = %95
  %104 = load i64, i64* %4, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @dTrace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %100, %87, %80, %55
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @vnodeRestoreDataFromLog(i32, i32, i32*) #1

declare dso_local i32 @vnodeCommitToFile(%struct.TYPE_8__*) #1

declare dso_local i32 @remove(i32) #1

declare dso_local i64 @vnodeOpenCommitLog(i32, i32) #1

declare dso_local i32 @dError(i8*, i32) #1

declare dso_local i32 @dTrace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
