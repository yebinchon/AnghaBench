; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgParseSchema.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgParseSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"failed to parse telegraf schema file:%s, invalid json format, content:%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"failed to parse telegraf schema file:%s, metrics size is 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tgParseSchema(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @cJSON_Parse(i8* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i8*, ...) @httpError(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  store i32 -1, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @cJSON_GetObjectItem(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @cJSON_GetArraySize(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i8*, i8*, ...) @httpError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @cJSON_Delete(i32* %32)
  store i32 -1, i32* %3, align 4
  br label %64

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @tgInitSchemas(i32 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %51, %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32* @cJSON_GetArrayItem(i32* %42, i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @tgParseSchemaMetric(i32* %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %37

54:                                               ; preds = %37
  br label %60

55:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @tgInitSchemas(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @tgParseSchemaMetric(i32* %58)
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @cJSON_Delete(i32* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %29, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @cJSON_Parse(i8*) #1

declare dso_local i32 @httpError(i8*, i8*, ...) #1

declare dso_local i32* @cJSON_GetObjectItem(i32*, i8*) #1

declare dso_local i32 @cJSON_GetArraySize(i32*) #1

declare dso_local i32 @cJSON_Delete(i32*) #1

declare dso_local i32 @tgInitSchemas(i32) #1

declare dso_local i32* @cJSON_GetArrayItem(i32*, i32) #1

declare dso_local i32 @tgParseSchemaMetric(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
