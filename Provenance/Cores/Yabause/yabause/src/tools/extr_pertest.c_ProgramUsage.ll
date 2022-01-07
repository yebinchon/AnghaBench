; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_pertest.c_ProgramUsage.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_pertest.c_ProgramUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"%s v%s - by Cyber Warrior X (c)%s\0A\00", align 1
@PROG_NAME = common dso_local global i8* null, align 8
@VER_NAME = common dso_local global i8* null, align 8
@COPYRIGHT_YEAR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"usage: %s <core index as specified in pertest.c>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProgramUsage() #0 {
  %1 = load i8*, i8** @PROG_NAME, align 8
  %2 = load i8*, i8** @VER_NAME, align 8
  %3 = load i8*, i8** @COPYRIGHT_YEAR, align 8
  %4 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %2, i8* %3)
  %5 = load i8*, i8** @PROG_NAME, align 8
  %6 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

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
