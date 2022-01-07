; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Get.c_Get_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Get.c_Get_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Get_Methods.methods = internal global [7 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"var get(var self, var key);\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Get the value at a given `key` for object `self`.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"void set(var self, var key, var val);\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Set the value at a given `key` for object `self`.\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"bool mem(var self, var key);\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Returns true if `key` is a member of the object `self`.\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"void rem(var self, var key);\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Removes the `key` from object `self`.\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"key_type\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"var key_type(var self);\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Returns the key type for the object `self`.\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"val_type\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"var val_type(var self);\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Returns the value type for the object `self`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Get_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Get_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([7 x %struct.Method], [7 x %struct.Method]* @Get_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
