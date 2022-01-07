; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_argument.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer = type { i64, i64* }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"b\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"b'\00", align 1
@AT_FUNCTION = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@AT_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64* } (i64, i64*, %struct.argument*, i8**)* @query_parse_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64* } @query_parse_argument(i64 %0, i64* %1, %struct.argument* %2, i8** %3) #0 {
  %5 = alloca %struct.buffer, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.argument*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.buffer, align 8
  %10 = alloca %struct.buffer, align 8
  %11 = alloca %struct.buffer, align 8
  %12 = alloca %struct.buffer, align 8
  %13 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %13, i32 0, i32 0
  store i64 %0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %13, i32 0, i32 1
  store i64* %1, i64** %15, align 8
  store %struct.argument* %2, %struct.argument** %7, align 8
  store i8** %3, i8*** %8, align 8
  %16 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %17 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %16, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = call { i64, i64* } @query_chomp(i64 %18, i64* %20)
  %22 = bitcast %struct.buffer* %9 to { i64, i64* }*
  %23 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %22, i32 0, i32 0
  %24 = extractvalue { i64, i64* } %21, 0
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %22, i32 0, i32 1
  %26 = extractvalue { i64, i64* } %21, 1
  store i64* %26, i64** %25, align 8
  %27 = bitcast %struct.buffer* %6 to i8*
  %28 = bitcast %struct.buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @isalpha(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %4
  %39 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %40 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %39, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = call i64 @query_peek(i64 %41, i64* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %99, label %46

46:                                               ; preds = %38
  %47 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %48 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %47, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i64 @query_peek(i64 %49, i64* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %99, label %54

54:                                               ; preds = %46
  %55 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %56 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %55, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = call i64 @query_peek(i64 %57, i64* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %99, label %62

62:                                               ; preds = %54
  %63 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %64 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %63, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = call i64 @query_peek(i64 %65, i64* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %62
  %71 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %72 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %71, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = call i64 @query_peek(i64 %73, i64* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** @AT_FUNCTION, align 8
  %80 = load %struct.argument*, %struct.argument** %7, align 8
  %81 = getelementptr inbounds %struct.argument, %struct.argument* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.argument*, %struct.argument** %7, align 8
  %83 = getelementptr inbounds %struct.argument, %struct.argument* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %8, align 8
  %86 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %87 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %86, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = call { i64, i64* } @query_parse_method_call(i64 %88, i64* %90, i32* %84, i8** %85)
  %92 = bitcast %struct.buffer* %10 to { i64, i64* }*
  %93 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %92, i32 0, i32 0
  %94 = extractvalue { i64, i64* } %91, 0
  store i64 %94, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %92, i32 0, i32 1
  %96 = extractvalue { i64, i64* } %91, 1
  store i64* %96, i64** %95, align 8
  %97 = bitcast %struct.buffer* %6 to i8*
  %98 = bitcast %struct.buffer* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  br label %150

99:                                               ; preds = %70, %62, %54, %46, %38, %4
  %100 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %101 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %100, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = call i64 @query_peek(i64 %102, i64* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %99
  %108 = load i8*, i8** @AT_FUNCTION, align 8
  %109 = load %struct.argument*, %struct.argument** %7, align 8
  %110 = getelementptr inbounds %struct.argument, %struct.argument* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.argument*, %struct.argument** %7, align 8
  %112 = getelementptr inbounds %struct.argument, %struct.argument* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %8, align 8
  %115 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %116 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %115, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = call { i64, i64* } @query_parse_table(i64 %117, i64* %119, i32* %113, i8** %114)
  %121 = bitcast %struct.buffer* %11 to { i64, i64* }*
  %122 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %121, i32 0, i32 0
  %123 = extractvalue { i64, i64* } %120, 0
  store i64 %123, i64* %122, align 8
  %124 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %121, i32 0, i32 1
  %125 = extractvalue { i64, i64* } %120, 1
  store i64* %125, i64** %124, align 8
  %126 = bitcast %struct.buffer* %6 to i8*
  %127 = bitcast %struct.buffer* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 16, i1 false)
  br label %149

128:                                              ; preds = %99
  %129 = load i8*, i8** @AT_VALUE, align 8
  %130 = load %struct.argument*, %struct.argument** %7, align 8
  %131 = getelementptr inbounds %struct.argument, %struct.argument* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.argument*, %struct.argument** %7, align 8
  %133 = getelementptr inbounds %struct.argument, %struct.argument* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i8**, i8*** %8, align 8
  %136 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %137 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %136, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = call { i64, i64* } @query_parse_value(i64 %138, i64* %140, i32* %134, i8** %135)
  %142 = bitcast %struct.buffer* %12 to { i64, i64* }*
  %143 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %142, i32 0, i32 0
  %144 = extractvalue { i64, i64* } %141, 0
  store i64 %144, i64* %143, align 8
  %145 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %142, i32 0, i32 1
  %146 = extractvalue { i64, i64* } %141, 1
  store i64* %146, i64** %145, align 8
  %147 = bitcast %struct.buffer* %6 to i8*
  %148 = bitcast %struct.buffer* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  br label %149

149:                                              ; preds = %128, %107
  br label %150

150:                                              ; preds = %149, %78
  %151 = bitcast %struct.buffer* %5 to i8*
  %152 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 16, i1 false)
  %153 = bitcast %struct.buffer* %5 to { i64, i64* }*
  %154 = load { i64, i64* }, { i64, i64* }* %153, align 8
  ret { i64, i64* } %154
}

declare dso_local { i64, i64* } @query_chomp(i64, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @query_peek(i64, i64*, i8*) #1

declare dso_local { i64, i64* } @query_parse_method_call(i64, i64*, i32*, i8**) #1

declare dso_local { i64, i64* } @query_parse_table(i64, i64*, i32*, i8**) #1

declare dso_local { i64, i64* } @query_parse_value(i64, i64*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
