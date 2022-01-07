; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_threads.c_RunThreadsOn.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_threads.c_RunThreadsOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"no multi-threading\0A\00", align 1
@dispatch = common dso_local global i64 0, align 8
@workcount = common dso_local global i32 0, align 4
@oldf = common dso_local global i32 0, align 4
@pacifier = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" (%i)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RunThreadsOn(i32 %0, i64 %1, void (i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca void (i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store void (i32)* %2, void (i32)** %6, align 8
  %9 = call i32 @Log_Print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @dispatch, align 8
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* @workcount, align 4
  store i32 -1, i32* @oldf, align 4
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* @pacifier, align 8
  %12 = call i32 (...) @I_FloatTime()
  store i32 %12, i32* %7, align 4
  %13 = load void (i32)*, void (i32)** %6, align 8
  call void %13(i32 0)
  %14 = call i32 (...) @I_FloatTime()
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* @pacifier, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @I_FloatTime(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
