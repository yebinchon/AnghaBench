; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_mcode_or_die.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_mcode_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLM_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"CURLM_unknown\00", align 1
@MSG_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ERROR: %s returns %s\0A\00", align 1
@CURLM_BAD_EASY_HANDLE = common dso_local global i32 0, align 4
@CURLM_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLM_BAD_SOCKET = common dso_local global i32 0, align 4
@CURLM_INTERNAL_ERROR = common dso_local global i32 0, align 4
@CURLM_LAST = common dso_local global i32 0, align 4
@CURLM_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLM_UNKNOWN_OPTION = common dso_local global i32 0, align 4
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
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  switch i64 %10, label %11 [
  ]

11:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @MSG_OUT, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @exit(i64 %17) #3
  unreachable

19:                                               ; preds = %2
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
