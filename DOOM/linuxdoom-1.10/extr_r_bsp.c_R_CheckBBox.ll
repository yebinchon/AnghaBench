; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_CheckBBox.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_CheckBBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@viewx = common dso_local global i32 0, align 4
@BOXLEFT = common dso_local global i64 0, align 8
@BOXRIGHT = common dso_local global i64 0, align 8
@viewy = common dso_local global i32 0, align 4
@BOXTOP = common dso_local global i64 0, align 8
@BOXBOTTOM = common dso_local global i64 0, align 8
@checkcoord = common dso_local global i64** null, align 8
@viewangle = common dso_local global i32 0, align 4
@ANG180 = common dso_local global i32 0, align 4
@clipangle = common dso_local global i32 0, align 4
@ANG90 = common dso_local global i32 0, align 4
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@viewangletox = common dso_local global i32* null, align 8
@solidsegs = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_CheckBBox(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %18 = load i32, i32* @viewx, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* @BOXLEFT, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @viewx, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* @BOXRIGHT, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %34

33:                                               ; preds = %25
  store i32 2, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* @viewy, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* @BOXTOP, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %53

43:                                               ; preds = %35
  %44 = load i32, i32* @viewy, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @BOXBOTTOM, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %52

51:                                               ; preds = %43
  store i32 2, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 2
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %210

61:                                               ; preds = %53
  %62 = load i32*, i32** %3, align 8
  %63 = load i64**, i64*** @checkcoord, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %62, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load i64**, i64*** @checkcoord, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %73, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = load i64**, i64*** @checkcoord, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64*, i64** %83, i64 %85
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %82, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i64**, i64*** @checkcoord, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %92, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @R_PointToAngle(i32 %102, i32 %103)
  %105 = load i32, i32* @viewangle, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @R_PointToAngle(i32 %107, i32 %108)
  %110 = load i32, i32* @viewangle, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ANG180, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %61
  store i32 1, i32* %2, align 4
  br label %210

119:                                              ; preds = %61
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @clipangle, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @clipangle, align 4
  %125 = mul nsw i32 2, %124
  %126 = icmp sgt i32 %123, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load i32, i32* @clipangle, align 4
  %129 = mul nsw i32 2, %128
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %210

136:                                              ; preds = %127
  %137 = load i32, i32* @clipangle, align 4
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %119
  %139 = load i32, i32* @clipangle, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @clipangle, align 4
  %144 = mul nsw i32 2, %143
  %145 = icmp sgt i32 %142, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = load i32, i32* @clipangle, align 4
  %148 = mul nsw i32 2, %147
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %210

155:                                              ; preds = %146
  %156 = load i32, i32* @clipangle, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %155, %138
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @ANG90, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @ANG90, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %168 = ashr i32 %166, %167
  store i32 %168, i32* %12, align 4
  %169 = load i32*, i32** @viewangletox, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %16, align 4
  %174 = load i32*, i32** @viewangletox, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %210

183:                                              ; preds = %158
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %17, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** @solidsegs, align 8
  store %struct.TYPE_3__* %186, %struct.TYPE_3__** %15, align 8
  br label %187

187:                                              ; preds = %193, %183
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 1
  store %struct.TYPE_3__* %195, %struct.TYPE_3__** %15, align 8
  br label %187

196:                                              ; preds = %187
  %197 = load i32, i32* %16, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp sge i32 %197, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp sle i32 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store i32 0, i32* %2, align 4
  br label %210

209:                                              ; preds = %202, %196
  store i32 1, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %208, %182, %154, %135, %118, %60
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @R_PointToAngle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
