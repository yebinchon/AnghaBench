; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_serverdef_string.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_serverdef_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"CREATE SERVER %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" TYPE %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" VERSION %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" FOREIGN DATA WRAPPER %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_get_serverdef_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.TYPE_12__* @GetForeignTable(i32 %7)
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_13__* @GetForeignServer(i32 %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_14__* @GetForeignDataWrapper(i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %5, align 8
  %17 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = call i32 @initStringInfo(%struct.TYPE_11__* %6)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @quote_identifier(i32 %21)
  %23 = call i32 @appendStringInfo(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @quote_literal_cstr(i32* %31)
  %33 = call i32 @appendStringInfo(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @quote_literal_cstr(i32* %42)
  %44 = call i32 @appendStringInfo(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @quote_identifier(i32 %48)
  %50 = call i32 @appendStringInfo(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @AppendOptionListToString(%struct.TYPE_11__* %6, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  ret i8* %56
}

declare dso_local %struct.TYPE_12__* @GetForeignTable(i32) #1

declare dso_local %struct.TYPE_13__* @GetForeignServer(i32) #1

declare dso_local %struct.TYPE_14__* @GetForeignDataWrapper(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @initStringInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @quote_identifier(i32) #1

declare dso_local i32 @quote_literal_cstr(i32*) #1

declare dso_local i32 @AppendOptionListToString(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
