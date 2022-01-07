; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_renameParentFunc.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_renameParentFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_REFERENCES = common dso_local global i32 0, align 4
@TK_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s%.*s\22%w\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @renameParentFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameParentFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @sqlite3_context_db_handle(i32* %18)
  store i32* %19, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i8* @sqlite3_value_text(i32* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @sqlite3_value_text(i32* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @sqlite3_value_text(i32* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @UNUSED_PARAMETER(i32 %32)
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %13, align 8
  br label %35

35:                                               ; preds = %102, %3
  %36 = load i8*, i8** %13, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @sqlite3GetToken(i8* %40, i32* %15)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @TK_REFERENCES, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @sqlite3GetToken(i8* %51, i32* %15)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @TK_SPACE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %46, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i8* @sqlite3DbStrNDup(i32* %58, i8* %59, i32 %60)
  store i8* %61, i8** %16, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %107

65:                                               ; preds = %57
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @sqlite3Dequote(i8* %66)
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = call i64 @sqlite3StrICmp(i8* %68, i8* %69)
  %71 = icmp eq i64 0, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %65
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i8* [ %77, %76 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %78 ]
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i8* (i32*, i8*, i8*, ...) @sqlite3MPrintf(i32* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %80, i64 %85, i8* %86, i8* %87)
  store i8* %88, i8** %17, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @sqlite3DbFree(i32* %89, i8* %90)
  %92 = load i8*, i8** %17, align 8
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8* %96, i8** %10, align 8
  br label %97

97:                                               ; preds = %79, %65
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @sqlite3DbFree(i32* %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %39
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8* %106, i8** %13, align 8
  br label %35

107:                                              ; preds = %64, %35
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  br label %114

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i8* [ %112, %111 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %113 ]
  %116 = load i8*, i8** %10, align 8
  %117 = call i8* (i32*, i8*, i8*, ...) @sqlite3MPrintf(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %115, i8* %116)
  store i8* %117, i8** %9, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %121 = call i32 @sqlite3_result_text(i32* %118, i8* %119, i32 -1, i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @sqlite3DbFree(i32* %122, i8* %123)
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3GetToken(i8*, i32*) #1

declare dso_local i8* @sqlite3DbStrNDup(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3Dequote(i8*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i8* @sqlite3MPrintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3DbFree(i32*, i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
