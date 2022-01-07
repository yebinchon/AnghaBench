; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_isLittleEndian.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_isLittleEndian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

@__const.LZ4_isLittleEndian.one = private unnamed_addr constant { i32, [12 x i8] } { i32 1, [12 x i8] undef }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LZ4_isLittleEndian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_isLittleEndian() #0 {
  %1 = alloca %union.anon, align 4
  %2 = bitcast %union.anon* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ({ i32, [12 x i8] }* @__const.LZ4_isLittleEndian.one to i8*), i64 16, i1 false)
  %3 = bitcast %union.anon* %1 to [4 x i32]*
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
