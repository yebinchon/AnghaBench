; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Start.c_Start_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Start.c_Start_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Start_Methods.methods = internal global [6 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"#define with(...)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Perform operations in between `start` and `stop`.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"void start(var self);\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Start the object `self`.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"void stop(var self);\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Stop the object `self`.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"void join(var self);\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Block and wait for the object `self` to stop.\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"bool running(var self);\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Check if the object `self` is running.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Start_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Start_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([6 x %struct.Method], [6 x %struct.Method]* @Start_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
