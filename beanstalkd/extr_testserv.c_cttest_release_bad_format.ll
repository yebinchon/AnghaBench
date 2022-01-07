; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_release_bad_format.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_release_bad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"release 18446744073709551616 1 1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"BAD_FORMAT\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"release 184467440737095516160000000000000000000000000000 1 1\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"release foo111\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"release 111foo\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"release 18446744073709551615 abc 1\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"release 18446744073709551615 1 abc\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_release_bad_format() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @SERVER()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @mustdiallocal(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @mustsend(i32 %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ckresp(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @mustsend(i32 %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ckresp(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @mustsend(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ckresp(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @mustsend(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @ckresp(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @mustsend(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @ckresp(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @mustsend(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ckresp(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
