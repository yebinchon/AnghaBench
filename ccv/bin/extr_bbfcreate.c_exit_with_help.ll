; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_bbfcreate.c_exit_with_help.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_bbfcreate.c_exit_with_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1197 x i8] c"\0A  \1B[1mUSAGE\1B[0m\0A\0A    bbfcreate [OPTION...]\0A\0A  \1B[1mREQUIRED OPTIONS\1B[0m\0A\0A    --positive-list : text file contains a list of positive files (cropped and scaled to the same size)\0A    --background-list : text file contains a list of image files that don't contain any target objects\0A    --negative-count : the number of negative examples we should collect from background files to initialize SVM\0A    --working-dir : the directory to save progress and produce result model\0A    --width : the width of positive image\0A    --height : the height of positive image\0A\0A  \1B[1mOTHER OPTIONS\1B[0m\0A\0A    --base-dir : change the base directory so that the program can read images from there\0A    --layer : how many layers needed for cascade classifier [DEFAULT TO 24]\0A    --positive-criteria : what's the percentage of positive examples need to pass for the next layer [DEFAULT TO 0.9975]\0A    --negative-criteria : what's the percentage of negative examples need to reject for the next layer [DEFAULT TO 0.5]\0A    --balance : the balance weight for positive examples v.s. negative examples [DEFAULT TO 1.0]\0A    --feature-number : how big our feature pool should be [DEFAULT TO 100 (thus, 100 * 100 = 10000 features)]\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_with_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_with_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([1197 x i8], [1197 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @exit(i32 -1) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

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
