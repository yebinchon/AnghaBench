; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_single_transfer_cleanup.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_single_transfer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { %struct.State }
%struct.State = type { i32*, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.OperationConfig*)* @single_transfer_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_transfer_cleanup(%struct.OperationConfig* %0) #0 {
  %2 = alloca %struct.OperationConfig*, align 8
  %3 = alloca %struct.State*, align 8
  store %struct.OperationConfig* %0, %struct.OperationConfig** %2, align 8
  %4 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %5 = icmp ne %struct.OperationConfig* %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %8 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %7, i32 0, i32 0
  store %struct.State* %8, %struct.State** %3, align 8
  %9 = load %struct.State*, %struct.State** %3, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load %struct.State*, %struct.State** %3, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @glob_cleanup(i32* %16)
  %18 = load %struct.State*, %struct.State** %3, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %6
  %21 = load %struct.State*, %struct.State** %3, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Curl_safefree(i32 %23)
  %25 = load %struct.State*, %struct.State** %3, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Curl_safefree(i32 %27)
  %29 = load %struct.State*, %struct.State** %3, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @Curl_safefree(i32 %31)
  %33 = load %struct.State*, %struct.State** %3, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load %struct.State*, %struct.State** %3, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @glob_cleanup(i32* %40)
  %42 = load %struct.State*, %struct.State** %3, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %20
  br label %45

45:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @glob_cleanup(i32*) #1

declare dso_local i32 @Curl_safefree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
