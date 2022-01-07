; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoisePrintKeyCodes.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoisePrintKeyCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [100 x i8] c"Linenoise key codes debugging mode.\0APress keys to see scan codes. Type 'quit' at any time to exit.\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"'%c' %02x (%d) (type quit to exit)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linenoisePrintKeyCodes() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @STDIN_FILENO, align 4
  %6 = call i32 @enableRawMode(i32 %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %50

9:                                                ; preds = %0
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i8 signext 32, i32 4)
  br label %12

12:                                               ; preds = %9, %17, %37
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = call i32 @read(i32 %13, i8* %2, i32 1)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %12

18:                                               ; preds = %12
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i32 @memmove(i8* %19, i8* %21, i32 3)
  %23 = load i8, i8* %2, align 1
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %26 = call i64 @memcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %47

29:                                               ; preds = %18
  %30 = load i8, i8* %2, align 1
  %31 = call i64 @isprint(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8, i8* %2, align 1
  %35 = sext i8 %34 to i32
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 63, %36 ]
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* %2, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fflush(i32 %45)
  br label %12

47:                                               ; preds = %28
  %48 = load i32, i32* @STDIN_FILENO, align 4
  %49 = call i32 @disableRawMode(i32 %48)
  br label %50

50:                                               ; preds = %47, %8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @enableRawMode(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @disableRawMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
