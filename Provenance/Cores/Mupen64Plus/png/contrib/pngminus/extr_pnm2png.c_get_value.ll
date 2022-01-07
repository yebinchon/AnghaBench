; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_pnm2png.c_get_value.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_pnm2png.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_value.mask = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_value(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @get_value.mask, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %20, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* @get_value.mask, align 4
  %18 = shl i32 %17, 1
  %19 = or i32 %18, 1
  store i32 %19, i32* @get_value.mask, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %12

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @get_token(i32* %25, i8* %27)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %6)
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @get_value.mask, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %60

39:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 8, %42
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i1 [ true, %45 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %24
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @get_token(i32*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
