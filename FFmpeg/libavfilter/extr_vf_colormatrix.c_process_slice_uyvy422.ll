; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_process_slice_uyvy422.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_process_slice_uyvy422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @process_slice_uyvy422 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_slice_uyvy422(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %10, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %61, %63
  %65 = load i32, i32* %8, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  store i8* %76, i8** %18, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  store i8* %86, i8** %19, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %20, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %21, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %22, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %23, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %24, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %25, align 4
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %27, align 4
  br label %106

106:                                              ; preds = %218, %4
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %221

110:                                              ; preds = %106
  store i32 0, i32* %26, align 4
  br label %111

111:                                              ; preds = %206, %110
  %112 = load i32, i32* %26, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %209

115:                                              ; preds = %111
  %116 = load i8*, i8** %18, align 8
  %117 = load i32, i32* %26, align 4
  %118 = add nsw i32 %117, 0
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 128
  store i32 %123, i32* %28, align 4
  %124 = load i8*, i8** %18, align 8
  %125 = load i32, i32* %26, align 4
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %130, 128
  store i32 %131, i32* %29, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %28, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %29, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %134, %137
  %139 = add nsw i32 %138, 1081344
  store i32 %139, i32* %30, align 4
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %28, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %29, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %142, %145
  %147 = add nsw i32 %146, 8421376
  %148 = ashr i32 %147, 16
  %149 = call zeroext i8 @CB(i32 %148)
  %150 = load i8*, i8** %19, align 8
  %151 = load i32, i32* %26, align 4
  %152 = add nsw i32 %151, 0
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 %149, i8* %154, align 1
  %155 = load i8*, i8** %18, align 8
  %156 = load i32, i32* %26, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = sub nsw i32 %161, 16
  %163 = mul nsw i32 65536, %162
  %164 = load i32, i32* %30, align 4
  %165 = add nsw i32 %163, %164
  %166 = ashr i32 %165, 16
  %167 = call zeroext i8 @CB(i32 %166)
  %168 = load i8*, i8** %19, align 8
  %169 = load i32, i32* %26, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 %167, i8* %172, align 1
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %28, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %29, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %175, %178
  %180 = add nsw i32 %179, 8421376
  %181 = ashr i32 %180, 16
  %182 = call zeroext i8 @CB(i32 %181)
  %183 = load i8*, i8** %19, align 8
  %184 = load i32, i32* %26, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 %182, i8* %187, align 1
  %188 = load i8*, i8** %18, align 8
  %189 = load i32, i32* %26, align 4
  %190 = add nsw i32 %189, 3
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = sub nsw i32 %194, 16
  %196 = mul nsw i32 65536, %195
  %197 = load i32, i32* %30, align 4
  %198 = add nsw i32 %196, %197
  %199 = ashr i32 %198, 16
  %200 = call zeroext i8 @CB(i32 %199)
  %201 = load i8*, i8** %19, align 8
  %202 = load i32, i32* %26, align 4
  %203 = add nsw i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  store i8 %200, i8* %205, align 1
  br label %206

206:                                              ; preds = %115
  %207 = load i32, i32* %26, align 4
  %208 = add nsw i32 %207, 4
  store i32 %208, i32* %26, align 4
  br label %111

209:                                              ; preds = %111
  %210 = load i32, i32* %14, align 4
  %211 = load i8*, i8** %18, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %18, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i8*, i8** %19, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** %19, align 8
  br label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %27, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %27, align 4
  br label %106

221:                                              ; preds = %106
  ret i32 0
}

declare dso_local zeroext i8 @CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
