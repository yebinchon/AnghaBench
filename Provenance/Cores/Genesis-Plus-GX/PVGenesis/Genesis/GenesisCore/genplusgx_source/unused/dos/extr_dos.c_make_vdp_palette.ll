; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_make_vdp_palette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_make_vdp_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@__const.make_vdp_palette.lut = private unnamed_addr constant [3 x [8 x i8*]] [[8 x i8*] [i8* null, i8* inttoptr (i64 4 to i8*), i8* inttoptr (i64 8 to i8*), i8* inttoptr (i64 12 to i8*), i8* inttoptr (i64 16 to i8*), i8* inttoptr (i64 20 to i8*), i8* inttoptr (i64 24 to i8*), i8* inttoptr (i64 28 to i8*)], [8 x i8*] [i8* null, i8* inttoptr (i64 8 to i8*), i8* inttoptr (i64 16 to i8*), i8* inttoptr (i64 24 to i8*), i8* inttoptr (i64 32 to i8*), i8* inttoptr (i64 40 to i8*), i8* inttoptr (i64 48 to i8*), i8* inttoptr (i64 56 to i8*)], [8 x i8*] [i8* inttoptr (i64 32 to i8*), i8* inttoptr (i64 36 to i8*), i8* inttoptr (i64 40 to i8*), i8* inttoptr (i64 44 to i8*), i8* inttoptr (i64 48 to i8*), i8* inttoptr (i64 52 to i8*), i8* inttoptr (i64 56 to i8*), i8* inttoptr (i64 60 to i8*)]], align 16
@vdp_palette = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_vdp_palette() #0 {
  %1 = alloca [3 x [8 x i8*]], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [3 x [8 x i8*]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x [8 x i8*]]* @__const.make_vdp_palette.lut to i8*), i64 192, i1 false)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %75, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 1536
  br i1 %10, label %11, label %78

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 6
  %14 = and i32 %13, 7
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 3
  %17 = and i32 %16, 7
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 0
  %20 = and i32 %19, 7
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 9
  %23 = and i32 %22, 3
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x [8 x i8*]], [3 x [8 x i8*]]* %1, i64 0, i64 %25
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8*], [8 x i8*]* %26, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @vdp_palette, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 511
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i8* %30, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x [8 x i8*]], [3 x [8 x i8*]]* %1, i64 0, i64 %42
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8*], [8 x i8*]* %43, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @vdp_palette, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 511
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %47, i8** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x [8 x i8*]], [3 x [8 x i8*]]* %1, i64 0, i64 %59
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8*], [8 x i8*]* %60, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @vdp_palette, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %2, align 4
  %71 = and i32 %70, 511
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8* %64, i8** %74, align 8
  br label %75

75:                                               ; preds = %11
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %8

78:                                               ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
