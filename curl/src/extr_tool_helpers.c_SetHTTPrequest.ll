; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_helpers.c_SetHTTPrequest.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_helpers.c_SetHTTPrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GET (-G, --get)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"HEAD (-I, --head)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"multipart formpost (-F, --form)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"POST (-d, --data)\00", align 1
@HTTPREQ_UNSPEC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [76 x i8] c"You can only select one HTTP request method! You asked for both %s and %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetHTTPrequest(%struct.OperationConfig* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.OperationConfig*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [5 x i8*], align 16
  store %struct.OperationConfig* %0, %struct.OperationConfig** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = bitcast i8* %9 to [5 x i8*]*
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 16
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HTTPREQ_UNSPEC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.OperationConfig*, %struct.OperationConfig** %5, align 8
  %30 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @warnf(i32 %31, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i8* %34, i8* %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @warnf(i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
