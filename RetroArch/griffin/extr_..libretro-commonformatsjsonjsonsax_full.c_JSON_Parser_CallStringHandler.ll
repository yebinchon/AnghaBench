; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_CallStringHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Parser_CallStringHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i32, i32, i32, i64 }

@ParserState = common dso_local global i32 0, align 4
@PARSER_IN_TOKEN_HANDLER = common dso_local global i32 0, align 4
@JSON_Parser_Continue = common dso_local global i64 0, align 8
@JSON_Parser_TreatAsDuplicateObjectMember = common dso_local global i64 0, align 8
@JSON_Error_DuplicateObjectMember = common dso_local global i32 0, align 4
@JSON_Error_AbortedByHandler = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @JSON_Parser_CallStringHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_CallStringHandler(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64 (%struct.TYPE_6__*, i8*, i32, i32)*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %12, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i64 (%struct.TYPE_6__*, i8*, i32, i32)* [ %13, %10 ], [ %17, %14 ]
  store i64 (%struct.TYPE_6__*, i8*, i32, i32)* %19, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %6, align 8
  %20 = load i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %6, align 8
  %21 = icmp ne i64 (%struct.TYPE_6__*, i8*, i32, i32)* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i32 @JSON_Parser_NullTerminateToken(%struct.TYPE_6__* %23)
  %25 = load i32, i32* @ParserState, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %30 = call i32 @SET_FLAGS_ON(i32 %25, i32 %28, i32 %29)
  %31 = load i64 (%struct.TYPE_6__*, i8*, i32, i32)*, i64 (%struct.TYPE_6__*, i8*, i32, i32)** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 %31(%struct.TYPE_6__* %32, i8* %36, i32 %39, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* @ParserState, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PARSER_IN_TOKEN_HANDLER, align 4
  %49 = call i32 @SET_FLAGS_OFF(i32 %44, i32 %47, i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @JSON_Parser_Continue, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %22
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @JSON_Parser_TreatAsDuplicateObjectMember, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @JSON_Error_DuplicateObjectMember, align 4
  br label %65

63:                                               ; preds = %57, %53
  %64 = load i32, i32* @JSON_Error_AbortedByHandler, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @JSON_Parser_SetErrorAtToken(%struct.TYPE_6__* %54, i32 %66)
  %68 = load i32, i32* @JSON_Failure, align 4
  store i32 %68, i32* %3, align 4
  br label %72

69:                                               ; preds = %22
  br label %70

70:                                               ; preds = %69, %18
  %71 = load i32, i32* @JSON_Success, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %3, align 4
  ret i32 %73
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
