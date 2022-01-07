; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_ff_ac3_group_exponents.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_ff_ac3_group_exponents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32**, i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i32**, i32*, i32 }

@EXP_REUSE = common dso_local global i32 0, align 4
@CPL_CH = common dso_local global i32 0, align 4
@EXP_D45 = common dso_local global i32 0, align 4
@exponent_group_tab = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ac3_group_exponents(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %221, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %224

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %15, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %217, %23
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %42, label %220

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @EXP_REUSE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %217

58:                                               ; preds = %42
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CPL_CH, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @EXP_D45, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32***, i32**** @exponent_group_tab, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32**, i32*** %69, i64 %71
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %73, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %85, %92
  %94 = getelementptr inbounds i32, i32* %78, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %103, %110
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %9, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %9, align 8
  %118 = load i32, i32* %116, align 4
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %119, i32* %127, align 4
  store i32 1, i32* %5, align 4
  br label %128

128:                                              ; preds = %213, %58
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %216

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %9, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %141, %142
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %132
  %148 = load i32, i32* %10, align 4
  %149 = icmp sle i32 %148, 4
  br label %150

150:                                              ; preds = %147, %132
  %151 = phi i1 [ false, %132 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @av_assert2(i32 %152)
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %13, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %9, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = sub nsw i32 %162, %163
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %150
  %169 = load i32, i32* %11, align 4
  %170 = icmp sle i32 %169, 4
  br label %171

171:                                              ; preds = %168, %150
  %172 = phi i1 [ false, %150 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @av_assert2(i32 %173)
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %13, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %9, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sub nsw i32 %183, %184
  %186 = add nsw i32 %185, 2
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %171
  %190 = load i32, i32* %12, align 4
  %191 = icmp sle i32 %190, 4
  br label %192

192:                                              ; preds = %189, %171
  %193 = phi i1 [ false, %171 ], [ %191, %189 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 @av_assert2(i32 %194)
  %196 = load i32, i32* %10, align 4
  %197 = mul nsw i32 %196, 5
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %197, %198
  %200 = mul nsw i32 %199, 5
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %200, %201
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %202, i32* %212, align 4
  br label %213

213:                                              ; preds = %192
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %128

216:                                              ; preds = %128
  br label %217

217:                                              ; preds = %216, %57
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  br label %36

220:                                              ; preds = %36
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %3, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %3, align 4
  br label %17

224:                                              ; preds = %17
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
