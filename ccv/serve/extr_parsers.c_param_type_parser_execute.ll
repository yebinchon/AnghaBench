; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_type_parser_execute.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_type_parser_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@s_numeric_illegal = common dso_local global i32 0, align 4
@s_param_skip = common dso_local global i8* null, align 8
@s_bool_illegal = common dso_local global i32 0, align 4
@s_coord_illegal = common dso_local global i32 0, align 4
@s_string_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i64)* @param_type_parser_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @param_type_parser_execute(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %100 [
    i32 131, label %22
    i32 132, label %22
    i32 133, label %22
    i32 134, label %22
    i32 135, label %40
    i32 129, label %58
    i32 130, label %58
    i32 128, label %76
    i32 137, label %94
    i32 136, label %94
  ]

22:                                               ; preds = %3, %3, %3, %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @numeric_parser_execute(%struct.TYPE_11__* %24, i8* %25, i64 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @s_numeric_illegal, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i8*, i8** @s_param_skip, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %22
  br label %100

40:                                               ; preds = %3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @bool_parser_execute(%struct.TYPE_13__* %42, i8* %43, i64 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @s_bool_illegal, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i8*, i8** @s_param_skip, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %40
  br label %100

58:                                               ; preds = %3, %3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @coord_parser_execute(%struct.TYPE_12__* %60, i8* %61, i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @s_coord_illegal, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load i8*, i8** @s_param_skip, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %58
  br label %100

76:                                               ; preds = %3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @string_parser_execute(%struct.TYPE_10__* %78, i8* %79, i64 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @s_string_overflow, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i8*, i8** @s_param_skip, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %76
  br label %100

94:                                               ; preds = %3, %3
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i8*, i8** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @blob_parser_execute(i32* %96, i8* %97, i64 %98)
  br label %100

100:                                              ; preds = %3, %94, %93, %75, %57, %39
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @numeric_parser_execute(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @bool_parser_execute(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @coord_parser_execute(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @string_parser_execute(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @blob_parser_execute(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
