; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_struct.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [3 x i32], i32 }

@__const.test_struct.we = private unnamed_addr constant [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0], align 16
@__const.test_struct.w = private unnamed_addr constant [2 x %struct.anon] [%struct.anon { [3 x i32] [i32 1, i32 0, i32 0], i32 0 }, %struct.anon { [3 x i32] [i32 2, i32 0, i32 0], i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_struct() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca [2 x %struct.anon], align 16
  %3 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([8 x i32]* @__const.test_struct.we to i8*), i64 32, i1 false)
  %4 = bitcast [2 x %struct.anon]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x %struct.anon]* @__const.test_struct.w to i8*), i64 32, i1 false)
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %6 = call i32 (i32*, [2 x %struct.anon]*, i32, ...) bitcast (i32 (...)* @verify to i32 (i32*, [2 x %struct.anon]*, i32, ...)*)(i32* %5, [2 x %struct.anon]* %2, i32 8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @verify(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
