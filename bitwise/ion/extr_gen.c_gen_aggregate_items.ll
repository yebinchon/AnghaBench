; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_aggregate_items.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_aggregate_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@gen_indent = common dso_local global i32 0, align 4
@AGGREGATE_ITEM_FIELD = common dso_local global i64 0, align 8
@TYPESPEC_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@AGGREGATE_ITEM_SUBAGGREGATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s {\00", align 1
@AGGREGATE_STRUCT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"};\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_aggregate_items(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load i32, i32* @gen_indent, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @gen_indent, align 4
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %100, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %103

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = bitcast %struct.TYPE_6__* %4 to i8*
  %21 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 48, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AGGREGATE_ITEM_FIELD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gen_sync_pos(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TYPESPEC_ARRAY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_8__* @new_typespec_ptr(i32 %50, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @typespec_to_cdecl(%struct.TYPE_8__* %55, i32 %60)
  %62 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %73

63:                                               ; preds = %42, %32
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @typespec_to_cdecl(%struct.TYPE_8__* %65, i32 %70)
  %72 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %63, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %27

77:                                               ; preds = %27
  br label %99

78:                                               ; preds = %14
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AGGREGATE_ITEM_SUBAGGREGATE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AGGREGATE_STRUCT, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %92 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  call void @gen_aggregate_items(%struct.TYPE_7__* %94)
  %95 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %98

96:                                               ; preds = %78
  %97 = call i32 @assert(i32 0)
  br label %98

98:                                               ; preds = %96, %83
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %3, align 8
  br label %8

103:                                              ; preds = %8
  %104 = load i32, i32* @gen_indent, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* @gen_indent, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gen_sync_pos(i32) #2

declare dso_local i32 @genlnf(i8*, ...) #2

declare dso_local i32 @typespec_to_cdecl(%struct.TYPE_8__*, i32) #2

declare dso_local %struct.TYPE_8__* @new_typespec_ptr(i32, i32) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
