; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_complex_designator.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_complex_designator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [3 x %struct.anon.0] }
%struct.anon.0 = type { i32, i32 }
%struct.anon.1 = type { i32, [3 x i32] }

@__const.test_complex_designator.y = private unnamed_addr constant [2 x %struct.anon] [%struct.anon { [3 x %struct.anon.0] [%struct.anon.0 zeroinitializer, %struct.anon.0 zeroinitializer, %struct.anon.0 { i32 0, i32 10 }] }, %struct.anon { [3 x %struct.anon.0] [%struct.anon.0 { i32 11, i32 5 }, %struct.anon.0 { i32 6, i32 7 }, %struct.anon.0 { i32 8, i32 9 }] }], align 16
@__const.test_complex_designator.y2 = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 0], [3 x i32] [i32 3, i32 0, i32 0]], align 16
@__const.test_complex_designator.y3 = private unnamed_addr constant %struct.anon.1 { i32 1, [3 x i32] [i32 10, i32 11, i32 0] }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_complex_designator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_complex_designator() #0 {
  %1 = alloca [2 x %struct.anon], align 16
  %2 = alloca [2 x [3 x i32]], align 16
  %3 = alloca %struct.anon.1, align 4
  %4 = bitcast [2 x %struct.anon]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x %struct.anon]* @__const.test_complex_designator.y to i8*), i64 48, i1 false)
  %5 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 0
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %9)
  %11 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %15)
  %17 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 0
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %18, i64 0, i64 1
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %21)
  %23 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 0
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %24, i64 0, i64 1
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %27)
  %29 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 0
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %30, i64 0, i64 2
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %33)
  %35 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 0
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %36, i64 0, i64 2
  %38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 10, i32 %39)
  %41 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 1
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %42, i64 0, i64 0
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 11, i32 %45)
  %47 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 1
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %48, i64 0, i64 0
  %50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 5, i32 %51)
  %53 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 1
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %54, i64 0, i64 1
  %56 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 6, i32 %57)
  %59 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 1
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  %61 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %60, i64 0, i64 1
  %62 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 7, i32 %63)
  %65 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 1
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  %67 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %66, i64 0, i64 2
  %68 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 8, i32 %69)
  %71 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %1, i64 0, i64 1
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  %73 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %72, i64 0, i64 2
  %74 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 9, i32 %75)
  %77 = bitcast [2 x [3 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %77, i8* align 16 bitcast ([2 x [3 x i32]]* @__const.test_complex_designator.y2 to i8*), i64 24, i1 false)
  %78 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %2, i64 0, i64 0
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 1, i32 %80)
  %82 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %2, i64 0, i64 1
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 3, i32 %84)
  %86 = bitcast %struct.anon.1* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 bitcast (%struct.anon.1* @__const.test_complex_designator.y3 to i8*), i64 16, i1 false)
  %87 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %3, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 1, i32 %88)
  %90 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %3, i32 0, i32 1
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 10, i32 %92)
  %94 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %3, i32 0, i32 1
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %94, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 11, i32 %96)
  %98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %3, i32 0, i32 1
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %98, i64 0, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %100)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
