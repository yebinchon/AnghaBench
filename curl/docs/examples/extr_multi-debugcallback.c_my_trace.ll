; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-debugcallback.c_my_trace.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-debugcallback.c_my_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"== Info: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"=> Send header\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"=> Send data\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"<= Recv header\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"<= Recv data\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i8*)* @my_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_trace(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
    i32 129, label %21
    i32 131, label %22
    i32 130, label %23
    i32 132, label %24
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %5, %16
  store i32 0, i32* %6, align 4
  br label %32

21:                                               ; preds = %5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %25

22:                                               ; preds = %5
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %25

23:                                               ; preds = %5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %25

24:                                               ; preds = %5
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @dump(i8* %26, i32 %27, i8* %28, i64 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @dump(i8*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
