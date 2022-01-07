; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_test.c_stub_state_post_print.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_test.c_stub_state_post_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_state = type { i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stub_state*)* @stub_state_post_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stub_state_post_print(%struct.stub_state* %0) #0 {
  %2 = alloca %struct.stub_state*, align 8
  store %struct.stub_state* %0, %struct.stub_state** %2, align 8
  %3 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %4 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %7 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %100 [
    i32 1, label %13
    i32 2, label %69
  ]

13:                                               ; preds = %1
  %14 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %15 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %18 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %13
  %26 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %28 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %31 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %68

37:                                               ; preds = %13
  %38 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %39 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %42 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %51 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 2
  store i32 %53, i32* %51, align 8
  %54 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  call void @stub_state_post_print(%struct.stub_state* %54)
  br label %67

55:                                               ; preds = %37
  %56 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %58 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %61 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %55, %48
  br label %68

68:                                               ; preds = %67, %25
  br label %100

69:                                               ; preds = %1
  %70 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %71 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %74 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %83 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %83, align 8
  %86 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  call void @stub_state_post_print(%struct.stub_state* %86)
  br label %99

87:                                               ; preds = %69
  %88 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %90 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.stub_state*, %struct.stub_state** %2, align 8
  %93 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %87, %80
  br label %100

100:                                              ; preds = %1, %99, %68
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
