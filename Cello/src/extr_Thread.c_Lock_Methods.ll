; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Thread.c_Lock_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Thread.c_Lock_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Lock_Methods.methods = internal global [4 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"void lock(var self);\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Wait until a lock can be aquired on object `self`.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"trylock\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bool trylock(var self);\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"Try to acquire a lock on object `self`. Returns `true` on success and `false` if the resource is busy.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"void unlock(var self);\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Release lock on object `self`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Lock_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Lock_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([4 x %struct.Method], [4 x %struct.Method]* @Lock_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
