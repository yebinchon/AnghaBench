; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_check_chunk_name.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_check_chunk_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"in png_check_chunk_name\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid chunk type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_check_chunk_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 65
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 122
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 90
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 97
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %16, %11
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @png_chunk_error(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22, %19
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
