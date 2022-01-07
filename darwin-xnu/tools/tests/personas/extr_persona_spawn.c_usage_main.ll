; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_spawn.c_usage_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_spawn.c_usage_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s v%d.%d\0A\00", align 1
@PERSONA_TEST_NAME = common dso_local global i8* null, align 8
@PERSONA_TEST_VMAJOR = common dso_local global i32 0, align 4
@PERSONA_TEST_VMINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"usage: %s [-I id] [-V] [-u uid] [-g gid] [-vw] progname [args...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"       Spawn a new process into a new or existing persona.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\09%-10s\09ID of the persona\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-I id\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"\09%-10s\09Verify persona parameters against existing persona (given by -I)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"\09%-10s\09Override/verify the user ID of the new process\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"-u uid\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"\09%-10s\09Override/verify the group ID of the new process\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-g gid\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\09%-15s\09Groups to which the persona will belong\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"-G {groupspec}\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"\09%-15s\09groupspec: G1{,G2,G3...}\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\09%-10s\09Be verbose\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\09%-10s\09Do not wait for the child process\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @usage_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_main(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @basename(i8* %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** @PERSONA_TEST_NAME, align 8
  %9 = load i32, i32* @PERSONA_TEST_VMAJOR, align 4
  %10 = load i32, i32* @PERSONA_TEST_VMINOR, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
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
