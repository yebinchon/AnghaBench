; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_on_char.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_on_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64 }

@g = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_TEXT_LENGTH = common dso_local global i32 0, align 4
@CRAFT_KEY_CHAT = common dso_local global i32 0, align 4
@CRAFT_KEY_COMMAND = common dso_local global i32 0, align 4
@CRAFT_KEY_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_char(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  br label %97

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp uge i32 %20, 32
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %23, 128
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %5, align 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_TEXT_LENGTH, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %25
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %37, i8* %43, align 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %36, %25
  br label %52

52:                                               ; preds = %51, %22, %19
  br label %97

53:                                               ; preds = %14
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @CRAFT_KEY_CHAT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %57, %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @CRAFT_KEY_COMMAND, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 47, i8* %74, align 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %68, %64
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @CRAFT_KEY_SIGN, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @CRAFT_KEY_SIGN, align 4
  %87 = trunc i32 %86 to i8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 %87, i8* %91, align 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %83, %79
  br label %97

97:                                               ; preds = %11, %96, %52
  ret void
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
