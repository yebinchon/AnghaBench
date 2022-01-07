; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_generate_opcode_cc_variants.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_generate_opcode_cc_variants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"COND_%s()\00", align 1
@g_cc_table = common dso_local global i8*** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"COND_NOT_%s()\00", align 1
@ID_OPHANDLER_CC = common dso_local global i32 0, align 4
@ID_OPHANDLER_NOT_CC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_opcode_cc_variants(i32* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca [20 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = call %struct.TYPE_11__* @malloc(i32 16)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %15, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = bitcast %struct.TYPE_11__* %20 to i8*
  %23 = bitcast %struct.TYPE_11__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, 3840
  store i32 %27, i32* %25, align 8
  store i32 2, i32* %13, align 4
  br label %28

28:                                               ; preds = %89, %5
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %92

31:                                               ; preds = %28
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %33 = load i8***, i8**** @g_cc_table, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8**, i8*** %33, i64 %35
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %42 = load i8***, i8**** @g_cc_table, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8**, i8*** %42, i64 %44
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = load i32, i32* @ID_OPHANDLER_CC, align 4
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %53 = call i32 @add_replace_string(%struct.TYPE_10__* %50, i32 %51, i8* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = load i32, i32* @ID_OPHANDLER_NOT_CC, align 4
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %57 = call i32 @add_replace_string(%struct.TYPE_10__* %54, i32 %55, i8* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i8***, i8**** @g_cc_table, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8**, i8*** %64, i64 %66
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcpy(i64 %63, i8* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 61695
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %85 = call i32 @generate_opcode_ea_variants(i32* %81, i32* %82, %struct.TYPE_10__* %83, %struct.TYPE_11__* %84)
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %31
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %28

92:                                               ; preds = %28
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %94 = call i32 @free(%struct.TYPE_11__* %93)
  ret void
}

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @add_replace_string(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @generate_opcode_ea_variants(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
