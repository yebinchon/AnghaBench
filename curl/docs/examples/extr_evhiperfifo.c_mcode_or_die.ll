; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_evhiperfifo.c_mcode_or_die.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_evhiperfifo.c_mcode_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLM_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"CURLM_BAD_HANDLE\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"CURLM_BAD_EASY_HANDLE\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CURLM_OUT_OF_MEMORY\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CURLM_INTERNAL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CURLM_UNKNOWN_OPTION\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"CURLM_LAST\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"CURLM_unknown\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"CURLM_BAD_SOCKET\00", align 1
@MSG_OUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"ERROR: %s returns %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @mcode_or_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcode_or_die(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @CURLM_OK, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  switch i64 %10, label %17 [
    i64 133, label %11
    i64 134, label %12
    i64 129, label %13
    i64 131, label %14
    i64 128, label %15
    i64 130, label %16
    i64 132, label %18
  ]

11:                                               ; preds = %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %23

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %23

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %23

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %23

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %23

17:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %23

18:                                               ; preds = %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %19 = load i32, i32* @MSG_OUT, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %20, i8* %21)
  br label %30

23:                                               ; preds = %17, %16, %15, %14, %13, %12, %11
  %24 = load i32, i32* @MSG_OUT, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %25, i8* %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @exit(i64 %28) #3
  unreachable

30:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
