; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_parser_init.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_parser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8*, i8*, i32, i64, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@on_form_data_name = common dso_local global i32 0, align 4
@on_query_string_field = common dso_local global i32 0, align 4
@on_query_string_value = common dso_local global i32 0, align 4
@s_param_start = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @param_parser_init(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = call i32 @form_data_parser_init(%struct.TYPE_12__* %13, %struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 9
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = call i32 @query_string_parser_init(%struct.TYPE_11__* %17, %struct.TYPE_9__* %18)
  %20 = load i32, i32* @on_form_data_name, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @on_query_string_field, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @on_query_string_value, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i8*, i8** @s_param_start, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 7
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memset(i32 %51, i32 0, i32 4)
  %53 = load i8*, i8** @s_param_start, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i8* %53, i8** %57, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %110, %5
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %70 [
    i32 128, label %71
    i32 129, label %96
  ]

70:                                               ; preds = %63
  br label %109

71:                                               ; preds = %63
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @s_param_start, align 8
  %76 = icmp eq i8* %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %81, i64 %88
  %90 = bitcast i8* %89 to i32*
  store i32 -1, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  br label %109

96:                                               ; preds = %63
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** @s_param_start, align 8
  %101 = icmp eq i8* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %96, %71, %70
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %58

113:                                              ; preds = %58
  ret void
}

declare dso_local i32 @form_data_parser_init(%struct.TYPE_12__*, %struct.TYPE_9__*) #1

declare dso_local i32 @query_string_parser_init(%struct.TYPE_11__*, %struct.TYPE_9__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
