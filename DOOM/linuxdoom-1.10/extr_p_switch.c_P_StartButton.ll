; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_switch.c_P_StartButton.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_switch.c_P_StartButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MAXBUTTONS = common dso_local global i32 0, align 4
@buttonlist = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"P_StartButton: no button slots left!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_StartButton(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MAXBUTTONS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = icmp eq %struct.TYPE_6__* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %89

32:                                               ; preds = %22, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %84, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MAXBUTTONS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i32 %56, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buttonlist, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32* %77, i32** %82, align 8
  br label %89

83:                                               ; preds = %41
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %37

87:                                               ; preds = %37
  %88 = call i32 @I_Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %49, %31
  ret void
}

declare dso_local i32 @I_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
