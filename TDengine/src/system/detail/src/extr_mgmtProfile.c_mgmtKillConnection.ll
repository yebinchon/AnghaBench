; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtProfile.c_mgmtKillConnection.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtProfile.c_mgmtKillConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i16, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [32 x i8] c"connection:%s is there, kill it\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"connection:%s is not there\00", align 1
@TSDB_CODE_INVALID_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtKillConnection(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcpy(i8* %13, i8* %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %90

22:                                               ; preds = %2
  %23 = load i8*, i8** %8, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @inet_addr(i8* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @atoi(i8* %28)
  %30 = call signext i16 @htons(i32 %29)
  store i16 %30, i16* %11, align 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %5, align 8
  br label %40

40:                                               ; preds = %64, %22
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i16, i16* %51, align 8
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* %11, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %6, align 8
  br label %63

62:                                               ; preds = %57
  br label %68

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %49, %43
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %5, align 8
  br label %40

68:                                               ; preds = %62, %40
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = icmp eq %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @mTrace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %88)
  store i32 0, i32* %3, align 4
  br label %94

90:                                               ; preds = %86, %21
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @mTrace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @TSDB_CODE_INVALID_CONNECTION, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local signext i16 @htons(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mTrace(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
