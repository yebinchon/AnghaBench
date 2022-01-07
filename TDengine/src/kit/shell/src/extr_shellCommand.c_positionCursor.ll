; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellCommand.c_positionCursor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellCommand.c_positionCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEFT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\1B[%dD\00", align 1
@RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%dC\00", align 1
@UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"\1B[%dA\00", align 1
@DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"\1B[%dB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @positionCursor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LEFT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @stdout, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %42

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RIGHT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @stdout, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %41

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @UP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @stdout, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %40

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DOWN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @stdout, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fflush(i32 %43)
  br label %45

45:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
