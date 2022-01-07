; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_str_errorfn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_str_errorfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_str = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"missing option \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"excess option \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_str*, i32*, i32, i8*, i8*)* @arg_str_errorfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_str_errorfn(%struct.arg_str* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.arg_str*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.arg_str* %0, %struct.arg_str** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.arg_str*, %struct.arg_str** %6, align 8
  %15 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.arg_str*, %struct.arg_str** %6, align 8
  %19 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.arg_str*, %struct.arg_str** %6, align 8
  %23 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  br label %31

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %30 ]
  store i8* %32, i8** %9, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %53 [
    i32 128, label %37
    i32 129, label %45
  ]

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @arg_print_option(i32* %40, i8* %41, i8* %42, i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %53

45:                                               ; preds = %31
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @arg_print_option(i32* %48, i8* %49, i8* %50, i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %31, %45, %37
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @arg_print_option(i32*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
