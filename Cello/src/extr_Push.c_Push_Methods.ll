; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Push.c_Push_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Push.c_Push_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Push_Methods.methods = internal global [5 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"void push(var self, var obj);\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Push the object `obj` onto the top of object `self`.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"void pop(var self);\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Pop the top item from the object `self`.\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"push_at\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"void push_at(var self, var obj, var key);\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Push the object `obj` onto the object `self` at a given `key`.\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pop_at\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"void pop_at(var self, var key);\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Pop the object from the object `self` at a given `key`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Push_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Push_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([5 x %struct.Method], [5 x %struct.Method]* @Push_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
