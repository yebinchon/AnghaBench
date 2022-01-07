; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_SetInputDisplayCharacters.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_SetInputDisplayCharacters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@str = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PORTDATA1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Spaces = common dso_local global i32* null, align 8
@Buttons = common dso_local global i32* null, align 8
@Spaces2 = common dso_local global i32* null, align 8
@Buttons2 = common dso_local global i32* null, align 8
@InputDisplayString = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetInputDisplayCharacters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetInputDisplayCharacters() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @str, align 8
  %3 = call i32 @strcpy(i8* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PORTDATA1, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %1, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = load i8*, i8** @str, align 8
  %17 = load i32*, i32** @Spaces, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcat(i8* %16, i32 %21)
  br label %31

23:                                               ; preds = %7
  %24 = load i8*, i8** @str, align 8
  %25 = load i32*, i32** @Buttons, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcat(i8* %24, i32 %29)
  br label %31

31:                                               ; preds = %23, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %4

35:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %1, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PORTDATA1, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %1, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i8*, i8** @str, align 8
  %49 = load i32*, i32** @Spaces2, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcat(i8* %48, i32 %53)
  br label %63

55:                                               ; preds = %39
  %56 = load i8*, i8** @str, align 8
  %57 = load i32*, i32** @Buttons2, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcat(i8* %56, i32 %61)
  br label %63

63:                                               ; preds = %55, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %36

67:                                               ; preds = %36
  %68 = load i8*, i8** @InputDisplayString, align 8
  %69 = load i8*, i8** @str, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
