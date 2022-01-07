; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_sorted_decls.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_sorted_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@tuple_types = common dso_local global %struct.TYPE_11__** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"struct tuple%d {\00", align 1
@gen_indent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@sorted_syms = common dso_local global %struct.TYPE_11__** null, align 8
@REACHABLE_NATURAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_sorted_decls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %58, %0
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @tuple_types, align 8
  %10 = call i64 @buf_len(%struct.TYPE_11__** %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @tuple_types, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %13, i64 %15
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %2, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = call i32 @is_tuple_reachable(%struct.TYPE_11__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %58

22:                                               ; preds = %12
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @gen_indent, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @gen_indent, align 4
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %51, %22
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %41
  %43 = bitcast %struct.TYPE_10__* %4 to i8*
  %44 = bitcast %struct.TYPE_10__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @type_to_cdecl(i32 %46, i32 %48)
  %50 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* @gen_indent, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* @gen_indent, align 4
  %57 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %21
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %6

61:                                               ; preds = %6
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @sorted_syms, align 8
  %65 = call i64 @buf_len(%struct.TYPE_11__** %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @sorted_syms, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REACHABLE_NATURAL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @sorted_syms, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %77, i64 %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call i32 @gen_decl(%struct.TYPE_11__* %80)
  br label %82

82:                                               ; preds = %76, %67
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %5, align 8
  br label %62

86:                                               ; preds = %62
  ret void
}

declare dso_local i64 @buf_len(%struct.TYPE_11__**) #1

declare dso_local i32 @is_tuple_reachable(%struct.TYPE_11__*) #1

declare dso_local i32 @genlnf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @type_to_cdecl(i32, i32) #1

declare dso_local i32 @gen_decl(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
