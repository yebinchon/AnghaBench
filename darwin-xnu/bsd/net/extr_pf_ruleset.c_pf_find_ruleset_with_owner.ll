; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_find_ruleset_with_owner.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_find_ruleset_with_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { i32 }
%struct.pf_anchor = type { i8*, %struct.pf_ruleset }

@pf_main_ruleset = common dso_local global %struct.pf_ruleset zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_ruleset* @pf_find_ruleset_with_owner(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.pf_ruleset*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pf_anchor*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %16, %4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  br label %11

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.pf_ruleset* @pf_main_ruleset, %struct.pf_ruleset** %5, align 8
  br label %57

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.pf_anchor* @pf_find_anchor(i8* %25)
  store %struct.pf_anchor* %26, %struct.pf_anchor** %10, align 8
  %27 = load %struct.pf_anchor*, %struct.pf_anchor** %10, align 8
  %28 = icmp eq %struct.pf_anchor* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %5, align 8
  br label %57

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.pf_anchor*, %struct.pf_anchor** %10, align 8
  %38 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %36, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.pf_anchor*, %struct.pf_anchor** %10, align 8
  %47 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %35
  %52 = load %struct.pf_anchor*, %struct.pf_anchor** %10, align 8
  %53 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %52, i32 0, i32 1
  store %struct.pf_ruleset* %53, %struct.pf_ruleset** %5, align 8
  br label %57

54:                                               ; preds = %45, %42
  %55 = load i32, i32* @EPERM, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %5, align 8
  br label %57

57:                                               ; preds = %54, %51, %29, %23
  %58 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  ret %struct.pf_ruleset* %58
}

declare dso_local %struct.pf_anchor* @pf_find_anchor(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
