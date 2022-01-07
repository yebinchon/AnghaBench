; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_array_designator.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_array_designator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { i32, i32 }

@__const.test_array_designator.v = private unnamed_addr constant [3 x i32] [i32 0, i32 5, i32 0], align 4
@__const.test_array_designator.x = private unnamed_addr constant [2 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon { i32 1, i32 2 }], align 16
@__const.test_array_designator.x2 = private unnamed_addr constant [3 x %struct.anon.0] [%struct.anon.0 zeroinitializer, %struct.anon.0 { i32 1, i32 2 }, %struct.anon.0 { i32 3, i32 4 }], align 16
@__const.test_array_designator.x3 = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_array_designator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_array_designator() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [2 x %struct.anon], align 16
  %3 = alloca [3 x %struct.anon.0], align 16
  %4 = alloca [3 x i32], align 4
  %5 = bitcast [3 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([3 x i32]* @__const.test_array_designator.v to i8*), i64 12, i1 false)
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %7)
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 5, i32 %10)
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %13)
  %15 = bitcast [2 x %struct.anon]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x %struct.anon]* @__const.test_array_designator.x to i8*), i64 16, i1 false)
  %16 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %2, i64 0, i64 0
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 16
  %19 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %18)
  %20 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %2, i64 0, i64 0
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %22)
  %24 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %2, i64 0, i64 1
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 1, i32 %26)
  %28 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %2, i64 0, i64 1
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 2, i32 %30)
  %32 = bitcast [3 x %struct.anon.0]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([3 x %struct.anon.0]* @__const.test_array_designator.x2 to i8*), i64 24, i1 false)
  %33 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %3, i64 0, i64 0
  %34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 16
  %36 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %35)
  %37 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %3, i64 0, i64 0
  %38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 0, i32 %39)
  %41 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %3, i64 0, i64 1
  %42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 1, i32 %43)
  %45 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %3, i64 0, i64 1
  %46 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 2, i32 %47)
  %49 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %3, i64 0, i64 2
  %50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 16
  %52 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 3, i32 %51)
  %53 = getelementptr inbounds [3 x %struct.anon.0], [3 x %struct.anon.0]* %3, i64 0, i64 2
  %54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 4, i32 %55)
  %57 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 bitcast ([3 x i32]* @__const.test_array_designator.x3 to i8*), i64 12, i1 false)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 1, i32 %59)
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 2, i32 %62)
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 3, i32 %65)
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
