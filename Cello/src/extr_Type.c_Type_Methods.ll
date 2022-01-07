; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Type.c_Type_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Type.c_Type_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Type_Methods.methods = internal global [6 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"type_of\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"var type_of(var self);\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Returns the `Type` of an object `self`.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"var instance(var self, var cls);\0Avar type_instance(var type, var cls);\00", align 1
@.str.5 = private unnamed_addr constant [130 x i8] c"Returns the instance of class `cls` implemented by object `self` or type `type`. If class is not implemented then returns `NULL`.\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"implements\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"bool implements(var self, var cls);\0Abool type_implements(var type, var cls);\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"Returns if the object `self` or type `type` implements the class `cls`.\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"#define method(X, C, M, ...)\0A#define type_method(T, C, M, ...)\00", align 1
@.str.11 = private unnamed_addr constant [138 x i8] c"Returns the result of the call to method `M` of class `C` for object `X`or type `T`. If class is not implemented then an error is thrown.\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"implements_method\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"#define implements_method(X, C, M)\0A#define type_implements_method(T, C, M)\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"Returns if the type `T` or object `X` implements the method `M` of class C.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Type_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Type_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([6 x %struct.Method], [6 x %struct.Method]* @Type_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
