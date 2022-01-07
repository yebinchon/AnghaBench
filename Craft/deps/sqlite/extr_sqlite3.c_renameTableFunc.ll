; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_renameTableFunc.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_renameTableFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@TK_SPACE = common dso_local global i32 0, align 4
@TK_LP = common dso_local global i32 0, align 4
@TK_USING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%.*s\22%w\22%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @renameTableFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameTableFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i8* @sqlite3_value_text(i32* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i8* @sqlite3_value_text(i32* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @sqlite3_context_db_handle(i32* %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @UNUSED_PARAMETER(i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %89

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %89

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %48, %36
  %42 = load i32, i32* %12, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @sqlite3GetToken(i8* %46, i32* %9)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TK_SPACE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %41, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @TK_LP, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @TK_USING, align 4
  %64 = icmp ne i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br i1 %66, label %31, label %67

67:                                               ; preds = %65
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = call i8* @sqlite3MPrintf(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %76, i8* %77, i8* %83)
  store i8* %84, i8** %13, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %88 = call i32 @sqlite3_result_text(i32* %85, i8* %86, i32 -1, i32 %87)
  br label %89

89:                                               ; preds = %35, %67, %3
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
