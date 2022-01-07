; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Doc.c_Doc_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Doc.c_Doc_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Doc_Methods.methods = internal global [5 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"const char* name(var type);\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Return the name of a given `type`.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"brief\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"const char* brief(var type);\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Return a brief description of a given `type`.\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"const char* description(var type);\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Return a longer description of a given `type`.\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"definition\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"const char* definition(var type);\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Return the C definition of a given `type`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Doc_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Doc_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([5 x %struct.Method], [5 x %struct.Method]* @Doc_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
