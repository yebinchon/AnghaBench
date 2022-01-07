; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_typeinfos.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_typeinfos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [72 x i8] c"#define TYPEID0(index, kind) ((ullong)(index) | ((ullong)(kind) << 24))\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"#define TYPEID(index, kind, ...) ((ullong)(index) | ((ullong)sizeof(__VA_ARGS__) << 32) | ((ullong)(kind) << 24))\00", align 1
@flag_notypeinfo = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"int num_typeinfos;\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"TypeInfo **typeinfos;\00", align 1
@next_typeid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"TypeInfo *typeinfo_table[%d] = {\00", align 1
@gen_indent = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"[%d] = \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"NULL, // No associated type\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"int num_typeinfos = %d;\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"TypeInfo **typeinfos = (TypeInfo **)typeinfo_table;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_typeinfos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (...) @genln()
  %7 = load i64, i64* @flag_notypeinfo, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %50

12:                                               ; preds = %0
  %13 = load i32, i32* @next_typeid, align 4
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @gen_indent, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @gen_indent, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %39, %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32* @get_type_from_typeid(i32 %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @is_excluded_typeinfo(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @gen_typeinfo(i32* %34)
  br label %38

36:                                               ; preds = %29, %22
  %37 = call i32 @genf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* @gen_indent, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* @gen_indent, align 4
  %45 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %46 = call i32 (...) @genln()
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  %49 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %50

50:                                               ; preds = %42, %9
  ret void
}

declare dso_local i32 @genlnf(i8*, ...) #1

declare dso_local i32 @genln(...) #1

declare dso_local i32* @get_type_from_typeid(i32) #1

declare dso_local i32 @is_excluded_typeinfo(i32*) #1

declare dso_local i32 @gen_typeinfo(i32*) #1

declare dso_local i32 @genf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
