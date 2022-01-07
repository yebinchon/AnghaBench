; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_type.c_test_typedef.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_type.c_test_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32 }

@__const.test_typedef.b = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_typedef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_typedef() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca %struct.tag, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 5, i32 %8)
  %10 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x i32]* @__const.test_typedef.b to i8*), i64 12, i1 false)
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @expect(i32 2, i32 %12)
  %14 = getelementptr inbounds %struct.tag, %struct.tag* %3, i32 0, i32 0
  store i32 5, i32* %14, align 4
  %15 = getelementptr inbounds %struct.tag, %struct.tag* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @expect(i32 5, i32 %16)
  store i32 3, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @expect(i32 3, i32 %18)
  store i32 1, i32* %5, align 4
  store i32 5, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @expect(i32 1, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @expect(i32 5, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @expect(i32 4, i32 %24)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
