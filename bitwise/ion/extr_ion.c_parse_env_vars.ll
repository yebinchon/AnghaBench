; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_ion.c_parse_env_vars.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_ion.c_parse_env_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"IONOS\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Unknown target operating system in IONOS environment variable: %s\0A\00", align 1
@target_os = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"IONARCH\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Unknown target architecture in IONARCH environment variable: %s\0A\00", align 1
@target_arch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_env_vars() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @get_os(i8* %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %18

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* @target_os, align 4
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18, %0
  %20 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @get_arch(i8* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* @target_arch, align 4
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %19
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @get_os(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @get_arch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
