; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROFILE_MAJOR = common dso_local global i32 0, align 4
@profile_cdevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"profile_init: failed to allocate a major number!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @profile_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PROFILE_MAJOR, align 4
  %3 = call i32 @cdevsw_add(i32 %2, i32* @profile_cdevsw)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i32*
  %12 = call i32 @profile_attach(i32* %11)
  br label %13

13:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @cdevsw_add(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @profile_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
