; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_ParseTreeRawStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_ParseTreeRawStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"statement: %s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot execute multiple utility events\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ParseTreeRawStmt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @pg_parse_query(i8* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @check_log_statement(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @ApplyLogRedaction(i8* %13)
  %15 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @errhidestmt(i32 1)
  %17 = call i32 @ereport(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @list_length(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @linitial(i32* %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32* @pg_parse_query(i8*) #1

declare dso_local i64 @check_log_statement(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ApplyLogRedaction(i8*) #1

declare dso_local i32 @errhidestmt(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
