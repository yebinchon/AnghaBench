; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_Instructions.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_Instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Instructions.instr = internal global [10 x i8*] [i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [60 x i8] c"Lest this program stop prematurely, i.e. before displaying\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"    `END OF TEST',\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"try to persuade the computer NOT to terminate execution when an\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"error like Over/Underflow or Division by Zero occurs, but rather\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"to persevere with a surrogate value after, perhaps, displaying some\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"warning.  If persuasion avails naught, don't despair but run this\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"program anyway to see how many milestones it passes, and then\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"amend it to make further progress.\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Answer questions with Y, y, N or n (unless otherwise indicated).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Instructions() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @msglist(i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @Instructions.instr, i64 0, i64 0))
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare dso_local i32 @msglist(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
