; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_CallNumberHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_CallNumberHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i32, i32, i32, i64 }

@ParserState = common dso_local global i32 0, align 4
@PARSER_IN_TOKEN_HANDLER = common dso_local global i32 0, align 4
@JSON_Parser_Continue = common dso_local global i64 0, align 8
@JSON_Error_AbortedByHandler = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @JSON_Parser_CallNumberHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_CallNumberHandler(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %6, align 8
  %8 = icmp ne i64 (%struct.TYPE_6__*, i8*, i32, i32)* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @JSON_Parser_NullTerminateToken(%struct.TYPE_6__* %10)
  %12 = load i32, i32* @ParserState, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %17 = call i32 @SET_FLAGS_ON(i32 %12, i32 %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 %20(%struct.TYPE_6__* %21, i8* %25, i32 %28, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i32, i32* @ParserState, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %38 = call i32 @SET_FLAGS_OFF(i32 %33, i32 %36, i32 %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @JSON_Parser_Continue, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %9
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load i32, i32* @JSON_Error_AbortedByHandler, align 4
  %45 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__* %43, i32 %44)
  %46 = load i32, i32* @JSON_Failure, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %9
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* @JSON_Success, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @JSON_Parser_NullTerminateToken(%struct.TYPE_6__*) #1

declare dso_local i32 @SET_FLAGS_ON(i32, i32, i32) #1

declare dso_local i32 @SET_FLAGS_OFF(i32, i32, i32) #1

declare dso_local i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
