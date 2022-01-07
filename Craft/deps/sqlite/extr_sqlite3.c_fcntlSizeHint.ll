; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fcntlSizeHint.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fcntlSizeHint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i8*, i32 }
%struct.stat = type { i32, i32 }

@SQLITE_IOERR_FSTAT = common dso_local global i32 0, align 4
@errno = common dso_local global i8* null, align 8
@SQLITE_IOERR_TRUNCATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_IOERR_WRITE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @fcntlSizeHint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcntlSizeHint(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @osFstat(i32 %19, %struct.stat* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SQLITE_IOERR_FSTAT, align 4
  store i32 %23, i32* %3, align 4
  br label %131

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @robust_ftruncate(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load i8*, i8** @errno, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @SQLITE_IOERR_TRUNCATE, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @unixLogError(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %3, align 4
  br label %131

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %63, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %85, %61
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @seekAndWrite(%struct.TYPE_5__* %78, i32 %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @SQLITE_IOERR_WRITE, align 4
  store i32 %84, i32* %3, align 4
  br label %131

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %73

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %24
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %102
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i64 @robust_ftruncate(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i8*, i8** @errno, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @SQLITE_IOERR_TRUNCATE, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @unixLogError(i32 %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %121)
  store i32 %122, i32* %3, align 4
  br label %131

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @unixMapfile(%struct.TYPE_5__* %125, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %131

129:                                              ; preds = %96, %91
  %130 = load i32, i32* @SQLITE_OK, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %124, %114, %83, %52, %22
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @osFstat(i32, %struct.stat*) #1

declare dso_local i64 @robust_ftruncate(i32, i32) #1

declare dso_local i32 @unixLogError(i32, i8*, i32) #1

declare dso_local i32 @seekAndWrite(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @unixMapfile(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
