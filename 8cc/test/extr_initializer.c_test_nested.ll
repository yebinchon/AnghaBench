; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_nested.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i32, i32 }
%struct.anon.2 = type { [8 x i8] }

@__const.test_nested.v = private unnamed_addr constant %struct.anon { %struct.anon.0 { %struct.anon.1 { i32 1, i32 2 }, %struct.anon.2 { [8 x i8] c"\03\04\05\06\07\08\09\0A" } } }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nested() #0 {
  %1 = alloca %struct.anon, align 4
  %2 = bitcast %struct.anon* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.anon* @__const.test_nested.v to i8*), i64 16, i1 false)
  %3 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @expect(i32 1, i32 %6)
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @expect(i32 2, i32 %11)
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 0
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %17 = load i8, i8* %16, align 4
  %18 = sext i8 %17 to i32
  %19 = call i32 @expect(i32 3, i32 %18)
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %21, i32 0, i32 0
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 7
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @expect(i32 10, i32 %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
