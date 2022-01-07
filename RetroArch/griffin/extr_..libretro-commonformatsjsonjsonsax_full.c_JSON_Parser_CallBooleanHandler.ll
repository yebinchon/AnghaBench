; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_CallBooleanHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_CallBooleanHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i32)*, i64, i32 }

@ParserState = common dso_local global i32 0, align 4
@PARSER_IN_TOKEN_HANDLER = common dso_local global i32 0, align 4
@T_TRUE = common dso_local global i64 0, align 8
@JSON_True = common dso_local global i32 0, align 4
@JSON_False = common dso_local global i32 0, align 4
@JSON_Parser_Continue = common dso_local global i64 0, align 8
@JSON_Error_AbortedByHandler = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @JSON_Parser_CallBooleanHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_CallBooleanHandler(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64 (%struct.TYPE_5__*, i32)*, i64 (%struct.TYPE_5__*, i32)** %6, align 8
  %8 = icmp ne i64 (%struct.TYPE_5__*, i32)* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load i32, i32* @ParserState, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %15 = call i32 @SET_FLAGS_ON(i32 %10, i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_5__*, i32)*, i64 (%struct.TYPE_5__*, i32)** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @T_TRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* @JSON_True, align 4
  br label %29

27:                                               ; preds = %9
  %28 = load i32, i32* @JSON_False, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i64 %18(%struct.TYPE_5__* %19, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i32, i32* @ParserState, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %37 = call i32 @SET_FLAGS_OFF(i32 %32, i32 %35, i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @JSON_Parser_Continue, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = load i32, i32* @JSON_Error_AbortedByHandler, align 4
  %44 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_5__* %42, i32 %43)
  %45 = load i32, i32* @JSON_Failure, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* @JSON_Success, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @SET_FLAGS_ON(i32, i32, i32) #1

declare dso_local i32 @SET_FLAGS_OFF(i32, i32, i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
