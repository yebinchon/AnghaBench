; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_ProcessToken.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_ProcessToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, i32, i32, i32 }

@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Error_UnexpectedToken = common dso_local global i32 0, align 4
@JSON_Error_OutOfMemory = common dso_local global i32 0, align 4
@LEXING_WHITESPACE = common dso_local global i32 0, align 4
@T_NONE = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @JSON_Parser_ProcessToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_ProcessToken(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %12 = call i32 @Grammarian_ProcessToken(i32* %6, i32 %9, i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GRAMMARIAN_RESULT_CODE(i32 %13)
  switch i32 %14, label %34 [
    i32 130, label %15
    i32 129, label %24
    i32 128, label %29
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GRAMMARIAN_EVENT(i32 %17)
  %19 = call i32 @JSON_Parser_HandleGrammarEvents(%struct.TYPE_6__* %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @JSON_Failure, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %15
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i32, i32* @JSON_Error_UnexpectedToken, align 4
  %27 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__* %25, i32 %26)
  %28 = load i32, i32* @JSON_Failure, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* @JSON_Error_OutOfMemory, align 4
  %32 = call i32 @JSON_Parser_SetErrorAtCodepoint(%struct.TYPE_6__* %30, i32 %31)
  %33 = load i32, i32* @JSON_Failure, align 4
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %1, %23
  %35 = load i32, i32* @LEXING_WHITESPACE, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @T_NONE, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @JSON_Success, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %34, %29, %24, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @Grammarian_ProcessToken(i32*, i32, i32*) #1

declare dso_local i32 @GRAMMARIAN_RESULT_CODE(i32) #1

declare dso_local i32 @JSON_Parser_HandleGrammarEvents(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GRAMMARIAN_EVENT(i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtCodepoint(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
