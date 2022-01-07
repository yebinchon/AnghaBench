; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_usage_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_usage_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s v%d.%d\0A\00", align 1
@PROG_NAME = common dso_local global i8* null, align 8
@PROG_VMAJOR = common dso_local global i32 0, align 4
@PROG_VMINOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [105 x i8] c"usage: %s [op] [-v] [-i id] [-t type] [-p pid] [-u uid] [-g gid] [-l login] [-G {groupspec}] [-m gmuid]\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\09%-15s\09One of: create | destroy | lookup | support\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[op]\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09%-15s\09Be verbose\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\09%-15s\09ID of the persona\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-i id\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\09%-15s\09Type of the persona\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"-t type\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"\09%-15s\09PID of the process whose persona info to lookup\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"-p pid\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"\09%-15s\09UID to use in lookup\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-u uid\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\09%-15s\09GID of the persona\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"-g gid\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\09%-15s\09Login name of the persona\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"-l login\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"\09%-15s\09Groups to which the persona will belong\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"-G {groupspec}\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"\09%-15s\09groupspec: G1{,G2,G3...}\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"\09%-15s\09UID used for memberd lookup (opt-in to memberd)\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"-m gmuid\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @usage_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_main(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @basename(i8* %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i8*, i8** @PROG_NAME, align 8
  %17 = load i32, i32* @PROG_VMAJOR, align 4
  %18 = load i32, i32* @PROG_VMINOR, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %17, i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
