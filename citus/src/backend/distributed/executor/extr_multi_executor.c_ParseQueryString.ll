; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_executor.c_ParseQueryString.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_executor.c_ParseQueryString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can only execute a single query\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ParseQueryString(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @ParseTreeRawStmt(i8* %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @pg_analyze_and_rewrite(i32* %13, i8* %14, i32* %15, i32 %16, i32* null)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @list_length(i32* %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @linitial(i32* %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  ret i32* %29
}

declare dso_local i64 @ParseTreeRawStmt(i8*) #1

declare dso_local i32* @pg_analyze_and_rewrite(i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @linitial(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
