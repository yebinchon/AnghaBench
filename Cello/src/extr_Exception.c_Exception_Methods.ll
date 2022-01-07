; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Exception_Methods.methods = internal global [7 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#define try\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Start an exception `try` block.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"#define catch(...)\00", align 1
@.str.5 = private unnamed_addr constant [185 x i8] c"Start an exception `catch` block, catching any objects listed in `...` as the first name given. To catch any exception object leave argument list empty other than caught variable name.\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"#define throw\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"throw(E, F, ...)\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"Throw exception object `E` with format string `F` and arguments `...`.\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"exception_signals\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"void exception_signals(void);\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Register the standard C signals to throw corresponding exceptions.\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"exception_object\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"void exception_object(void);\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Retrieve the current exception object.\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"exception_message\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"void exception_message(void);\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Retrieve the current exception message.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Exception_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Exception_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([7 x %struct.Method], [7 x %struct.Method]* @Exception_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
