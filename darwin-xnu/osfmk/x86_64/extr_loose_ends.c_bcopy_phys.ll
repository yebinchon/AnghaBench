; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_bcopy_phys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_bcopy_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBPG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bcopy_phys alignment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcopy_phys(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @NBPG, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @NBPG, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @NBPG, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @NBPG, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16, %3
  %27 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @PHYSMAP_PTOV(i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @PHYSMAP_PTOV(i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bcopy(i32 %30, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @PHYSMAP_PTOV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
