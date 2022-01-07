; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_date_errorfn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_date_errorfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_date = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"missing option \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"excess option \00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"illegal timestamp format \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"1999-12-31 23:59:59\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%F %H:%M:%S\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"correct format is \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_date*, i32*, i32, i8*, i8*)* @arg_date_errorfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_date_errorfn(%struct.arg_date* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.arg_date*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tm, align 4
  %15 = alloca [200 x i8], align 16
  store %struct.arg_date* %0, %struct.arg_date** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load %struct.arg_date*, %struct.arg_date** %6, align 8
  %17 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.arg_date*, %struct.arg_date** %6, align 8
  %21 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load %struct.arg_date*, %struct.arg_date** %6, align 8
  %25 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %32 ]
  store i8* %34, i8** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %68 [
    i32 128, label %39
    i32 129, label %47
    i32 130, label %55
  ]

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @arg_print_option(i32* %42, i8* %43, i8* %44, i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %68

47:                                               ; preds = %33
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @arg_print_option(i32* %50, i8* %51, i8* %52, i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %68

55:                                               ; preds = %33
  %56 = load i32*, i32** %7, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @fprintf(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = call i32 @memset(%struct.tm* %14, i32 0, i32 4)
  %60 = call i32 @arg_strptime(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.tm* %14)
  %61 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %62 = load %struct.arg_date*, %struct.arg_date** %6, align 8
  %63 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strftime(i8* %61, i32 200, i32 %64, %struct.tm* %14)
  %66 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %67 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %33, %55, %47, %39
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @arg_print_option(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @arg_strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i32, %struct.tm*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
