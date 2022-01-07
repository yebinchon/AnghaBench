; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_copy_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_copy_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @hevc_copy_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_copy_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__, align 4
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_28__, align 4
  %15 = alloca %struct.TYPE_28__, align 4
  %16 = alloca %struct.TYPE_28__, align 4
  %17 = alloca %struct.TYPE_28__, align 4
  %18 = alloca %struct.TYPE_28__, align 4
  %19 = alloca %struct.TYPE_28__, align 4
  %20 = alloca %struct.TYPE_28__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %34, %5
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %203

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LD_SB8(i32* %35, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 8, %54
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %24, align 4
  %61 = load i32, i32* %25, align 4
  %62 = load i32, i32* %26, align 4
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ILVR_B4_SH(i32 %64, i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %59, i32 %60, i32 %61, i32 %62)
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %25, align 4
  %83 = load i32, i32* %26, align 4
  %84 = call i32 @SLLI_4V(i32 %80, i32 %81, i32 %82, i32 %83, i32 6)
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ILVL_W2_SB(i32 %86, i32 %88, i32 %90, i32 %92, i32 %94, i32 %96)
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ILVR_B2_SH(i32 %101, i32 %103, i32 %105, i32 %107, i32 %98, i32 %99)
  %109 = load i32, i32* %21, align 4
  %110 = shl i32 %109, 6
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %22, align 4
  %112 = shl i32 %111, 6
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %26, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @ST_SH4(i32 %113, i32 %114, i32 %115, i32 %116, i32* %117, i32 %118)
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @ST_D4(i32 %120, i32 %121, i32 0, i32 1, i32 0, i32 1, i32* %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 4, %126
  %128 = load i32*, i32** %8, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %8, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %26, align 4
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ILVR_B4_SH(i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, i32 %146, i32 %148, i32 %150, i32 %131, i32 %132, i32 %133, i32 %134)
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %26, align 4
  %156 = call i32 @SLLI_4V(i32 %152, i32 %153, i32 %154, i32 %155, i32 6)
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ILVL_W2_SB(i32 %158, i32 %160, i32 %162, i32 %164, i32 %166, i32 %168)
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %22, align 4
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ILVR_B2_SH(i32 %173, i32 %175, i32 %177, i32 %179, i32 %170, i32 %171)
  %181 = load i32, i32* %21, align 4
  %182 = shl i32 %181, 6
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %22, align 4
  %184 = shl i32 %183, 6
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @ST_SH4(i32 %185, i32 %186, i32 %187, i32 %188, i32* %189, i32 %190)
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %22, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @ST_D4(i32 %192, i32 %193, i32 0, i32 1, i32 0, i32 1, i32* %195, i32 %196)
  %198 = load i32, i32* %9, align 4
  %199 = mul nsw i32 4, %198
  %200 = load i32*, i32** %8, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %8, align 8
  br label %30

203:                                              ; preds = %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_W2_SB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
