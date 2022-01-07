; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_dpmcreate.c_exit_with_help.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_dpmcreate.c_exit_with_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2232 x i8] c"\0A  \1B[1mUSAGE\1B[0m\0A\0A    dpmcreate [OPTION...]\0A\0A  \1B[1mREQUIRED OPTIONS\1B[0m\0A\0A    --positive-list : text file contains a list of positive files in format:\0A                      <file name> x y width height \\newline\0A    --background-list : text file contains a list of image files that don't contain any target objects\0A    --negative-count : the number of negative examples we should collect from background files to initialize SVM\0A    --model-component : the number of root filters in our mixture model\0A    --model-part : the number of part filters for each root filter\0A    --working-dir : the directory to save progress and produce result model\0A    --symmetric : 0 or 1, whether to exploit symmetric property of the object\0A\0A  \1B[1mOTHER OPTIONS\1B[0m\0A\0A    --base-dir : change the base directory so that the program can read images from there\0A    --iterations : how many iterations are needed for stochastic gradient descent [DEFAULT TO 1000]\0A    --root-relabels : how many relabel procedures are needed for root model optimization [DEFAULT TO 20]\0A    --data-minings : how many data mining procedures are needed for discovering hard examples [DEFAULT TO 50]\0A    --relabels : how many relabel procedures are needed for part model optimization [DEFAULT TO 10]\0A    --alpha : the step size for stochastic gradient descent [DEFAULT TO 0.01]\0A    --alpha-ratio : decrease the step size for each iteration [DEFAULT TO 0.995]\0A    --margin-c : the famous C in SVM [DEFAULT TO 0.002]\0A    --balance : to balance the weight of positive examples and negative examples [DEFAULT TO 1.5]\0A    --negative-cache-size : the cache size for negative examples it should be smaller than negative-count and larger than 100 [DEFAULT TO 2000]\0A    --include-overlap : the percentage of overlap between expected bounding box and the bounding box from detection. Beyond this threshold, it is ensured to be the same object [DEFAULT TO 0.7]\0A    --grayscale : 0 or 1, whether to exploit color in a given image [DEFAULT TO 0]\0A    --discard-estimating-constant : 0 or 1, when estimating bounding boxes, discarding constant (which may be accumulated error) [DEFAULT TO 1]\0A    --percentile-breakdown : 0.00 - 1.00, the percentile use for breakdown threshold [DEFAULT TO 0.05]\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_with_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_with_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2232 x i8], [2232 x i8]* @.str, i64 0, i64 0))
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
