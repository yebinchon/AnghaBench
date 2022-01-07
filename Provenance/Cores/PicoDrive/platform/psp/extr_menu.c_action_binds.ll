; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_action_binds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_action_binds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@action_binds.strkeys = internal global [160 x i8] zeroinitializer, align 16
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@keyNames = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @action_binds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @action_binds(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i8 0, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @action_binds.strkeys, i64 0, i64 0), align 16
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %56, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %59

9:                                                ; preds = %6
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 3
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %56

32:                                               ; preds = %21, %18
  %33 = load i8, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @action_binds.strkeys, i64 0, i64 0), align 16
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 28
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %40 = call i32 @strcat(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @action_binds.strkeys, i64 0, i64 0), i8* %39)
  %41 = load i8**, i8*** @keyNames, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcat(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @action_binds.strkeys, i64 0, i64 0), i8* %45)
  br label %59

47:                                               ; preds = %32
  %48 = load i8**, i8*** @keyNames, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @action_binds.strkeys, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %9
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %6

59:                                               ; preds = %35, %6
  ret i8* getelementptr inbounds ([160 x i8], [160 x i8]* @action_binds.strkeys, i64 0, i64 0)
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
