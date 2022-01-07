; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_bitfield_unnamed.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_bitfield_unnamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%struct.anon = type { i16 }
%struct.anon.1 = type { i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bitfield_unnamed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfield_unnamed() #0 {
  %1 = alloca %union.anon, align 4
  %2 = alloca %union.anon.0, align 4
  %3 = bitcast %union.anon* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  %4 = bitcast %union.anon* %1 to i32*
  store i32 0, i32* %4, align 4
  %5 = bitcast %union.anon* %1 to %struct.anon*
  %6 = bitcast %struct.anon* %5 to i16*
  %7 = load i16, i16* %6, align 4
  %8 = and i16 %7, -16
  %9 = or i16 %8, 2
  store i16 %9, i16* %6, align 4
  %10 = bitcast %union.anon* %1 to %struct.anon*
  %11 = bitcast %struct.anon* %10 to i16*
  %12 = load i16, i16* %11, align 4
  %13 = and i16 %12, -241
  %14 = or i16 %13, 64
  store i16 %14, i16* %11, align 4
  %15 = bitcast %union.anon* %1 to %struct.anon*
  %16 = bitcast %struct.anon* %15 to i16*
  %17 = load i16, i16* %16, align 4
  %18 = shl i16 %17, 12
  %19 = ashr i16 %18, 12
  %20 = trunc i16 %19 to i8
  %21 = sext i8 %20 to i32
  %22 = call i32 @expect(i32 2, i32 %21)
  %23 = bitcast %union.anon* %1 to %struct.anon*
  %24 = bitcast %struct.anon* %23 to i16*
  %25 = load i16, i16* %24, align 4
  %26 = shl i16 %25, 8
  %27 = ashr i16 %26, 12
  %28 = trunc i16 %27 to i8
  %29 = sext i8 %28 to i32
  %30 = call i32 @expect(i32 4, i32 %29)
  %31 = bitcast %union.anon* %1 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @expect(i32 66, i32 %32)
  %34 = bitcast %union.anon.0* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  %35 = bitcast %union.anon.0* %2 to %struct.anon.1*
  %36 = bitcast %struct.anon.1* %35 to i8*
  %37 = load i8, i8* %36, align 4
  %38 = and i8 %37, -16
  %39 = or i8 %38, 2
  store i8 %39, i8* %36, align 4
  %40 = bitcast %union.anon.0* %2 to %struct.anon.1*
  %41 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = and i8 %42, -16
  %44 = or i8 %43, 4
  store i8 %44, i8* %41, align 1
  %45 = bitcast %union.anon.0* %2 to %struct.anon.1*
  %46 = bitcast %struct.anon.1* %45 to i8*
  %47 = load i8, i8* %46, align 4
  %48 = shl i8 %47, 4
  %49 = ashr i8 %48, 4
  %50 = sext i8 %49 to i32
  %51 = call i32 @expect(i32 2, i32 %50)
  %52 = bitcast %union.anon.0* %2 to %struct.anon.1*
  %53 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %52, i32 0, i32 1
  %54 = load i8, i8* %53, align 1
  %55 = shl i8 %54, 4
  %56 = ashr i8 %55, 4
  %57 = sext i8 %56 to i32
  %58 = call i32 @expect(i32 4, i32 %57)
  %59 = bitcast %union.anon.0* %2 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @expect(i32 1026, i32 %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @expect(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
