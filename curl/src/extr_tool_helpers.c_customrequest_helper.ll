; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_helpers.c_customrequest_helper.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_helpers.c_customrequest_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Unnecessary use of -X or --request, %s is already inferred.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.5 = private unnamed_addr constant [119 x i8] c"Setting custom HTTP method to HEAD with -X/--request may not work the way you want. Consider using -I/--head instead.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @customrequest_helper(%struct.OperationConfig* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.OperationConfig*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8*], align 16
  store %struct.OperationConfig* %0, %struct.OperationConfig** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = bitcast i8* %8 to [5 x i8*]*
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %14, align 16
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %44

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @curl_strequal(i8* %19, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %27 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @notef(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %43

33:                                               ; preds = %18
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @curl_strequal(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %39 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @warnf(i32 %40, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @curl_strequal(i8*, i8*) #2

declare dso_local i32 @notef(i32, i8*, i8*) #2

declare dso_local i32 @warnf(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
