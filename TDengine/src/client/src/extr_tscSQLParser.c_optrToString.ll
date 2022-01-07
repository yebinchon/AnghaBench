; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_optrToString.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_optrToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"LIKE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @optrToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optrToString(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %79 [
    i32 135, label %14
    i32 137, label %24
    i32 131, label %34
    i32 133, label %44
    i32 136, label %47
    i32 138, label %50
    i32 130, label %53
    i32 132, label %56
    i32 128, label %59
    i32 139, label %62
    i32 129, label %65
    i32 134, label %68
  ]

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  store i32 %17, i32* %20, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %21, align 8
  br label %81

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %31, align 8
  br label %81

34:                                               ; preds = %2
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %37, i32* %40, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %41, align 8
  br label %81

44:                                               ; preds = %2
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  store i8 60, i8* %46, align 1
  br label %81

47:                                               ; preds = %2
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  store i8 62, i8* %49, align 1
  br label %81

50:                                               ; preds = %2
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  store i8 61, i8* %52, align 1
  br label %81

53:                                               ; preds = %2
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  store i8 43, i8* %55, align 1
  br label %81

56:                                               ; preds = %2
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  store i8 45, i8* %58, align 1
  br label %81

59:                                               ; preds = %2
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  store i8 42, i8* %61, align 1
  br label %81

62:                                               ; preds = %2
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  store i8 47, i8* %64, align 1
  br label %81

65:                                               ; preds = %2
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  store i8 37, i8* %67, align 1
  br label %81

68:                                               ; preds = %2
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %75, align 8
  br label %81

79:                                               ; preds = %2
  %80 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %68, %65, %62, %59, %56, %53, %50, %47, %44, %34, %24, %14
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %82, align 8
  %85 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %79
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
