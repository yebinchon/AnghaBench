; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/tests/extr_bsd_tests.c_kalloc_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/tests/extr_bsd_tests.c_kalloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Running kalloc test.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"kalloc sizeof(uint64_t) return not null\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"kalloc 3544 return not null\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kalloc_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @T_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 4, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32* @kalloc(i64 %4)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @T_ASSERT_NOTNULL(i32* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %1, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @kfree(i32* %8, i64 %9)
  store i64 3544, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i32* @kalloc(i64 %11)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @T_ASSERT_NOTNULL(i32* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @kfree(i32* %15, i64 %16)
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %18
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32* @kalloc(i64) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i32*, i8*) #1

declare dso_local i32 @kfree(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
