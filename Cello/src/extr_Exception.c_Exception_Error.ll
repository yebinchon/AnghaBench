; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Error.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Exception = type { i32, i32 }

@File = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"!!\09\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"!!\09Uncaught %$\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"!!\09\09 %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Exception*)* @Exception_Error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Exception_Error(%struct.Exception* %0) #0 {
  %2 = alloca %struct.Exception*, align 8
  store %struct.Exception* %0, %struct.Exception** %2, align 8
  %3 = load i32, i32* @File, align 4
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @"$"(i32 %3, i32 %4)
  %6 = call i32 (i32, i32, i8*, ...) @print_to(i32 %5, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @File, align 4
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @"$"(i32 %7, i32 %8)
  %10 = call i32 (i32, i32, i8*, ...) @print_to(i32 %9, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @File, align 4
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @"$"(i32 %11, i32 %12)
  %14 = load %struct.Exception*, %struct.Exception** %2, align 8
  %15 = getelementptr inbounds %struct.Exception, %struct.Exception* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i32, i8*, ...) @print_to(i32 %13, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @File, align 4
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @"$"(i32 %18, i32 %19)
  %21 = call i32 (i32, i32, i8*, ...) @print_to(i32 %20, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @File, align 4
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @"$"(i32 %22, i32 %23)
  %25 = load %struct.Exception*, %struct.Exception** %2, align 8
  %26 = getelementptr inbounds %struct.Exception, %struct.Exception* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i32, i8*, ...) @print_to(i32 %24, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @File, align 4
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @"$"(i32 %29, i32 %30)
  %32 = call i32 (i32, i32, i8*, ...) @print_to(i32 %31, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @Exception_Backtrace()
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @exit(i32 %34) #3
  unreachable
}

declare dso_local i32 @print_to(i32, i32, i8*, ...) #1

declare dso_local i32 @"$"(i32, i32) #1

declare dso_local i32 @Exception_Backtrace(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
