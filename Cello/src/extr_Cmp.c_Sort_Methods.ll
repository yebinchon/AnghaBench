; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Sort_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Cmp.c_Sort_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Sort_Methods.methods = internal global [3 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"void sort(var self);\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Sorts the object `self`.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sort_by\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"void sort_by(var self, bool(*f)(var,var));\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Sorts the object `self` using the function `f`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Sort_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Sort_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([3 x %struct.Method], [3 x %struct.Method]* @Sort_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
