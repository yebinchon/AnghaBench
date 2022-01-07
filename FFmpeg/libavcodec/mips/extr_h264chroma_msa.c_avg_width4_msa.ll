; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avg_width4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avg_width4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @avg_width4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width4_msa(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__, align 4
  %14 = alloca %struct.TYPE_17__, align 4
  %15 = alloca %struct.TYPE_17__, align 4
  %16 = alloca %struct.TYPE_17__, align 4
  %17 = alloca %struct.TYPE_17__, align 4
  %18 = alloca %struct.TYPE_17__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = bitcast %struct.TYPE_17__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = bitcast %struct.TYPE_17__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = bitcast %struct.TYPE_17__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = bitcast %struct.TYPE_17__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 8, %23
  br i1 %24, label %25, label %111

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @LW4(i32* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 4, %33
  %35 = load i32*, i32** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @INSERT_W4_UB(i32 %38, i32 %39, i32 %40, i32 %41, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @LW4(i32* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @INSERT_W4_UB(i32 %52, i32 %53, i32 %54, i32 %55, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @LW4(i32* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @INSERT_W4_UB(i32 %66, i32 %67, i32 %68, i32 %69, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 4, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @LW4(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @INSERT_W4_UB(i32 %84, i32 %85, i32 %86, i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @AVER_UB2_UB(i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ST_W8(i32 %107, i32 %109, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %104, i32 %105)
  br label %195

111:                                              ; preds = %4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 4, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %111
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @LW4(i32* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @INSERT_W4_UB(i32 %122, i32 %123, i32 %124, i32 %125, i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @LW4(i32* %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @INSERT_W4_UB(i32 %136, i32 %137, i32 %138, i32 %139, i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @__msa_aver_u_b(i32 %144, i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  %149 = bitcast %struct.TYPE_17__* %15 to i8*
  %150 = bitcast %struct.TYPE_17__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ST_W4(i32 %154, i32 0, i32 1, i32 2, i32 3, i32* %151, i32 %152)
  br label %194

156:                                              ; preds = %111
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 2, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %156
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @LW2(i32* %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @INSERT_W2_UB(i32 %165, i32 %166, i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @LW2(i32* %170, i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @INSERT_W2_UB(i32 %175, i32 %176, i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @__msa_aver_u_b(i32 %181, i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  store i32 %184, i32* %185, align 4
  %186 = bitcast %struct.TYPE_17__* %15 to i8*
  %187 = bitcast %struct.TYPE_17__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 4, i1 false)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ST_W2(i32 %191, i32 0, i32 1, i32* %188, i32 %189)
  br label %193

193:                                              ; preds = %159, %156
  br label %194

194:                                              ; preds = %193, %114
  br label %195

195:                                              ; preds = %194, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i32) #2

declare dso_local i32 @AVER_UB2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @__msa_aver_u_b(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @LW2(i32*, i32, i32, i32) #2

declare dso_local i32 @INSERT_W2_UB(i32, i32, i32) #2

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
