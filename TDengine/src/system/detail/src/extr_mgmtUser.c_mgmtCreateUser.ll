; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtUser.c_mgmtCreateUser.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtUser.c_mgmtCreateUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i32 }

@userSdb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"user:%s is already there\00", align 1
@TSDB_CODE_USER_ALREADY_EXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_CODE_SDB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtCreateUser(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = call i32 @mgmtCheckUserLimit(%struct.TYPE_10__* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %93

16:                                               ; preds = %3
  %17 = load i32, i32* @userSdb, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @sdbGetRow(i32 %17, i8* %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @mWarn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @TSDB_CODE_USER_ALREADY_EXIST, align 4
  store i32 %26, i32* %4, align 4
  br label %93

27:                                               ; preds = %16
  %28 = call i32 (...) @mgmtCheckUserGrant()
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %93

33:                                               ; preds = %27
  %34 = call %struct.TYPE_9__* @malloc(i32 32)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %8, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i32 @memset(%struct.TYPE_9__* %35, i32 0, i32 32)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @taosEncryptPass(i32* %43, i32 %45, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcpy(i8* %52, i8* %55)
  %57 = call i32 (...) @taosGetTimestampMs()
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %33
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %72, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69, %33
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %69
  %82 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @userSdb, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = call i64 @sdbInsertRow(i32 %83, %struct.TYPE_9__* %84, i32 0)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = call i32 @tfree(%struct.TYPE_9__* %88)
  %90 = load i32, i32* @TSDB_CODE_SDB_ERROR, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %31, %23, %14
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @mgmtCheckUserLimit(%struct.TYPE_10__*) #1

declare dso_local i64 @sdbGetRow(i32, i8*) #1

declare dso_local i32 @mWarn(i8*, i8*) #1

declare dso_local i32 @mgmtCheckUserGrant(...) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @taosEncryptPass(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @taosGetTimestampMs(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sdbInsertRow(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
