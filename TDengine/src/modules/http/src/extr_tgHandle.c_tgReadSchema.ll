; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgReadSchema.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgReadSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"open telegraf schema file:%s success\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to read telegraf schema file:%s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"parse telegraf schema file:%s, schema size:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tgReadSchema(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i8*, i8*, ...) @httpPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fseek(i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ftell(i32* %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @rewind(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = mul i64 %25, 1
  %27 = add i64 %26, 1
  %28 = call i64 @calloc(i64 %27, i32 1)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @fread(i8* %30, i32 1, i64 %31, i32* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %14
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @httpError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 -1, i32* %2, align 4
  br label %52

40:                                               ; preds = %14
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @tgParseSchema(i8* %41, i8* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i8*, i8*, ...) @httpPrint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %40, %37, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @httpPrint(i8*, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @httpError(i8*, i8*) #1

declare dso_local i32 @tgParseSchema(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
