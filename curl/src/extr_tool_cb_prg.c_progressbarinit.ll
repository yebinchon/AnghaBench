; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_prg.c_progressbarinit.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_prg.c_progressbarinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ProgressData = type { i32, i32, i32, i32, i32 }
%struct.OperationConfig = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@MAX_BARLENGTH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@TIOCGSIZE = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @progressbarinit(%struct.ProgressData* %0, %struct.OperationConfig* %1) #0 {
  %3 = alloca %struct.ProgressData*, align 8
  %4 = alloca %struct.OperationConfig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ProgressData* %0, %struct.ProgressData** %3, align 8
  store %struct.OperationConfig* %1, %struct.OperationConfig** %4, align 8
  %9 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %10 = call i32 @memset(%struct.ProgressData* %9, i32 0, i32 20)
  %11 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %12 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %17 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %20 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = call i8* @curlx_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strtol(i8* %26, i8** %6, i32 10)
  store i64 %27, i64* %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = icmp eq i8* %32, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i64, i64* %7, align 8
  %41 = icmp sgt i64 %40, 20
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %43, 10000
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %49 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %42, %39, %31, %25
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @curl_free(i8* %51)
  br label %53

53:                                               ; preds = %50, %21
  %54 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %55 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %61 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %64 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %69 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %68, i32 0, i32 0
  store i32 79, i32* %69, align 4
  br label %81

70:                                               ; preds = %62
  %71 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %72 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAX_BARLENGTH, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @MAX_BARLENGTH, align 4
  %78 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %79 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %83 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %88 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %90 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %89, i32 0, i32 1
  store i32 150, i32* %90, align 4
  %91 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %92 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %91, i32 0, i32 2
  store i32 1, i32* %92, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ProgressData*, i32, i32) #1

declare dso_local i8* @curlx_getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @curl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
