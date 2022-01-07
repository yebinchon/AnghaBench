; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_read_history.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_read_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@history = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_HISTORY_SIZE = common dso_local global i32 0, align 4
@TSDB_FILENAME_LEN = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Opening file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_history() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %9 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memset(i32* %8, i32 0, i32 %12)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 8
  store i8* null, i8** %1, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = call i32 @get_history_path(i8* %17)
  %19 = load i32, i32* @R_OK, align 4
  %20 = call i32 @access(i8* %17, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %66

23:                                               ; preds = %0
  %24 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 1, i32* %6, align 4
  br label %66

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @getline(i8** %1, i64* %2, i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i8*, i8** %1, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %1, align 8
  %42 = call i32 @strdup(i8* %41)
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 8
  %47 = add i64 %46, 1
  %48 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = urem i64 %47, %49
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  br label %60

60:                                               ; preds = %55, %35
  br label %31

61:                                               ; preds = %31
  %62 = load i8*, i8** %1, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @fclose(i32* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %27, %22
  %67 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_history_path(i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
