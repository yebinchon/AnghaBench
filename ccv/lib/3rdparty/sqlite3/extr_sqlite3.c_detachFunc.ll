; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_detachFunc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_detachFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no such database: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot detach database %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"database %s is locked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @detachFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detachFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @sqlite3_value_text(i32* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_5__* @sqlite3_context_db_handle(i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @UNUSED_PARAMETER(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %24

24:                                               ; preds = %23, %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @sqlite3StrICmp(i32 %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %25

55:                                               ; preds = %50, %25
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @sqlite3_snprintf(i32 128, i8* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %99

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @sqlite3_snprintf(i32 128, i8* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %99

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @sqlite3BtreeIsInReadTrans(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @sqlite3BtreeIsInBackup(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78, %72
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @sqlite3_snprintf(i32 128, i8* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %99

88:                                               ; preds = %78
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @sqlite3BtreeClose(i64 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = call i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_5__* %97)
  br label %103

99:                                               ; preds = %84, %68, %61
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %102 = call i32 @sqlite3_result_error(i32* %100, i8* %101, i32 -1)
  br label %103

103:                                              ; preds = %99, %88
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local %struct.TYPE_5__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @sqlite3BtreeIsInReadTrans(i64) #1

declare dso_local i64 @sqlite3BtreeIsInBackup(i64) #1

declare dso_local i32 @sqlite3BtreeClose(i64) #1

declare dso_local i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
