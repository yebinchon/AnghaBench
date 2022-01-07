; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_at.c_bta_hf_client_parse_clcc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_at.c_bta_hf_client_parse_clcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"+CLCC:\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%hu,%hu,%hu,%hu,%hu%n\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c",\22%32[^\22]\22,%hu%n\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c",\22\22,%hu%n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @bta_hf_client_parse_clcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bta_hf_client_parse_clcc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [33 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @AT_CHECK_EVENT(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i32* %4 to i8*
  %18 = call i32 (i8*, i8*, i8*, i32*, ...) @sscanf(i8* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32* %5, i32* %6, i32* %7, i32* %8, i32* %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %87

22:                                               ; preds = %1
  %23 = load i32, i32* %12, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br i1 %30, label %31, label %64

31:                                               ; preds = %22
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %34 = call i32 (i8*, i8*, i8*, i32*, ...) @sscanf(i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %33, i32* %10, i32* %12)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  br label %87

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = bitcast i32* %10 to i8*
  %44 = call i32 (i8*, i8*, i8*, i32*, ...) @sscanf(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32* %12)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %87

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %51, align 16
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i8* null, i8** %2, align 8
  br label %87

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %56, %22
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @AT_CHECK_RN(i8* %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 6
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @bta_hf_client_handle_clcc(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i8* %75, i32 %76)
  br label %85

78:                                               ; preds = %64
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @bta_hf_client_handle_clcc(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i8* null, i32 0)
  br label %85

85:                                               ; preds = %78, %69
  %86 = load i8*, i8** %3, align 8
  store i8* %86, i8** %2, align 8
  br label %87

87:                                               ; preds = %85, %55, %47, %37, %21
  %88 = load i8*, i8** %2, align 8
  ret i8* %88
}

declare dso_local i32 @AT_CHECK_EVENT(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, ...) #1

declare dso_local i32 @AT_CHECK_RN(i8*) #1

declare dso_local i32 @bta_hf_client_handle_clcc(i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
