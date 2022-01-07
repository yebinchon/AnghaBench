; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Show.c_Show_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Show.c_Show_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Show_Methods.methods = internal global [5 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"int show(var self);\0Aint show_to(var self, var out, int pos);\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Show the object `self` either to `stdout` or to the object `output`.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"look\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"int look(var self);\0Aint look_from(var self, var input, int pos);\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Read the object `self` either from `stdout` or from the object `input`.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.7 = private unnamed_addr constant [239 x i8] c"#define print(fmt, ...)\0A#define println(fmt, ...)\0A#define print_to(out, pos, fmt, ...)\0Aint print_with(const char* fmt, var args);\0Aint println_with(const char* fmt, var args);\0Aint print_to_with(var out, int pos, const char* fmt, var args);\00", align 1
@.str.8 = private unnamed_addr constant [124 x i8] c"Print the format string `fmt` either to `stdout` or to the object `out` at positions `pos`. Returns new position in output.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@.str.10 = private unnamed_addr constant [241 x i8] c"#define scan(fmt, ...)\0A#define scanln(fmt, ...)\0A#define scan_from(input, pos, fmt, ...)\0Aint scan_with(const char* fmt, var args);\0Aint scanln_with(const char* fmt, var args);\0Aint scan_from_with(var input, int pos, const char* fmt, var args);\00", align 1
@.str.11 = private unnamed_addr constant [128 x i8] c"Scan the format string `fmt` either from `stdout` or from the object `input` at position `pos`. Returns new position in output.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Show_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Show_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([5 x %struct.Method], [5 x %struct.Method]* @Show_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
