; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_ftpcccmethod.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_ftpcccmethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@CURLFTPSSL_CCC_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@CURLFTPSSL_CCC_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"unrecognized ftp CCC method '%s', using default\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftpcccmethod(%struct.OperationConfig* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.OperationConfig*, align 8
  %5 = alloca i8*, align 8
  store %struct.OperationConfig* %0, %struct.OperationConfig** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @curl_strequal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @CURLFTPSSL_CCC_PASSIVE, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @curl_strequal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @CURLFTPSSL_CCC_ACTIVE, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %19 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @warnf(i32 %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @CURLFTPSSL_CCC_PASSIVE, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %15, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @curl_strequal(i8*, i8*) #1

declare dso_local i32 @warnf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
