; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_prepare_eac_in.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_prepare_eac_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i8**, i64, i64 }

@BOTTOM_LEFT = common dso_local global i64 0, align 8
@RIGHT = common dso_local global i64 0, align 8
@BOTTOM_RIGHT = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@TOP_LEFT = common dso_local global i64 0, align 8
@UP = common dso_local global i64 0, align 8
@TOP_RIGHT = common dso_local global i64 0, align 8
@DOWN = common dso_local global i64 0, align 8
@BOTTOM_MIDDLE = common dso_local global i64 0, align 8
@FRONT = common dso_local global i64 0, align 8
@TOP_MIDDLE = common dso_local global i64 0, align 8
@BACK = common dso_local global i64 0, align 8
@ROT_270 = common dso_local global i8* null, align 8
@ROT_90 = common dso_local global i8* null, align 8
@ROT_0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @prepare_eac_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_eac_in(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = load i64, i64* @BOTTOM_LEFT, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @RIGHT, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %17, i64* %22, align 8
  %23 = load i64, i64* @BOTTOM_RIGHT, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @LEFT, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %23, i64* %28, align 8
  %29 = load i64, i64* @TOP_LEFT, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @UP, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %29, i64* %34, align 8
  %35 = load i64, i64* @TOP_RIGHT, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @DOWN, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %35, i64* %40, align 8
  %41 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @FRONT, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %41, i64* %46, align 8
  %47 = load i64, i64* @TOP_MIDDLE, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @BACK, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  br label %176

53:                                               ; preds = %11, %1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %53
  %59 = load i64, i64* @TOP_LEFT, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @RIGHT, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %59, i64* %64, align 8
  %65 = load i64, i64* @TOP_RIGHT, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @LEFT, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %65, i64* %70, align 8
  %71 = load i64, i64* @BOTTOM_LEFT, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @UP, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %71, i64* %76, align 8
  %77 = load i64, i64* @BOTTOM_RIGHT, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @DOWN, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %77, i64* %82, align 8
  %83 = load i64, i64* @TOP_MIDDLE, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @FRONT, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %83, i64* %88, align 8
  %89 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @BACK, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %89, i64* %94, align 8
  br label %175

95:                                               ; preds = %53
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %95
  %101 = load i64, i64* @BOTTOM_RIGHT, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @RIGHT, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 %101, i64* %106, align 8
  %107 = load i64, i64* @BOTTOM_LEFT, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @LEFT, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %107, i64* %112, align 8
  %113 = load i64, i64* @TOP_RIGHT, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @UP, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 %113, i64* %118, align 8
  %119 = load i64, i64* @TOP_LEFT, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @DOWN, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %119, i64* %124, align 8
  %125 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @FRONT, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64 %125, i64* %130, align 8
  %131 = load i64, i64* @TOP_MIDDLE, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @BACK, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %131, i64* %136, align 8
  br label %174

137:                                              ; preds = %95
  %138 = load i64, i64* @TOP_RIGHT, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* @RIGHT, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %138, i64* %143, align 8
  %144 = load i64, i64* @TOP_LEFT, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @LEFT, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %144, i64* %149, align 8
  %150 = load i64, i64* @BOTTOM_RIGHT, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @UP, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 %150, i64* %155, align 8
  %156 = load i64, i64* @BOTTOM_LEFT, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @DOWN, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %156, i64* %161, align 8
  %162 = load i64, i64* @TOP_MIDDLE, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @FRONT, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  store i64 %162, i64* %167, align 8
  %168 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @BACK, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %168, i64* %173, align 8
  br label %174

174:                                              ; preds = %137, %100
  br label %175

175:                                              ; preds = %174, %58
  br label %176

176:                                              ; preds = %175, %16
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %218

181:                                              ; preds = %176
  %182 = load i8*, i8** @ROT_270, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i8**, i8*** %184, align 8
  %186 = load i64, i64* @TOP_LEFT, align 8
  %187 = getelementptr inbounds i8*, i8** %185, i64 %186
  store i8* %182, i8** %187, align 8
  %188 = load i8*, i8** @ROT_90, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i8**, i8*** %190, align 8
  %192 = load i64, i64* @TOP_MIDDLE, align 8
  %193 = getelementptr inbounds i8*, i8** %191, i64 %192
  store i8* %188, i8** %193, align 8
  %194 = load i8*, i8** @ROT_270, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i8**, i8*** %196, align 8
  %198 = load i64, i64* @TOP_RIGHT, align 8
  %199 = getelementptr inbounds i8*, i8** %197, i64 %198
  store i8* %194, i8** %199, align 8
  %200 = load i8*, i8** @ROT_0, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i8**, i8*** %202, align 8
  %204 = load i64, i64* @BOTTOM_LEFT, align 8
  %205 = getelementptr inbounds i8*, i8** %203, i64 %204
  store i8* %200, i8** %205, align 8
  %206 = load i8*, i8** @ROT_0, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i8**, i8*** %208, align 8
  %210 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %211 = getelementptr inbounds i8*, i8** %209, i64 %210
  store i8* %206, i8** %211, align 8
  %212 = load i8*, i8** @ROT_0, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i8**, i8*** %214, align 8
  %216 = load i64, i64* @BOTTOM_RIGHT, align 8
  %217 = getelementptr inbounds i8*, i8** %215, i64 %216
  store i8* %212, i8** %217, align 8
  br label %255

218:                                              ; preds = %176
  %219 = load i8*, i8** @ROT_0, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i8**, i8*** %221, align 8
  %223 = load i64, i64* @TOP_LEFT, align 8
  %224 = getelementptr inbounds i8*, i8** %222, i64 %223
  store i8* %219, i8** %224, align 8
  %225 = load i8*, i8** @ROT_0, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i8**, i8*** %227, align 8
  %229 = load i64, i64* @TOP_MIDDLE, align 8
  %230 = getelementptr inbounds i8*, i8** %228, i64 %229
  store i8* %225, i8** %230, align 8
  %231 = load i8*, i8** @ROT_0, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i8**, i8*** %233, align 8
  %235 = load i64, i64* @TOP_RIGHT, align 8
  %236 = getelementptr inbounds i8*, i8** %234, i64 %235
  store i8* %231, i8** %236, align 8
  %237 = load i8*, i8** @ROT_270, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i8**, i8*** %239, align 8
  %241 = load i64, i64* @BOTTOM_LEFT, align 8
  %242 = getelementptr inbounds i8*, i8** %240, i64 %241
  store i8* %237, i8** %242, align 8
  %243 = load i8*, i8** @ROT_90, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i8**, i8*** %245, align 8
  %247 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %248 = getelementptr inbounds i8*, i8** %246, i64 %247
  store i8* %243, i8** %248, align 8
  %249 = load i8*, i8** @ROT_270, align 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i8**, i8*** %251, align 8
  %253 = load i64, i64* @BOTTOM_RIGHT, align 8
  %254 = getelementptr inbounds i8*, i8** %252, i64 %253
  store i8* %249, i8** %254, align 8
  br label %255

255:                                              ; preds = %218, %181
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
