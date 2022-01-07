; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_multiply.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

@FLOAT_0 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply(%struct.TYPE_7__* noalias sret %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %10, align 4
  store i32 48, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = xor i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %4, align 4
  store i32 undef, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = bitcast %struct.TYPE_7__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_7__* @FLOAT_0 to i8*), i64 24, i1 false)
  br label %125

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %29

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 24
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = lshr i32 %50, %52
  %54 = and i32 %53, 3
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %7, align 1
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %73, label %59

59:                                               ; preds = %49
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = sub i64 %69, 1
  %71 = and i64 %65, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63, %49
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %63, %59
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %83, %84
  store i32 %85, i32* %8, align 4
  br label %91

86:                                               ; preds = %79
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 0, %88
  %90 = shl i32 %87, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = and i64 %93, 16777216
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %8, align 4
  %100 = lshr i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i32 -2147483648, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = sub nsw i64 %113, 47
  %115 = call i64 @av_clip(i64 %114, i32 -126, i32 127)
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 23
  %118 = and i32 %117, 2139095040
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  call void @av_bits2sf_ieee754(%struct.TYPE_7__* sret %0, i32 %124)
  br label %125

125:                                              ; preds = %105, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @av_clip(i64, i32, i32) #2

declare dso_local void @av_bits2sf_ieee754(%struct.TYPE_7__* sret, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
