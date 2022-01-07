; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_bitmap_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_bitmap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@NBBY = common dso_local global i64 0, align 8
@UINT32_ALL_ONES = common dso_local global i32 0, align 4
@USHORT_ALL_ONES = common dso_local global i32 0, align 4
@UCHAR_ALL_ONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @bitmap_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_set(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call { i64, i64 } @bitmap_offset(i32 %12)
  %14 = bitcast %struct.TYPE_3__* %9 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %13, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %13, 1
  store i64 %18, i64* %17, align 8
  %19 = bitcast %struct.TYPE_3__* %7 to i8*
  %20 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = call { i64, i64 } @bitmap_offset(i32 %23)
  %25 = bitcast %struct.TYPE_3__* %10 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 8
  %30 = bitcast %struct.TYPE_3__* %8 to i8*
  %31 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NBBY, align 8
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @byte_set_bits(i64 %43, i64 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  br label %119

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %37
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %66, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %75, %64
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp uge i64 %73, 4
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, i32* @UINT32_ALL_ONES, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %81, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  br label %71

88:                                               ; preds = %71
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %90, 4
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i32, i32* @USHORT_ALL_ONES, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %92, %88
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* @UCHAR_ALL_ONES, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %108, %105
  br label %118

118:                                              ; preds = %117, %3
  br label %119

119:                                              ; preds = %118, %62
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %121, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %129, 1
  %131 = call i32 @byte_set_bits(i64 %127, i64 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %125, %119
  ret void
}

declare dso_local { i64, i64 } @bitmap_offset(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @byte_set_bits(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
