; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_cmdlib.c_ExpandArg.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_cmdlib.c_ExpandArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExpandArg.full = internal global [1024 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ExpandArg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 47
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 92
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 58
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = call i32 @Q_getwd(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandArg.full, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandArg.full, i64 0, i64 0), i8* %22)
  br label %27

24:                                               ; preds = %14, %8, %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandArg.full, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %20
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandArg.full, i64 0, i64 0)
}

declare dso_local i32 @Q_getwd(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
