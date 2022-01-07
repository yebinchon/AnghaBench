; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/c/extr_stream.c_insert_rows.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/c/extr_stream.c_insert_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"para is null!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to connet to server:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"drop database %s;\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to drop database, reason:%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"create database %s;\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to create database, reason:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"use %s;\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to use database, reason:%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"create table %s (ts timestamp, speed int);\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to create table, reason:%s\0A\00", align 1
@g_thread_exit_flag = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"insert into %s values (%ld, %d)\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"failed to insert row [%s], reason:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @insert_rows(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast [1024 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 1024, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = icmp eq %struct.TYPE_2__* null, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #4
  unreachable

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32* @taos_connect(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #4
  unreachable

28:                                               ; preds = %15
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %36 = call i64 @taos_query(i32* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @taos_errstr(i32* %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = call i32 @exit(i32 1) #4
  unreachable

43:                                               ; preds = %28
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %51 = call i64 @taos_query(i32* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32*, i32** %3, align 8
  %55 = call i8* @taos_errstr(i32* %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %55)
  %57 = call i32 @exit(i32 1) #4
  unreachable

58:                                               ; preds = %43
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %66 = call i64 @taos_query(i32* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i32*, i32** %3, align 8
  %70 = call i8* @taos_errstr(i32* %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %70)
  %72 = call i32 @exit(i32 1) #4
  unreachable

73:                                               ; preds = %58
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %81 = call i64 @taos_query(i32* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i32*, i32** %3, align 8
  %85 = call i8* @taos_errstr(i32* %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %85)
  %87 = call i32 @exit(i32 1) #4
  unreachable

88:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %115
  %90 = load i64, i64* @g_thread_exit_flag, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %117

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, 1000
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 1546300800000, %102
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %99, i64 %103, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %108 = call i64 @taos_query(i32* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %93
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %112 = load i32*, i32** %3, align 8
  %113 = call i8* @taos_errstr(i32* %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %111, i8* %113)
  br label %115

115:                                              ; preds = %110, %93
  %116 = call i32 @sleep(i32 1)
  br label %89

117:                                              ; preds = %92
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @taos_close(i32* %118)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @taos_connect(i8*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i64 @taos_query(i32*, i8*) #2

declare dso_local i8* @taos_errstr(i32*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @taos_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
