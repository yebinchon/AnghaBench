; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i64, i64* }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@RDT_NULL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@RDT_BOOL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64* } (i64, i64*, %struct.rmsgpack_dom_value*, i8**)* @query_parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64* } @query_parse_value(i64 %0, i64* %1, %struct.rmsgpack_dom_value* %2, i8** %3) #0 {
  %5 = alloca %struct.buffer, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.rmsgpack_dom_value*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.buffer, align 8
  %10 = alloca %struct.buffer, align 8
  %11 = alloca %struct.buffer, align 8
  %12 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %13 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %12, i32 0, i32 1
  store i64* %1, i64** %14, align 8
  store %struct.rmsgpack_dom_value* %2, %struct.rmsgpack_dom_value** %7, align 8
  store i8** %3, i8*** %8, align 8
  %15 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %16 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %15, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = call { i64, i64* } @query_chomp(i64 %17, i64* %19)
  %21 = bitcast %struct.buffer* %9 to { i64, i64* }*
  %22 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i64* } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i64* } %20, 1
  store i64* %25, i64** %24, align 8
  %26 = bitcast %struct.buffer* %6 to i8*
  %27 = bitcast %struct.buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %29 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %28, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = call i64 @query_peek(i64 %30, i64* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = call i64 @STRLEN_CONST(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load i8*, i8** @RDT_NULL, align 8
  %41 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %42 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %151

43:                                               ; preds = %4
  %44 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %45 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %44, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = call i64 @query_peek(i64 %46, i64* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = call i64 @STRLEN_CONST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i8*, i8** @RDT_BOOL, align 8
  %57 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %58 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %60 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %150

62:                                               ; preds = %43
  %63 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %64 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %63, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = call i64 @query_peek(i64 %65, i64* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = call i64 @STRLEN_CONST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %71
  store i64 %74, i64* %72, align 8
  %75 = load i8*, i8** @RDT_BOOL, align 8
  %76 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %77 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %79 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %149

81:                                               ; preds = %62
  %82 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %83 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %82, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = call i64 @query_peek(i64 %84, i64* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %81
  %90 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %91 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %90, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = call i64 @query_peek(i64 %92, i64* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %99 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %98, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = call i64 @query_peek(i64 %100, i64* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %97, %89, %81
  %106 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %107 = load i8**, i8*** %8, align 8
  %108 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %109 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %108, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = call { i64, i64* } @query_parse_string(i64 %110, i64* %112, %struct.rmsgpack_dom_value* %106, i8** %107)
  %114 = bitcast %struct.buffer* %10 to { i64, i64* }*
  %115 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %114, i32 0, i32 0
  %116 = extractvalue { i64, i64* } %113, 0
  store i64 %116, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %114, i32 0, i32 1
  %118 = extractvalue { i64, i64* } %113, 1
  store i64* %118, i64** %117, align 8
  %119 = bitcast %struct.buffer* %6 to i8*
  %120 = bitcast %struct.buffer* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  br label %148

121:                                              ; preds = %97
  %122 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i64 @isdigit(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %121
  %132 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %133 = load i8**, i8*** %8, align 8
  %134 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %135 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %134, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = call { i64, i64* } @query_parse_integer(i64 %136, i64* %138, %struct.rmsgpack_dom_value* %132, i8** %133)
  %140 = bitcast %struct.buffer* %11 to { i64, i64* }*
  %141 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %140, i32 0, i32 0
  %142 = extractvalue { i64, i64* } %139, 0
  store i64 %142, i64* %141, align 8
  %143 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %140, i32 0, i32 1
  %144 = extractvalue { i64, i64* } %139, 1
  store i64* %144, i64** %143, align 8
  %145 = bitcast %struct.buffer* %6 to i8*
  %146 = bitcast %struct.buffer* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 16, i1 false)
  br label %147

147:                                              ; preds = %131, %121
  br label %148

148:                                              ; preds = %147, %105
  br label %149

149:                                              ; preds = %148, %70
  br label %150

150:                                              ; preds = %149, %51
  br label %151

151:                                              ; preds = %150, %35
  %152 = bitcast %struct.buffer* %5 to i8*
  %153 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 16, i1 false)
  %154 = bitcast %struct.buffer* %5 to { i64, i64* }*
  %155 = load { i64, i64* }, { i64, i64* }* %154, align 8
  ret { i64, i64* } %155
}

declare dso_local { i64, i64* } @query_chomp(i64, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @query_peek(i64, i64*, i8*) #1

declare dso_local i64 @STRLEN_CONST(i8*) #1

declare dso_local { i64, i64* } @query_parse_string(i64, i64*, %struct.rmsgpack_dom_value*, i8**) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local { i64, i64* } @query_parse_integer(i64, i64*, %struct.rmsgpack_dom_value*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
