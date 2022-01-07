; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_apply_func_phys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_apply_func_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBPG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"apply_func_phys alignment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_func_phys(i64 %0, i32 %1, i32 (i8*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i8*, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (i8*, i32, i8*)* %2, i32 (i8*, i32, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @NBPG, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @NBPG, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i8* @PHYSMAP_PTOV(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 %21(i8* %23, i32 %24, i8* %25)
  ret i32 %26
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @PHYSMAP_PTOV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
