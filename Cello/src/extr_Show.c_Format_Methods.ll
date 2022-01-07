; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Show.c_Format_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Show.c_Format_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Format_Methods.methods = internal global [3 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [10 x i8] c"format_to\00", align 1
@.str.1 = private unnamed_addr constant [122 x i8] c"int format_to(var self, int pos, const char* fmt, ...);\0Aint format_to_va(var self, int pos, const char* fmt, va_list va);\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Write a formatted string `fmt` to the object `self` at position `pos`.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"format_from\00", align 1
@.str.4 = private unnamed_addr constant [126 x i8] c"int format_from(var self, int pos, const char* fmt, ...);\0Aint format_from_va(var self, int pos, const char* fmt, va_list va);\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Read a formatted string `fmt` from the object `self` at position `pos`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Format_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Format_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([3 x %struct.Method], [3 x %struct.Method]* @Format_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
