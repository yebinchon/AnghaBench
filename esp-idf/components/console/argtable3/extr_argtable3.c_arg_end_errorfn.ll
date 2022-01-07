; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_end_errorfn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_end_errorfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"too many errors to display\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"insufficent memory\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unexpected argument \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"option \22%s\22 requires an argument\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid option \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"invalid option \22-%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i8*, i8*)* @arg_end_errorfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_end_errorfn(i8* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i8*, i8** %10, align 8
  br label %17

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %16 ]
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** %9, align 8
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %23 ]
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %48 [
    i32 132, label %30
    i32 130, label %33
    i32 128, label %36
    i32 129, label %40
    i32 131, label %44
  ]

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  br label %52

33:                                               ; preds = %24
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %34)
  br label %52

36:                                               ; preds = %24
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  br label %52

40:                                               ; preds = %24
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %52

44:                                               ; preds = %24
  %45 = load i32*, i32** %7, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  br label %52

48:                                               ; preds = %24
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44, %40, %36, %33, %30
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fputc(i8 signext 10, i32* %53)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
