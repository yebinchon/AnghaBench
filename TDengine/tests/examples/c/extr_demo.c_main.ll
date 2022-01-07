; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/c/extr_demo.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/c/extr_demo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"please input server-ip \0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to connect to server, reason:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"success to connect to server\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"drop database demo\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"create database demo\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to create database, reason:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"success to create database\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"use demo\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"create table m1 (ts timestamp, speed int)\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to create table, reason:%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"success to create table\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"insert into m1 values (%ld, %d)\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"failed to insert row: %i, reason:%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"success to insert rows, total %d rows\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"SELECT * FROM m1\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"failed to select, reason:%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"failed to get result, reason:%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"select * from table, result:\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"====demo end====\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

19:                                               ; preds = %2
  %20 = call i32 (...) @taos_init()
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @taos_connect(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @taos_errstr(i32* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %19
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @taos_query(i32* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @taos_query(i32* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = call i8* @taos_errstr(i32* %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %32
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @taos_query(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @taos_query(i32* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @taos_errstr(i32* %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %44
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %80, %56
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 10
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 1000
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 1546300800000, %65
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 10
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i64 %66, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %72 = call i64 @taos_query(i32* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i8* @taos_errstr(i32* %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %75, i8* %77)
  br label %79

79:                                               ; preds = %74, %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %90 = call i64 @taos_query(i32* %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i32*, i32** %6, align 8
  %94 = call i8* @taos_errstr(i32* %93)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %94)
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %83
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @taos_use_result(i32* %98)
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32*, i32** %6, align 8
  %104 = call i8* @taos_errstr(i32* %103)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %104)
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @taos_field_count(i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = call i32* @taos_fetch_fields(i32* %110)
  store i32* %111, i32** %13, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  br label %113

113:                                              ; preds = %117, %107
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @taos_fetch_row(i32* %114)
  store i32 %115, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %121 = load i32, i32* %10, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @taos_print_row(i8* %120, i32 %121, i32* %122, i32 %123)
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %125)
  br label %113

127:                                              ; preds = %113
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @taos_free_result(i32* %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %131 = call i32 (...) @getchar()
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %17
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @taos_init(...) #1

declare dso_local i32* @taos_connect(i8*, i8*, i8*, i32*, i32) #1

declare dso_local i8* @taos_errstr(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @taos_query(i32*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32* @taos_use_result(i32*) #1

declare dso_local i32 @taos_field_count(i32*) #1

declare dso_local i32* @taos_fetch_fields(i32*) #1

declare dso_local i32 @taos_fetch_row(i32*) #1

declare dso_local i32 @taos_print_row(i8*, i32, i32*, i32) #1

declare dso_local i32 @taos_free_result(i32*) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
