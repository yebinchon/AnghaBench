; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_CitusRemoveDirectory.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_CitusRemoveDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.stat = type { i32 }
%struct.dirent = type { i8* }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CitusRemoveDirectory(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @stat(i8* %13, %struct.stat* %3)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %121

22:                                               ; preds = %17
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 (...) @errcode_for_file_access()
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @ereport(i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %1
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %95

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FileIsLink(i8* %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %95, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  store %struct.dirent* null, %struct.dirent** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32* @AllocateDir(i8* %48)
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 (...) @errcode_for_file_access()
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32*, i32** %8, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call %struct.dirent* @ReadDir(i32* %59, i8* %60)
  store %struct.dirent* %61, %struct.dirent** %7, align 8
  br label %62

62:                                               ; preds = %88, %58
  %63 = load %struct.dirent*, %struct.dirent** %7, align 8
  %64 = icmp ne %struct.dirent* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = load %struct.dirent*, %struct.dirent** %7, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @MAXPGPATH, align 4
  %71 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @MAXPGPATH, align 4
  %76 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %65
  br label %88

79:                                               ; preds = %73
  %80 = call %struct.TYPE_6__* (...) @makeStringInfo()
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %10, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @appendStringInfo(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  call void @CitusRemoveDirectory(%struct.TYPE_6__* %85)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = call i32 @FreeStringInfo(%struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %79, %78
  %89 = load i32*, i32** %8, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call %struct.dirent* @ReadDir(i32* %89, i8* %90)
  store %struct.dirent* %91, %struct.dirent** %7, align 8
  br label %62

92:                                               ; preds = %62
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @FreeDir(i32* %93)
  br label %95

95:                                               ; preds = %92, %36, %31
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISDIR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @rmdir(i8* %103)
  store i32 %104, i32* %4, align 4
  br label %110

105:                                              ; preds = %95
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @unlink(i8* %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32, i32* @ERROR, align 4
  %115 = call i32 (...) @errcode_for_file_access()
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  %120 = call i32 @ereport(i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %21, %113, %110
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @FileIsLink(i8*, i32) #1

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i8*, i8*, i8*) #1

declare dso_local i32 @FreeStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @FreeDir(i32*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
