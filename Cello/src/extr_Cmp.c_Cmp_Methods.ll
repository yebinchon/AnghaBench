; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Cmp_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Cmp_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Cmp_Methods.methods = internal global [8 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"int cmp(var self, var obj);\00", align 1
@.str.2 = private unnamed_addr constant [130 x i8] c"The return value of `cmp` is `< 0` if `self` is less than `obj`, `> 0` if `self` is greater than `obj` and `0` if they are equal.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"bool eq(var self, var obj);\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Returns true if the object `self` is equal to the object `obj`.\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"neq\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"bool neq(var self, var obj);\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Returns false if the object `self` is equal to the object `obj`.\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"bool gt(var self, var obj);\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"Returns true if the object `self` is greater than the object `obj`.\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"bool lt(var self, var obj);\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"Returns false if the object `self` is less than the object `obj`.\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"bool ge(var self, var obj);\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"Returns false if the object `self` is greater than or equal to the object `obj`.\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"bool le(var self, var obj);\00", align 1
@.str.20 = private unnamed_addr constant [78 x i8] c"Returns false if the object `self` is less than or equal to the object `obj`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Cmp_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Cmp_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([8 x %struct.Method], [8 x %struct.Method]* @Cmp_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
