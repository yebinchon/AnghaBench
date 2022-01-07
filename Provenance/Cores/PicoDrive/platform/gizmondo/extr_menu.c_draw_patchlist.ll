; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_patchlist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_patchlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@PicoPatchCount = common dso_local global i32 0, align 4
@PicoPatches = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ON \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @draw_patchlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_patchlist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 12, %7
  store i32 %8, i32* %3, align 4
  %9 = call i32 @menu_draw_begin(i32 1)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PicoPatchCount, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %56

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 23
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %59

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PicoPatches, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 10
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 65526, i32 65535
  %42 = call i32 @smalltext_out16_lim(i32 14, i32 %33, i8* %37, i32 %41, i32 3)
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 10
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PicoPatches, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 65526, i32 65535
  %55 = call i32 @smalltext_out16_lim(i32 38, i32 %44, i8* %50, i32 %54, i32 47)
  br label %56

56:                                               ; preds = %25, %20
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %10

59:                                               ; preds = %24, %10
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 24
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %66, 10
  %68 = call i32 @smalltext_out16_lim(i32 14, i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 65535, i32 4)
  br label %69

69:                                               ; preds = %65, %59
  %70 = call i32 @text_out16(i32 5, i32 120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32) #1

declare dso_local i32 @smalltext_out16_lim(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
