; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawNum.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@num = common dso_local global %struct.TYPE_4__** null, align 8
@FB = common dso_local global i32 0, align 4
@wiminus = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WI_drawNum(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @num, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SHORT(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %36

25:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %30, %25
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = sdiv i32 %31, 10
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %27

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %24
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 1994
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %83

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FB, align 4
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @num, align 8
  %63 = load i32, i32* %8, align 4
  %64 = srem i32 %63, 10
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @V_DrawPatch(i32 %59, i32 %60, i32 %61, %struct.TYPE_4__* %67)
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %69, 10
  store i32 %70, i32* %8, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 8
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @FB, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wiminus, align 8
  %80 = call i32 @V_DrawPatch(i32 %76, i32 %77, i32 %78, %struct.TYPE_4__* %79)
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %49
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
