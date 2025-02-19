; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_CallSimpleTokenHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_CallSimpleTokenHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ParserState = common dso_local global i32 0, align 4
@PARSER_IN_TOKEN_HANDLER = common dso_local global i32 0, align 4
@JSON_Parser_Continue = common dso_local global i64 0, align 8
@JSON_Error_AbortedByHandler = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64 (%struct.TYPE_6__*)*)* @JSON_Parser_CallSimpleTokenHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_CallSimpleTokenHandler(%struct.TYPE_6__* %0, i64 (%struct.TYPE_6__*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64 (%struct.TYPE_6__*)*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 (%struct.TYPE_6__*)* %1, i64 (%struct.TYPE_6__*)** %5, align 8
  %7 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %5, align 8
  %8 = icmp ne i64 (%struct.TYPE_6__*)* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i32, i32* @ParserState, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %15 = call i32 @SET_FLAGS_ON(i32 %10, i32 %13, i32 %14)
  %16 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i64 %16(%struct.TYPE_6__* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* @ParserState, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %24 = call i32 @SET_FLAGS_OFF(i32 %19, i32 %22, i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @JSON_Parser_Continue, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %9
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i32, i32* @JSON_Error_AbortedByHandler, align 4
  %31 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__* %29, i32 %30)
  %32 = load i32, i32* @JSON_Failure, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %9
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* @JSON_Success, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @SET_FLAGS_ON(i32, i32, i32) #1

declare dso_local i32 @SET_FLAGS_OFF(i32, i32, i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
