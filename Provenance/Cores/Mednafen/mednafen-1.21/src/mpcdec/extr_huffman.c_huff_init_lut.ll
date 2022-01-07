; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_huffman.c_huff_init_lut.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_huffman.c_huff_init_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@mpc_HuffDSCF = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@mpc_HuffHdr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@mpc_can_SCFI = common dso_local global i32* null, align 8
@mpc_can_DSCF = common dso_local global i32* null, align 8
@mpc_can_Res = common dso_local global i32* null, align 8
@mpc_can_Q1 = common dso_local global i32 0, align 4
@mpc_can_Q9up = common dso_local global i32 0, align 4
@mpc_can_Q = common dso_local global i32** null, align 8
@mpc_HuffQ = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huff_init_lut(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mpc_HuffDSCF, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mpc_HuffDSCF, i32 0, i32 0), align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @huff_fill_lut(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mpc_HuffHdr, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mpc_HuffHdr, i32 0, i32 0), align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @huff_fill_lut(i32 %9, i32 %10, i32 %11)
  %13 = load i32*, i32** @mpc_can_SCFI, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @can_fill_lut(i32* %14, i32 %15)
  %17 = load i32*, i32** @mpc_can_SCFI, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @can_fill_lut(i32* %18, i32 %19)
  %21 = load i32*, i32** @mpc_can_DSCF, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @can_fill_lut(i32* %22, i32 %23)
  %25 = load i32*, i32** @mpc_can_DSCF, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @can_fill_lut(i32* %26, i32 %27)
  %29 = load i32*, i32** @mpc_can_Res, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @can_fill_lut(i32* %30, i32 %31)
  %33 = load i32*, i32** @mpc_can_Res, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @can_fill_lut(i32* %34, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @can_fill_lut(i32* @mpc_can_Q1, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @can_fill_lut(i32* @mpc_can_Q9up, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %89, %1
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 7
  br i1 %43, label %44, label %92

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %85, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 6
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32**, i32*** @mpc_can_Q, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @can_fill_lut(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %48
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @mpc_HuffQ, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @mpc_HuffQ, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @huff_fill_lut(i32 %72, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %62
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %45

88:                                               ; preds = %45
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %41

92:                                               ; preds = %41
  ret void
}

declare dso_local i32 @huff_fill_lut(i32, i32, i32) #1

declare dso_local i32 @can_fill_lut(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
