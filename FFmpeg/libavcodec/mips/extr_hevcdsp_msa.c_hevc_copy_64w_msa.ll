; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_copy_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_copy_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @hevc_copy_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_copy_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__, align 4
  %13 = alloca %struct.TYPE_22__, align 4
  %14 = alloca %struct.TYPE_22__, align 4
  %15 = alloca %struct.TYPE_22__, align 4
  %16 = alloca %struct.TYPE_22__, align 4
  %17 = alloca %struct.TYPE_22__, align 4
  %18 = alloca %struct.TYPE_22__, align 4
  %19 = alloca %struct.TYPE_22__, align 4
  %20 = alloca %struct.TYPE_22__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %29 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %36, %5
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %203

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @LD_SB4(i32* %37, i32 16, i32 %39, i32 %41, i32 %43, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LD_SB4(i32* %51, i32 16, i32 %53, i32 %55, i32 %57, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* %24, align 4
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ILVR_B4_SH(i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %65, i32 %66, i32 %67, i32 %68)
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %28, align 4
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ILVL_B4_SH(i32 %91, i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %86, i32 %87, i32 %88, i32 %89)
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %24, align 4
  %111 = call i32 @SLLI_4V(i32 %107, i32 %108, i32 %109, i32 %110, i32 6)
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %28, align 4
  %116 = call i32 @SLLI_4V(i32 %112, i32 %113, i32 %114, i32 %115, i32 6)
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %26, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @ST_SH4(i32 %117, i32 %118, i32 %119, i32 %120, i32* %121, i32 8)
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %28, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 32
  %129 = call i32 @ST_SH4(i32 %123, i32 %124, i32 %125, i32 %126, i32* %128, i32 8)
  %130 = load i32, i32* %9, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %8, align 8
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %24, align 4
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ILVR_B4_SH(i32 %139, i32 %141, i32 %143, i32 %145, i32 %147, i32 %149, i32 %151, i32 %153, i32 %134, i32 %135, i32 %136, i32 %137)
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %26, align 4
  %157 = load i32, i32* %27, align 4
  %158 = load i32, i32* %28, align 4
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ILVL_B4_SH(i32 %160, i32 %162, i32 %164, i32 %166, i32 %168, i32 %170, i32 %172, i32 %174, i32 %155, i32 %156, i32 %157, i32 %158)
  %176 = load i32, i32* %21, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* %24, align 4
  %180 = call i32 @SLLI_4V(i32 %176, i32 %177, i32 %178, i32 %179, i32 6)
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %28, align 4
  %185 = call i32 @SLLI_4V(i32 %181, i32 %182, i32 %183, i32 %184, i32 6)
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %26, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @ST_SH4(i32 %186, i32 %187, i32 %188, i32 %189, i32* %190, i32 8)
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* %24, align 4
  %195 = load i32, i32* %28, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 32
  %198 = call i32 @ST_SH4(i32 %192, i32 %193, i32 %194, i32 %195, i32* %197, i32 8)
  %199 = load i32, i32* %9, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %8, align 8
  br label %32

203:                                              ; preds = %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
