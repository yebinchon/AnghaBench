; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operhlp.c_clean_getout.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operhlp.c_clean_getout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { %struct.getout* }
%struct.getout = type { %struct.getout*, %struct.getout*, %struct.getout*, %struct.getout* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_getout(%struct.OperationConfig* %0) #0 {
  %2 = alloca %struct.OperationConfig*, align 8
  %3 = alloca %struct.getout*, align 8
  %4 = alloca %struct.getout*, align 8
  store %struct.OperationConfig* %0, %struct.OperationConfig** %2, align 8
  %5 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %6 = icmp ne %struct.OperationConfig* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %9 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %8, i32 0, i32 0
  %10 = load %struct.getout*, %struct.getout** %9, align 8
  store %struct.getout* %10, %struct.getout** %4, align 8
  br label %11

11:                                               ; preds = %14, %7
  %12 = load %struct.getout*, %struct.getout** %4, align 8
  %13 = icmp ne %struct.getout* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.getout*, %struct.getout** %4, align 8
  %16 = getelementptr inbounds %struct.getout, %struct.getout* %15, i32 0, i32 3
  %17 = load %struct.getout*, %struct.getout** %16, align 8
  store %struct.getout* %17, %struct.getout** %3, align 8
  %18 = load %struct.getout*, %struct.getout** %4, align 8
  %19 = getelementptr inbounds %struct.getout, %struct.getout* %18, i32 0, i32 2
  %20 = load %struct.getout*, %struct.getout** %19, align 8
  %21 = call i32 @Curl_safefree(%struct.getout* %20)
  %22 = load %struct.getout*, %struct.getout** %4, align 8
  %23 = getelementptr inbounds %struct.getout, %struct.getout* %22, i32 0, i32 1
  %24 = load %struct.getout*, %struct.getout** %23, align 8
  %25 = call i32 @Curl_safefree(%struct.getout* %24)
  %26 = load %struct.getout*, %struct.getout** %4, align 8
  %27 = getelementptr inbounds %struct.getout, %struct.getout* %26, i32 0, i32 0
  %28 = load %struct.getout*, %struct.getout** %27, align 8
  %29 = call i32 @Curl_safefree(%struct.getout* %28)
  %30 = load %struct.getout*, %struct.getout** %4, align 8
  %31 = call i32 @Curl_safefree(%struct.getout* %30)
  %32 = load %struct.getout*, %struct.getout** %3, align 8
  store %struct.getout* %32, %struct.getout** %4, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %35 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %34, i32 0, i32 0
  store %struct.getout* null, %struct.getout** %35, align 8
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @Curl_safefree(%struct.getout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
