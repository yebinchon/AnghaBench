; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_disadd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_disadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"d%d, \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c", d%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*)* @disadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disadd(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %6, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 6
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @setsizestr2(i32 %14, i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 256
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 9
  %32 = and i32 %31, 7
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @seteafieldstr(i64 %40, i32 %41, i32* %7, i8* %42)
  br label %60

44:                                               ; preds = %3
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @seteafieldstr(i64 %48, i32 %49, i32* %7, i8* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 9
  %58 = and i32 %57, 7
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %44, %28
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @setsizestr2(i32, i8*) #1

declare dso_local i32 @seteafieldstr(i64, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
