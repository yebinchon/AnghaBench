; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorSaveAcctLog.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorSaveAcctLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [165 x i8] c"insert into %s.acct_%s using %s.acct tags('%s') values(now, %ld, %ld , %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %d)\00", align 1
@tsMonitorDbName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"monitor:%p, save account info, sql %s\00", align 1
@monitor = common dso_local global %struct.TYPE_2__* null, align 8
@dnodeMontiorInsertAcctCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"account\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitorSaveAcctLog(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21) #0 {
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca [1024 x i8], align 16
  store i8* %0, i8** %23, align 8
  store i32 %1, i32* %24, align 4
  store i32 %2, i32* %25, align 4
  store i32 %3, i32* %26, align 4
  store i32 %4, i32* %27, align 4
  store i32 %5, i32* %28, align 4
  store i32 %6, i32* %29, align 4
  store i32 %7, i32* %30, align 4
  store i32 %8, i32* %31, align 4
  store i32 %9, i32* %32, align 4
  store i32 %10, i32* %33, align 4
  store i32 %11, i32* %34, align 4
  store i32 %12, i32* %35, align 4
  store i32 %13, i32* %36, align 4
  store i32 %14, i32* %37, align 4
  store i32 %15, i32* %38, align 4
  store i32 %16, i32* %39, align 4
  store i32 %17, i32* %40, align 4
  store i32 %18, i32* %41, align 4
  store i32 %19, i32* %42, align 4
  store i32 %20, i32* %43, align 4
  store i32 %21, i32* %44, align 4
  %46 = bitcast [1024 x i8]* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 1024, i1 false)
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %45, i64 0, i64 0
  %48 = load i8*, i8** @tsMonitorDbName, align 8
  %49 = load i8*, i8** %23, align 8
  %50 = load i8*, i8** @tsMonitorDbName, align 8
  %51 = load i8*, i8** %23, align 8
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %26, align 4
  %55 = load i32, i32* %27, align 4
  %56 = load i32, i32* %28, align 4
  %57 = load i32, i32* %29, align 4
  %58 = load i32, i32* %30, align 4
  %59 = load i32, i32* %31, align 4
  %60 = load i32, i32* %32, align 4
  %61 = load i32, i32* %33, align 4
  %62 = load i32, i32* %34, align 4
  %63 = load i32, i32* %35, align 4
  %64 = load i32, i32* %36, align 4
  %65 = load i32, i32* %37, align 4
  %66 = load i32, i32* %38, align 4
  %67 = load i32, i32* %39, align 4
  %68 = load i32, i32* %40, align 4
  %69 = load i32, i32* %41, align 4
  %70 = load i32, i32* %42, align 4
  %71 = load i32, i32* %43, align 4
  %72 = load i32, i32* %44, align 4
  %73 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49, i8* %50, i8* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %45, i64 0, i64 0
  %78 = call i32 @monitorTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %76, i8* %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %45, i64 0, i64 0
  %83 = load i32, i32* @dnodeMontiorInsertAcctCallback, align 4
  %84 = call i32 @taos_query_a(i32 %81, i8* %82, i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @monitorTrace(i8*, i32, i8*) #2

declare dso_local i32 @taos_query_a(i32, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
