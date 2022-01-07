; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_renameParentFunc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_renameParentFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_REFERENCES = common dso_local global i32 0, align 4
@TK_SPACE = common dso_local global i32 0, align 4
@TK_ILLEGAL = common dso_local global i32 0, align 4
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
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %3
  br label %138

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %115, %40
  %43 = load i8*, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %120

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @sqlite3GetToken(i8* %47, i32* %15)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @TK_REFERENCES, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %114

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %60, %52
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @sqlite3GetToken(i8* %58, i32* %15)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @TK_SPACE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %53, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @TK_ILLEGAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %120

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i8* @sqlite3DbStrNDup(i32* %70, i8* %71, i32 %72)
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %120

77:                                               ; preds = %69
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 @sqlite3Dequote(i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = call i64 @sqlite3StrICmp(i8* %80, i8* %81)
  %83 = icmp eq i64 0, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load i32*, i32** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  br label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i8* [ %89, %88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %90 ]
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = call i8* (i32*, i8*, i8*, ...) @sqlite3MPrintf(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %92, i32 %98, i8* %99, i8* %100)
  store i8* %101, i8** %17, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @sqlite3DbFree(i32* %102, i8* %103)
  %105 = load i8*, i8** %17, align 8
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %10, align 8
  br label %110

110:                                              ; preds = %91, %77
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @sqlite3DbFree(i32* %111, i8* %112)
  br label %114

114:                                              ; preds = %110, %46
  br label %115

115:                                              ; preds = %114
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8* %119, i8** %13, align 8
  br label %42

120:                                              ; preds = %76, %68, %42
  %121 = load i32*, i32** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i8*, i8** %8, align 8
  br label %127

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i8* [ %125, %124 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %126 ]
  %129 = load i8*, i8** %10, align 8
  %130 = call i8* (i32*, i8*, i8*, ...) @sqlite3MPrintf(i32* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %128, i8* %129)
  store i8* %130, i8** %9, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %134 = call i32 @sqlite3_result_text(i32* %131, i8* %132, i32 -1, i32 %133)
  %135 = load i32*, i32** %7, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @sqlite3DbFree(i32* %135, i8* %136)
  br label %138

138:                                              ; preds = %127, %39
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
