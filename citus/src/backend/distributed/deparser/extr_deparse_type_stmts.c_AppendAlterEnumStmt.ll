; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_deparse_type_stmts.c_AppendAlterEnumStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_deparse_type_stmts.c_AppendAlterEnumStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ALTER TYPE %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" RENAME VALUE %s TO %s;\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" ADD VALUE \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"IF NOT EXISTS \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" %s %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @AppendAlterEnumStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppendAlterEnumStmt(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @NameListToQuotedString(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i64 @AlterEnumIsRename(%struct.TYPE_5__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @quote_literal_cstr(i64 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @quote_literal_cstr(i64 %24)
  %26 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %25)
  br label %69

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = call i64 @AlterEnumIsAddValue(%struct.TYPE_5__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @appendStringInfoString(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @appendStringInfoString(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @quote_literal_cstr(i64 %45)
  %47 = call i32 @appendStringInfoString(i32 %42, i8* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @quote_literal_cstr(i64 %62)
  %64 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %59, i8* %63)
  br label %65

65:                                               ; preds = %52, %41
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @appendStringInfoString(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %27
  br label %69

69:                                               ; preds = %68, %16
  ret void
}

declare dso_local i32 @appendStringInfo(i32, i8*, i8*, ...) #1

declare dso_local i32 @NameListToQuotedString(i32) #1

declare dso_local i64 @AlterEnumIsRename(%struct.TYPE_5__*) #1

declare dso_local i8* @quote_literal_cstr(i64) #1

declare dso_local i64 @AlterEnumIsAddValue(%struct.TYPE_5__*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
