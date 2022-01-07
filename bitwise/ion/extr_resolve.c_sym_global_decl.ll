; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_sym_global_decl.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_sym_global_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32, i32* }

@DECL_ENUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@TOKEN_ADD = common dso_local global i32 0, align 4
@enum_typespec = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @sym_global_decl(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = call %struct.TYPE_12__* @sym_decl(%struct.TYPE_14__* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = call i32 @sym_global_put(i8* %20, %struct.TYPE_12__* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DECL_ENUM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %107

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %38

36:                                               ; preds = %29
  %37 = call i8* @str_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i8* [ %35, %32 ], [ %37, %36 ]
  store i8* %39, i8** %4, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @new_typespec_name(i32 %42, i8** %4, i32 1)
  store i32* %43, i32** %5, align 8
  store i32* %43, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %103, %38
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %56
  %58 = bitcast %struct.TYPE_13__* %8 to i8*
  %59 = bitcast %struct.TYPE_13__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %9, align 8
  br label %86

66:                                               ; preds = %51
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TOKEN_ADD, align 4
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @new_expr_name(i32 %74, i8* %75)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @new_expr_int(i32 %78, i32 1, i32 0, i32 0)
  %80 = call i32* @new_expr_binary(i32 %71, i32 %72, i32 %76, i32* %79)
  store i32* %80, i32** %9, align 8
  br label %85

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32* @new_expr_int(i32 %83, i32 0, i32 0, i32 0)
  store i32* %84, i32** %9, align 8
  br label %85

85:                                               ; preds = %81, %69
  br label %86

86:                                               ; preds = %85, %63
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call %struct.TYPE_14__* @new_decl_const(i32 %88, i8* %90, i32* %91, i32* %92)
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %10, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = call %struct.TYPE_12__* @sym_global_decl(%struct.TYPE_14__* %99)
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %6, align 8
  br label %103

103:                                              ; preds = %86
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %7, align 8
  br label %44

106:                                              ; preds = %44
  br label %107

107:                                              ; preds = %106, %23
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %108
}

declare dso_local %struct.TYPE_12__* @sym_decl(%struct.TYPE_14__*) #1

declare dso_local i32 @sym_global_put(i8*, %struct.TYPE_12__*) #1

declare dso_local i8* @str_intern(i8*) #1

declare dso_local i32* @new_typespec_name(i32, i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @new_expr_binary(i32, i32, i32, i32*) #1

declare dso_local i32 @new_expr_name(i32, i8*) #1

declare dso_local i32* @new_expr_int(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @new_decl_const(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
