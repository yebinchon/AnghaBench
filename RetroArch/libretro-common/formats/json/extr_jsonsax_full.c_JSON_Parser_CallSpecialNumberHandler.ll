; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_CallSpecialNumberHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_CallSpecialNumberHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i32)*, i64, i32 }

@ParserState = common dso_local global i32 0, align 4
@PARSER_IN_TOKEN_HANDLER = common dso_local global i32 0, align 4
@T_NAN = common dso_local global i64 0, align 8
@JSON_NaN = common dso_local global i32 0, align 4
@T_INFINITY = common dso_local global i64 0, align 8
@JSON_Infinity = common dso_local global i32 0, align 4
@JSON_NegativeInfinity = common dso_local global i32 0, align 4
@JSON_Parser_Continue = common dso_local global i64 0, align 8
@JSON_Error_AbortedByHandler = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @JSON_Parser_CallSpecialNumberHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_CallSpecialNumberHandler(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64 (%struct.TYPE_5__*, i32)*, i64 (%struct.TYPE_5__*, i32)** %6, align 8
  %8 = icmp ne i64 (%struct.TYPE_5__*, i32)* %7, null
  br i1 %8, label %9, label %57

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
  %23 = load i64, i64* @T_NAN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* @JSON_NaN, align 4
  br label %39

27:                                               ; preds = %9
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @T_INFINITY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @JSON_Infinity, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @JSON_NegativeInfinity, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %25
  %40 = phi i32 [ %26, %25 ], [ %38, %37 ]
  %41 = call i64 %18(%struct.TYPE_5__* %19, i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i32, i32* @ParserState, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %47 = call i32 @SET_FLAGS_OFF(i32 %42, i32 %45, i32 %46)
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @JSON_Parser_Continue, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = load i32, i32* @JSON_Error_AbortedByHandler, align 4
  %54 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_5__* %52, i32 %53)
  %55 = load i32, i32* @JSON_Failure, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* @JSON_Success, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* %2, align 4
  ret i32 %60
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
