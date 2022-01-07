; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_helpers.c_param2text.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_helpers.c_param2text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"had unsupported trailing garbage\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"is unknown\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"is ambiguous\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"requires parameter\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"is badly used here\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"expected a proper numerical parameter\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"expected a positive numerical parameter\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"the installed libcurl version doesn't support this\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"a specified protocol is unsupported by libcurl\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"the given option can't be reversed with a --no- prefix\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"too large number\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"used '--no-' for option that isn't a boolean\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @param2text(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %20 [
    i32 138, label %7
    i32 129, label %8
    i32 130, label %9
    i32 128, label %10
    i32 139, label %11
    i32 140, label %12
    i32 135, label %13
    i32 137, label %14
    i32 136, label %15
    i32 134, label %16
    i32 132, label %17
    i32 131, label %18
    i32 133, label %19
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %21

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %21

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %21

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %21

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %21

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
