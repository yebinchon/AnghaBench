; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_init_builtin_syms.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_init_builtin_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_package = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@type_void = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@type_bool = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@type_char = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"schar\00", align 1
@type_schar = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"uchar\00", align 1
@type_uchar = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@type_short = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@type_ushort = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@type_int = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@type_uint = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@type_long = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@type_ulong = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"llong\00", align 1
@type_llong = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"ullong\00", align 1
@type_ullong = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@type_float = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@type_double = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_builtin_syms() #0 {
  %1 = load i32, i32* @current_package, align 4
  %2 = call i32 @assert(i32 %1)
  %3 = load i32, i32* @type_void, align 4
  %4 = call i32 @sym_global_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @type_bool, align 4
  %6 = call i32 @sym_global_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @type_char, align 4
  %8 = call i32 @sym_global_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @type_schar, align 4
  %10 = call i32 @sym_global_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @type_uchar, align 4
  %12 = call i32 @sym_global_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @type_short, align 4
  %14 = call i32 @sym_global_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @type_ushort, align 4
  %16 = call i32 @sym_global_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @type_int, align 4
  %18 = call i32 @sym_global_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @type_uint, align 4
  %20 = call i32 @sym_global_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @type_long, align 4
  %22 = call i32 @sym_global_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @type_ulong, align 4
  %24 = call i32 @sym_global_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @type_llong, align 4
  %26 = call i32 @sym_global_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @type_ullong, align 4
  %28 = call i32 @sym_global_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @type_float, align 4
  %30 = call i32 @sym_global_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @type_double, align 4
  %32 = call i32 @sym_global_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sym_global_type(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
