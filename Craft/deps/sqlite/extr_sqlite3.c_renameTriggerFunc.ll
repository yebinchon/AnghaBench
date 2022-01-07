; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_renameTriggerFunc.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_renameTriggerFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@TK_SPACE = common dso_local global i32 0, align 4
@TK_DOT = common dso_local global i32 0, align 4
@TK_ON = common dso_local global i32 0, align 4
@TK_WHEN = common dso_local global i32 0, align 4
@TK_FOR = common dso_local global i32 0, align 4
@TK_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%.*s\22%w\22%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @renameTriggerFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameTriggerFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i8* @sqlite3_value_text(i32* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i8* @sqlite3_value_text(i32* %22)
  store i8* %23, i8** %8, align 8
  store i32 3, i32* %11, align 4
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @sqlite3_context_db_handle(i32* %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @UNUSED_PARAMETER(i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %110

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %86, %31
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %110

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %49, %37
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @sqlite3GetToken(i8* %47, i32* %9)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @TK_SPACE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %42, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @TK_DOT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @TK_ON, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %53
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %63
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 2
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @TK_WHEN, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @TK_FOR, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @TK_BEGIN, align 4
  %83 = icmp ne i32 %81, %82
  br label %84

84:                                               ; preds = %80, %76, %72
  %85 = phi i1 [ false, %76 ], [ false, %72 ], [ %83, %80 ]
  br label %86

86:                                               ; preds = %84, %69
  %87 = phi i1 [ true, %69 ], [ %85, %84 ]
  br i1 %87, label %32, label %88

88:                                               ; preds = %86
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = call i8* @sqlite3MPrintf(i32* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %96, i8* %97, i8* %98, i8* %104)
  store i8* %105, i8** %14, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %109 = call i32 @sqlite3_result_text(i32* %106, i8* %107, i32 -1, i32 %108)
  br label %110

110:                                              ; preds = %36, %88, %3
  ret void
}

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3GetToken(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3MPrintf(i32*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
