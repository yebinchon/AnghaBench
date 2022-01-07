; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_array.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_array.x = private unnamed_addr constant [3 x i32] [i32 1, i32 3, i32 5], align 4
@__const.test_array.ye = private unnamed_addr constant [12 x i32] [i32 1, i32 3, i32 5, i32 2, i32 4, i32 6, i32 3, i32 5, i32 7, i32 0, i32 0, i32 0], align 16
@__const.test_array.y1 = private unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 1, i32 3, i32 5], [3 x i32] [i32 2, i32 4, i32 6], [3 x i32] [i32 3, i32 5, i32 7], [3 x i32] zeroinitializer], align 16
@__const.test_array.y2 = private unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 1, i32 3, i32 5], [3 x i32] [i32 2, i32 4, i32 6], [3 x i32] [i32 3, i32 5, i32 7], [3 x i32] zeroinitializer], align 16
@__const.test_array.a = private unnamed_addr constant [1 x i32] [i32 3], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_array() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [12 x i32], align 16
  %3 = alloca [4 x [3 x i32]], align 16
  %4 = alloca [4 x [3 x i32]], align 16
  %5 = alloca [12 x i32], align 16
  %6 = alloca [4 x [3 x i32]], align 16
  %7 = alloca [24 x i16], align 16
  %8 = alloca [4 x [3 x [2 x i16]]], align 16
  %9 = alloca [1 x i32], align 4
  %10 = bitcast [3 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x i32]* @__const.test_array.x to i8*), i64 12, i1 false)
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @expect(i32 1, i32 %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @expect(i32 3, i32 %15)
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @expect(i32 5, i32 %18)
  %20 = bitcast [12 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([12 x i32]* @__const.test_array.ye to i8*), i64 48, i1 false)
  %21 = bitcast [4 x [3 x i32]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x [3 x i32]]* @__const.test_array.y1 to i8*), i64 48, i1 false)
  %22 = getelementptr inbounds [12 x i32], [12 x i32]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %3, i64 0, i64 0
  %24 = bitcast [3 x i32]* %23 to i32**
  %25 = call i32 @verify(i32* %22, i32** %24, i32 12)
  %26 = bitcast [4 x [3 x i32]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([4 x [3 x i32]]* @__const.test_array.y2 to i8*), i64 48, i1 false)
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %2, i64 0, i64 0
  %28 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %4, i64 0, i64 0
  %29 = bitcast [3 x i32]* %28 to i32**
  %30 = call i32 @verify(i32* %27, i32** %29, i32 12)
  %31 = bitcast [12 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 48, i1 false)
  %32 = bitcast i8* %31 to [12 x i32]*
  %33 = getelementptr inbounds [12 x i32], [12 x i32]* %32, i32 0, i32 0
  store i32 1, i32* %33, align 16
  %34 = getelementptr inbounds [12 x i32], [12 x i32]* %32, i32 0, i32 3
  store i32 2, i32* %34, align 4
  %35 = getelementptr inbounds [12 x i32], [12 x i32]* %32, i32 0, i32 6
  store i32 3, i32* %35, align 8
  %36 = getelementptr inbounds [12 x i32], [12 x i32]* %32, i32 0, i32 9
  store i32 4, i32* %36, align 4
  %37 = bitcast [4 x [3 x i32]]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 48, i1 false)
  %38 = bitcast i8* %37 to [4 x [3 x i32]]*
  %39 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %38, i32 0, i32 0
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i32 0, i32 0
  store i32 1, i32* %40, align 16
  %41 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %38, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i32 0, i32 0
  store i32 2, i32* %42, align 4
  %43 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %38, i32 0, i32 2
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %43, i32 0, i32 0
  store i32 3, i32* %44, align 8
  %45 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %38, i32 0, i32 3
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i32 0, i32 0
  store i32 4, i32* %46, align 4
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %6, i64 0, i64 0
  %49 = bitcast [3 x i32]* %48 to i32**
  %50 = call i32 @verify(i32* %47, i32** %49, i32 12)
  %51 = bitcast [24 x i16]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 48, i1 false)
  %52 = bitcast i8* %51 to <{ [15 x i16], [9 x i16] }>*
  %53 = getelementptr inbounds <{ [15 x i16], [9 x i16] }>, <{ [15 x i16], [9 x i16] }>* %52, i32 0, i32 0
  %54 = getelementptr inbounds [15 x i16], [15 x i16]* %53, i32 0, i32 0
  store i16 1, i16* %54, align 16
  %55 = getelementptr inbounds [15 x i16], [15 x i16]* %53, i32 0, i32 6
  store i16 2, i16* %55, align 4
  %56 = getelementptr inbounds [15 x i16], [15 x i16]* %53, i32 0, i32 7
  store i16 3, i16* %56, align 2
  %57 = getelementptr inbounds [15 x i16], [15 x i16]* %53, i32 0, i32 12
  store i16 4, i16* %57, align 8
  %58 = getelementptr inbounds [15 x i16], [15 x i16]* %53, i32 0, i32 13
  store i16 5, i16* %58, align 2
  %59 = getelementptr inbounds [15 x i16], [15 x i16]* %53, i32 0, i32 14
  store i16 6, i16* %59, align 4
  %60 = bitcast [4 x [3 x [2 x i16]]]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 48, i1 false)
  %61 = bitcast i8* %60 to [4 x [3 x [2 x i16]]]*
  %62 = getelementptr inbounds [4 x [3 x [2 x i16]]], [4 x [3 x [2 x i16]]]* %61, i32 0, i32 0
  %63 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x i16], [2 x i16]* %63, i32 0, i32 0
  store i16 1, i16* %64, align 16
  %65 = getelementptr inbounds [4 x [3 x [2 x i16]]], [4 x [3 x [2 x i16]]]* %61, i32 0, i32 1
  %66 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x i16], [2 x i16]* %66, i32 0, i32 0
  store i16 2, i16* %67, align 4
  %68 = getelementptr inbounds [2 x i16], [2 x i16]* %66, i32 0, i32 1
  store i16 3, i16* %68, align 2
  %69 = getelementptr inbounds [4 x [3 x [2 x i16]]], [4 x [3 x [2 x i16]]]* %61, i32 0, i32 2
  %70 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* %69, i32 0, i32 0
  %71 = getelementptr inbounds [2 x i16], [2 x i16]* %70, i32 0, i32 0
  store i16 4, i16* %71, align 8
  %72 = getelementptr inbounds [2 x i16], [2 x i16]* %70, i32 0, i32 1
  store i16 5, i16* %72, align 2
  %73 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* %69, i32 0, i32 1
  %74 = getelementptr inbounds [2 x i16], [2 x i16]* %73, i32 0, i32 0
  store i16 6, i16* %74, align 4
  %75 = getelementptr inbounds [24 x i16], [24 x i16]* %7, i64 0, i64 0
  %76 = getelementptr inbounds [4 x [3 x [2 x i16]]], [4 x [3 x [2 x i16]]]* %8, i64 0, i64 0
  %77 = bitcast [3 x [2 x i16]]* %76 to i16***
  %78 = call i32 @verify_short(i16* %75, i16*** %77, i32 24)
  %79 = bitcast [1 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 bitcast ([1 x i32]* @__const.test_array.a to i8*), i64 4, i1 false)
  %80 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @expect(i32 3, i32 %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @verify(i32*, i32**, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @verify_short(i16*, i16***, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
