; ModuleID = '/home/carl/AnghaBench/disque/src/extr_sparkline.c_sparklineRender.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_sparkline.c_sparklineRender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequence = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparklineRender(i32 %0, %struct.sequence* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sequence*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sequence* %1, %struct.sequence** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %50, %5
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.sequence*, %struct.sequence** %7, align 8
  %16 = getelementptr inbounds %struct.sequence, %struct.sequence* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load %struct.sequence*, %struct.sequence** %7, align 8
  %21 = getelementptr inbounds %struct.sequence, %struct.sequence* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.sequence*, %struct.sequence** %7, align 8
  %29 = getelementptr inbounds %struct.sequence, %struct.sequence* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %30, %31
  br label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %32, %27 ], [ %34, %33 ]
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @sdscatlen(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.sequence*, %struct.sequence** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @sparklineRenderRange(i32 %43, %struct.sequence* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %13

54:                                               ; preds = %13
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sparklineRenderRange(i32, %struct.sequence*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
