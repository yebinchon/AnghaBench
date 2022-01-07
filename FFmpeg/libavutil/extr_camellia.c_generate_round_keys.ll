; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_generate_round_keys.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_generate_round_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i8**, i8** }

@vars = common dso_local global i64** null, align 8
@shifts = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i8**, i8**, i8**)* @generate_round_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_round_keys(%struct.TYPE_3__* %0, i8** %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8**], align 16
  %13 = alloca [2 x i8*], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 0
  store i8** %14, i8*** %15, align 16
  %16 = load i8**, i8*** %8, align 8
  %17 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 1
  store i8** %16, i8*** %17, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 2
  store i8** %18, i8*** %19, align 16
  %20 = load i8**, i8*** %10, align 8
  %21 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 3
  store i8** %20, i8*** %21, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %24, i8** %28, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %144

40:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 9
  br i1 %43, label %44, label %85

44:                                               ; preds = %41
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %46 = load i64**, i64*** @vars, align 8
  %47 = getelementptr inbounds i64*, i64** %46, i64 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 %52
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32**, i32*** @shifts, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @LR128(i8** %45, i8** %54, i32 %61)
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  store i8* %64, i8** %71, align 8
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  store i8* %73, i8** %81, align 8
  br label %82

82:                                               ; preds = %44
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %41

85:                                               ; preds = %41
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %87 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 0
  %88 = load i8**, i8*** %87, align 16
  %89 = call i32 @LR128(i8** %86, i8** %88, i32 60)
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 9
  store i8* %91, i8** %95, align 8
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %97 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 2
  %98 = load i8**, i8*** %97, align 16
  %99 = call i32 @LR128(i8** %96, i8** %98, i32 30)
  %100 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %101 = load i8*, i8** %100, align 16
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %101, i8** %105, align 8
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %107, i8** %111, align 8
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %113 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 0
  %114 = load i8**, i8*** %113, align 16
  %115 = call i32 @LR128(i8** %112, i8** %114, i32 77)
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %117 = load i8*, i8** %116, align 16
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 2
  store i8* %117, i8** %121, align 8
  %122 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 3
  store i8* %123, i8** %127, align 8
  %128 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %129 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 2
  %130 = load i8**, i8*** %129, align 16
  %131 = call i32 @LR128(i8** %128, i8** %130, i32 111)
  %132 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %133 = load i8*, i8** %132, align 16
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 2
  store i8* %133, i8** %137, align 8
  %138 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 3
  store i8* %139, i8** %143, align 8
  br label %254

144:                                              ; preds = %5
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %186, %144
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 12
  br i1 %147, label %148, label %189

148:                                              ; preds = %145
  %149 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %150 = load i64**, i64*** @vars, align 8
  %151 = getelementptr inbounds i64*, i64** %150, i64 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 %156
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32**, i32*** @shifts, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @LR128(i8** %149, i8** %158, i32 %165)
  %167 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %168 = load i8*, i8** %167, align 16
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = mul nsw i32 2, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  store i8* %168, i8** %175, align 8
  %176 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  %180 = load i8**, i8*** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = mul nsw i32 2, %181
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %180, i64 %184
  store i8* %177, i8** %185, align 8
  br label %186

186:                                              ; preds = %148
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %145

189:                                              ; preds = %145
  %190 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %191 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 1
  %192 = load i8**, i8*** %191, align 8
  %193 = call i32 @LR128(i8** %190, i8** %192, i32 30)
  %194 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %195 = load i8*, i8** %194, align 16
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  store i8* %195, i8** %199, align 8
  %200 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  store i8* %201, i8** %205, align 8
  %206 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %207 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 0
  %208 = load i8**, i8*** %207, align 16
  %209 = call i32 @LR128(i8** %206, i8** %208, i32 60)
  %210 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %211 = load i8*, i8** %210, align 16
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 2
  store i8* %211, i8** %215, align 8
  %216 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 3
  store i8* %217, i8** %221, align 8
  %222 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %223 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 2
  %224 = load i8**, i8*** %223, align 16
  %225 = call i32 @LR128(i8** %222, i8** %224, i32 77)
  %226 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %227 = load i8*, i8** %226, align 16
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 4
  store i8* %227, i8** %231, align 8
  %232 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 5
  store i8* %233, i8** %237, align 8
  %238 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %239 = getelementptr inbounds [4 x i8**], [4 x i8**]* %12, i64 0, i64 3
  %240 = load i8**, i8*** %239, align 8
  %241 = call i32 @LR128(i8** %238, i8** %240, i32 111)
  %242 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %243 = load i8*, i8** %242, align 16
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 2
  store i8* %243, i8** %247, align 8
  %248 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 3
  store i8* %249, i8** %253, align 8
  br label %254

254:                                              ; preds = %189, %85
  ret void
}

declare dso_local i32 @LR128(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
