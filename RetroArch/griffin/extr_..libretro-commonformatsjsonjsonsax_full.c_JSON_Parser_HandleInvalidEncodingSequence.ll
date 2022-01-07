; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_HandleInvalidEncodingSequence.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_HandleInvalidEncodingSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@T_STRING = common dso_local global i64 0, align 8
@PARSER_REPLACE_INVALID = common dso_local global i32 0, align 4
@TokenAttributes = common dso_local global i32 0, align 4
@JSON_ContainsReplacedCharacter = common dso_local global i32 0, align 4
@REPLACEMENT_CHARACTER_CODEPOINT = common dso_local global i32 0, align 4
@PARSER_EMBEDDED_DOCUMENT = common dso_local global i32 0, align 4
@JSON_Error_InvalidEncodingSequence = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @JSON_Parser_HandleInvalidEncodingSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @T_STRING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PARSER_REPLACE_INVALID, align 4
  %16 = call i64 @GET_FLAGS(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i32, i32* @TokenAttributes, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @JSON_ContainsReplacedCharacter, align 4
  %24 = call i32 @SET_FLAGS_ON(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* @REPLACEMENT_CHARACTER_CODEPOINT, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @JSON_Parser_ProcessCodepoint(%struct.TYPE_7__* %25, i32 %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %11, %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PARSER_EMBEDDED_DOCUMENT, align 4
  %39 = call i64 @GET_FLAGS(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = call i64 @JSON_Parser_FlushLexer(%struct.TYPE_7__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i64 @JSON_Parser_FlushParser(%struct.TYPE_7__* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %34, %29
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i32, i32* @JSON_Error_InvalidEncodingSequence, align 4
  %56 = call i32 @JSON_Parser_SetErrorAtCodepoint(%struct.TYPE_7__* %54, i32 %55)
  %57 = load i32, i32* @JSON_Failure, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %49, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i32 @SET_FLAGS_ON(i32, i32, i32) #1

declare dso_local i32 @JSON_Parser_ProcessCodepoint(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i64 @JSON_Parser_FlushLexer(%struct.TYPE_7__*) #1

declare dso_local i64 @JSON_Parser_FlushParser(%struct.TYPE_7__*) #1

declare dso_local i32 @JSON_Parser_SetErrorAtCodepoint(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
