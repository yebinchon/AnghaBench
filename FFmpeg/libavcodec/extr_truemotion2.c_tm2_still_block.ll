; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_still_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_still_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i64 }

@Uo = common dso_local global i32* null, align 8
@U = common dso_local global i32* null, align 8
@Vo = common dso_local global i32* null, align 8
@V = common dso_local global i32* null, align 8
@Ustride = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@oUstride = common dso_local global i32 0, align 4
@oVstride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@Yo = common dso_local global i8** null, align 8
@last = common dso_local global i8** null, align 8
@oYstride = common dso_local global i32 0, align 4
@Y = common dso_local global i8** null, align 8
@Ystride = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32)* @tm2_still_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_still_block(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @TM2_INIT_POINTERS_2()
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %58, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32*, i32** @Uo, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @U, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** @Vo, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @V, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* @Ustride, align 4
  %43 = load i32*, i32** @U, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** @U, align 8
  %46 = load i32, i32* @Vstride, align 4
  %47 = load i32*, i32** @V, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** @V, align 8
  %50 = load i32, i32* @oUstride, align 4
  %51 = load i32*, i32** @Uo, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** @Uo, align 8
  %54 = load i32, i32* @oVstride, align 4
  %55 = load i32*, i32** @Vo, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** @Vo, align 8
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load i32, i32* @Ustride, align 4
  %63 = mul nsw i32 %62, 2
  %64 = load i32*, i32** @U, align 8
  %65 = sext i32 %63 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** @U, align 8
  %68 = load i32, i32* @Vstride, align 4
  %69 = mul nsw i32 %68, 2
  %70 = load i32*, i32** @V, align 8
  %71 = sext i32 %69 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** @V, align 8
  %74 = load i32*, i32** @U, align 8
  %75 = load i32, i32* @Ustride, align 4
  %76 = load i64, i64* @clast, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @TM2_RECALC_BLOCK(i32* %74, i32 %75, i64 %76, i64 %79)
  %81 = load i32*, i32** @V, align 8
  %82 = load i32, i32* @Vstride, align 4
  %83 = load i64, i64* @clast, align 8
  %84 = add nsw i64 %83, 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 2
  %89 = call i32 @TM2_RECALC_BLOCK(i32* %81, i32 %82, i64 %84, i64 %88)
  %90 = load i8**, i8*** @Yo, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 3
  %92 = load i8*, i8** %91, align 8
  %93 = load i8**, i8*** @last, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 3
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %92 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %99, i8** %103, align 8
  %104 = load i8**, i8*** @Yo, align 8
  %105 = load i32, i32* @oYstride, align 4
  %106 = add nsw i32 3, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i8**, i8*** @Yo, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 3
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  store i8* %116, i8** %120, align 8
  %121 = load i8**, i8*** @Yo, align 8
  %122 = load i32, i32* @oYstride, align 4
  %123 = mul nsw i32 %122, 2
  %124 = add nsw i32 3, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %121, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i8**, i8*** @Yo, align 8
  %129 = load i32, i32* @oYstride, align 4
  %130 = add nsw i32 3, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %127 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  store i8* %137, i8** %141, align 8
  %142 = load i8**, i8*** @Yo, align 8
  %143 = load i32, i32* @oYstride, align 4
  %144 = mul nsw i32 %143, 3
  %145 = add nsw i32 3, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %142, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** @Yo, align 8
  %150 = load i32, i32* @oYstride, align 4
  %151 = mul nsw i32 %150, 2
  %152 = add nsw i32 3, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %149, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = ptrtoint i8* %148 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 3
  store i8* %159, i8** %163, align 8
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %202, %61
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 4
  br i1 %166, label %167, label %205

167:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %190, %167
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = load i8**, i8*** @Yo, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load i8**, i8*** @Y, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* %176, i8** %180, align 8
  %181 = load i8**, i8*** @Yo, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = load i8**, i8*** @last, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  store i8* %185, i8** %189, align 8
  br label %190

190:                                              ; preds = %171
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %168

193:                                              ; preds = %168
  %194 = load i32, i32* @Ystride, align 4
  %195 = load i8**, i8*** @Y, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8*, i8** %195, i64 %196
  store i8** %197, i8*** @Y, align 8
  %198 = load i32, i32* @oYstride, align 4
  %199 = load i8**, i8*** @Yo, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8*, i8** %199, i64 %200
  store i8** %201, i8*** @Yo, align 8
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %164

205:                                              ; preds = %164
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS_2(...) #1

declare dso_local i32 @TM2_RECALC_BLOCK(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
