; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avg_width8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avg_width8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @avg_width8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width8_msa(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_27__, align 4
  %18 = alloca %struct.TYPE_27__, align 4
  %19 = alloca %struct.TYPE_27__, align 4
  %20 = alloca %struct.TYPE_27__, align 4
  %21 = alloca %struct.TYPE_27__, align 4
  %22 = alloca %struct.TYPE_27__, align 4
  %23 = alloca %struct.TYPE_27__, align 4
  %24 = alloca %struct.TYPE_27__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = bitcast %struct.TYPE_27__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = bitcast %struct.TYPE_27__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = bitcast %struct.TYPE_27__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = bitcast %struct.TYPE_27__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  %29 = bitcast %struct.TYPE_27__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = bitcast %struct.TYPE_27__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  %31 = bitcast %struct.TYPE_27__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 4, i1 false)
  %32 = bitcast %struct.TYPE_27__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 4, i1 false)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 8, %33
  br i1 %34, label %35, label %149

35:                                               ; preds = %4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @LD4(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 4, %43
  %45 = load i32*, i32** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @LD4(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @INSERT_D2_UB(i32 %55, i32 %56, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @INSERT_D2_UB(i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @INSERT_D2_UB(i32 %65, i32 %66, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @INSERT_D2_UB(i32 %70, i32 %71, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @LD4(i32* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 4, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @LD4(i32* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @INSERT_D2_UB(i32 %93, i32 %94, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @INSERT_D2_UB(i32 %98, i32 %99, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @INSERT_D2_UB(i32 %103, i32 %104, i32 %106)
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @INSERT_D2_UB(i32 %108, i32 %109, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @AVER_UB4_UB(i32 %114, i32 %116, i32 %118, i32 %120, i32 %122, i32 %124, i32 %126, i32 %128, i32 %130, i32 %132, i32 %134, i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ST_D8(i32 %141, i32 %143, i32 %145, i32 %147, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %138, i32 %139)
  br label %208

149:                                              ; preds = %4
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 4, %150
  br i1 %151, label %152, label %207

152:                                              ; preds = %149
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @LD4(i32* %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @INSERT_D2_UB(i32 %160, i32 %161, i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @INSERT_D2_UB(i32 %165, i32 %166, i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @LD4(i32* %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @INSERT_D2_UB(i32 %177, i32 %178, i32 %180)
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @INSERT_D2_UB(i32 %182, i32 %183, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @AVER_UB2_UB(i32 %188, i32 %190, i32 %192, i32 %194, i32 %196, i32 %198)
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %7, align 4
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ST_D4(i32 %203, i32 %205, i32 0, i32 1, i32 0, i32 1, i32* %200, i32 %201)
  br label %207

207:                                              ; preds = %152, %149
  br label %208

208:                                              ; preds = %207, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @AVER_UB2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
