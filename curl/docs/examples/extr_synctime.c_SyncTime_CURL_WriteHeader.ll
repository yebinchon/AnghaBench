; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_synctime.c_SyncTime_CURL_WriteHeader.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_synctime.c_SyncTime_CURL_WriteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ShowAllHeader = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"HTTP Server. %s\00", align 1
@AutoSyncTime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Date: %s %hu %s %hu %hu:%hu:%hu\00", align 1
@SYSTime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MthStr = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"X-Cache: HIT\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"ERROR: HTTP Server data is cached. Server Date is no longer valid.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SyncTime_CURL_WriteHeader(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [26 x i8], align 16
  %10 = alloca [26 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @ShowAllHeader, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i32, i32* @ShowAllHeader, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @AutoSyncTime, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  %35 = getelementptr inbounds [26 x i8], [26 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %35, align 16
  %36 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp sgt i32 %38, 50
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* @AutoSyncTime, align 4
  br label %71

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds [26 x i8], [26 x i8]* %9, i64 0, i64 0
  %44 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %45 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 6), i8* %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 5), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 2))
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  store i32 500, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 0), align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 12
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32*, i32** @MthStr, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %59 = call i64 @strcmp(i32 %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSTime, i32 0, i32 1), align 4
  br label %68

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %49

68:                                               ; preds = %61, %49
  store i32 3, i32* @AutoSyncTime, align 4
  br label %70

69:                                               ; preds = %41
  store i32 0, i32* @AutoSyncTime, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %40
  br label %72

72:                                               ; preds = %71, %31
  br label %73

73:                                               ; preds = %72, %20
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @AutoSyncTime, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %6, align 8
  %83 = mul i64 %81, %82
  ret i64 %83
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
