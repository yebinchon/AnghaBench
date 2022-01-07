; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_mkext.c_init_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_mkext.c_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_state = type { i8*, i8**, i8** }

@N = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@NIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encode_state*)* @init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_state(%struct.encode_state* %0) #0 {
  %2 = alloca %struct.encode_state*, align 8
  %3 = alloca i32, align 4
  store %struct.encode_state* %0, %struct.encode_state** %2, align 8
  %4 = load %struct.encode_state*, %struct.encode_state** %2, align 8
  %5 = call i32 @bzero(%struct.encode_state* %4, i32 24)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @N, align 4
  %9 = load i32, i32* @F, align 4
  %10 = sub nsw i32 %8, %9
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.encode_state*, %struct.encode_state** %2, align 8
  %14 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 32, i8* %18, align 1
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* @N, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %38, %22
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @N, align 4
  %28 = add nsw i32 %27, 256
  %29 = icmp sle i32 %26, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i8*, i8** @NIL, align 8
  %32 = load %struct.encode_state*, %struct.encode_state** %2, align 8
  %33 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %31, i8** %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %25

41:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @N, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i8*, i8** @NIL, align 8
  %48 = load %struct.encode_state*, %struct.encode_state** %2, align 8
  %49 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %42

57:                                               ; preds = %42
  ret void
}

declare dso_local i32 @bzero(%struct.encode_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
