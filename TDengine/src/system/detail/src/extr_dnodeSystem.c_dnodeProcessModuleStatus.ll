; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeProcessModuleStatus.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeProcessModuleStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32, i32 (...)* }

@tsDnodeStopping = common dso_local global i64 0, align 8
@tsModuleStatus = common dso_local global i32 0, align 4
@TSDB_MOD_MAX = common dso_local global i32 0, align 4
@tsModule = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"module:%s is stopped on this node\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"module:%s is started on this node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnodeProcessModuleStatus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @tsDnodeStopping, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %98

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @tsModuleStatus, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %92, %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TSDB_MOD_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = icmp ne i32 (...)* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dPrint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = call i32 (...) %54()
  br label %56

56:                                               ; preds = %41, %33
  br label %57

57:                                               ; preds = %56, %30
  br label %91

58:                                               ; preds = %19
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (...)*, i32 (...)** %69, align 8
  %71 = icmp ne i32 (...)* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dPrint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  br label %87

87:                                               ; preds = %72, %64
  br label %88

88:                                               ; preds = %87, %61
  br label %90

89:                                               ; preds = %58
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %57
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %15

95:                                               ; preds = %15
  %96 = load i8*, i8** %2, align 8
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* @tsModuleStatus, align 4
  br label %98

98:                                               ; preds = %95, %10
  ret void
}

declare dso_local i32 @dPrint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
