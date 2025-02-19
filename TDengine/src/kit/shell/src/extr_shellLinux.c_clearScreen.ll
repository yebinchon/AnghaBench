; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_clearScreen.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_clearScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }

@TIOCGWINSZ = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@DOWN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\1B[2K\00", align 1
@UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearScreen(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.winsize, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @TIOCGWINSZ, align 4
  %11 = call i32 @ioctl(i32 0, i32 %10, %struct.winsize* %5)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.winsize, %struct.winsize* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.winsize, %struct.winsize* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.winsize, %struct.winsize* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @LEFT, align 4
  %26 = call i32 @positionCursor(i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* @DOWN, align 4
  %31 = call i32 @positionCursor(i32 %29, i32 %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %43, %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @UP, align 4
  %40 = call i32 @positionCursor(i32 1, i32 %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fflush(i32 %47)
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @positionCursor(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
