; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_swtcreate.c_exit_with_help.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_swtcreate.c_exit_with_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2069 x i8] c"\0A  \1B[1mUSAGE\1B[0m\0A\0A    swtreate input-text [OPTION...]\0A\0A  \1B[1mARGUMENTS\1B[0m\0A\0A    input-text: text file contains a list of text locations in format:\0A                <file name>\\newline\0A                x y width height <of one text location>\\newline\0A                x y width height <of another text location>\\newline\0A\0A  \1B[1mOPTIONS\1B[0m\0A\0A    --size : the window size of canny filter [DEFAULT TO 1,2,3]\0A    --low-thresh : the low threshold of canny filter [DEFAULT TO 50,1,150]\0A    --high-thresh : the high threshold of canny filter [DEFAULT TO 200,1,350]\0A    --max-height : the maximal height of letter [DEFAULT TO 500,1,500]\0A    --min-height : the minimal height of letter [DEFAULT TO 5,1,30]\0A    --min-area : the minimal area of letter [DEFAULT TO 10,1,100]\0A    --aspect-ratio : the aspect ratio of letter [DEFAULT TO 5,1,15]\0A    --std-ratio : the maximal std to mean ratio of letter [DEFAULT TO 0.1,0.01,1.0]\0A    --thickness-ratio : the maximal allowance of thickness change between two letters [DEFAULT TO 1,0.1,2]\0A    --height-ratio : the maximal allowance of height change between two letters [DEFAULT TO 1,0.1,3]\0A    --intensity-thresh : how much intensity tolerance between two letters [DEFAULT TO 1,1,50]\0A    --letter-occlude-thresh : how many letters one letter rectangle can occlude [DEFAULT TO 0,1,5]\0A    --distance-ratio : the distance between two letters comparing to their width [DEFAULT TO 1,0.1,5]\0A    --intersect-ratio : how much in the y-axis two letters intersect with each other [DEFAULT TO 0,0.1,5]\0A    --letter-thresh : how many letters in minimal should one text line contains [DEFAULT TO 0,1,5]\0A    --elongate-ratio : what's the minimal ratio between text line's width and height [DEFAULT TO 0.1,0.1,2.5]\0A    --breakdown-ratio : what's the ratio for text line to break down into words [DEFAULT TO 0.5,0.01,1.5]\0A    --breakdown : support to break text lines down to words [DEFAULT TO 1]\0A    --iterations : how many iterations for the search [DEFAULT TO 10]\0A    --base-dir : change the base directory so that the program can read images from there\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_with_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_with_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2069 x i8], [2069 x i8]* @.str, i64 0, i64 0))
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
