; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawViewBorder.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawViewBorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scaledviewwidth = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SBARHEIGHT = common dso_local global i32 0, align 4
@viewheight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawViewBorder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @scaledviewwidth, align 4
  %6 = load i32, i32* @SCREENWIDTH, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %69

9:                                                ; preds = %0
  %10 = load i32, i32* @SCREENHEIGHT, align 4
  %11 = load i32, i32* @SBARHEIGHT, align 4
  %12 = sub nsw i32 %10, %11
  %13 = load i32, i32* @viewheight, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @SCREENWIDTH, align 4
  %17 = load i32, i32* @scaledviewwidth, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @SCREENWIDTH, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @R_VideoErase(i32 0, i32 %24)
  %26 = load i32, i32* @viewheight, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @SCREENWIDTH, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %2, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @SCREENWIDTH, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @R_VideoErase(i32 %33, i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @SCREENWIDTH, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @SCREENWIDTH, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %2, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %60, %9
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @viewheight, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @R_VideoErase(i32 %54, i32 %55)
  %57 = load i32, i32* @SCREENWIDTH, align 4
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load i32, i32* @SCREENWIDTH, align 4
  %65 = load i32, i32* @SCREENHEIGHT, align 4
  %66 = load i32, i32* @SBARHEIGHT, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @V_MarkRect(i32 0, i32 0, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %8
  ret void
}

declare dso_local i32 @R_VideoErase(i32, i32) #1

declare dso_local i32 @V_MarkRect(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
