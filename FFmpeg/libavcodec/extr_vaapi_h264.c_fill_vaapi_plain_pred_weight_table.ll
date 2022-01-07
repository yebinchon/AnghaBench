; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_h264.c_fill_vaapi_plain_pred_weight_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_h264.c_fill_vaapi_plain_pred_weight_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i16***, i32, i16****, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i8*, i16*, i16*, i8*, [2 x i16]*, [2 x i16]*)* @fill_vaapi_plain_pred_weight_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_vaapi_plain_pred_weight_table(%struct.TYPE_7__* %0, i32 %1, i8* %2, i16* %3, i16* %4, i8* %5, [2 x i16]* %6, [2 x i16]* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [2 x i16]*, align 8
  %16 = alloca [2 x i16]*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i16* %3, i16** %12, align 8
  store i16* %4, i16** %13, align 8
  store i8* %5, i8** %14, align 8
  store [2 x i16]* %6, [2 x i16]** %15, align 8
  store [2 x i16]* %7, [2 x i16]** %16, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %17, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %11, align 8
  store i8 %31, i8* %32, align 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %14, align 8
  store i8 %40, i8* %41, align 1
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %205, %8
  %43 = load i32, i32* %18, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %43, %50
  br i1 %51, label %52, label %208

52:                                               ; preds = %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %52
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i16***, i16**** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i16**, i16*** %66, i64 %68
  %70 = load i16**, i16*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16*, i16** %70, i64 %72
  %74 = load i16*, i16** %73, align 8
  %75 = getelementptr inbounds i16, i16* %74, i64 0
  %76 = load i16, i16* %75, align 2
  %77 = load i16*, i16** %12, align 8
  %78 = load i32, i32* %18, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  store i16 %76, i16* %80, align 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i16***, i16**** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16**, i16*** %84, i64 %86
  %88 = load i16**, i16*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16*, i16** %88, i64 %90
  %92 = load i16*, i16** %91, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 1
  %94 = load i16, i16* %93, align 2
  %95 = load i16*, i16** %13, align 8
  %96 = load i32, i32* %18, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i16, i16* %95, i64 %97
  store i16 %94, i16* %98, align 2
  br label %114

99:                                               ; preds = %52
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 1, %103
  %105 = trunc i32 %104 to i16
  %106 = load i16*, i16** %12, align 8
  %107 = load i32, i32* %18, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %106, i64 %108
  store i16 %105, i16* %109, align 2
  %110 = load i16*, i16** %13, align 8
  %111 = load i32, i32* %18, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %110, i64 %112
  store i16 0, i16* %113, align 2
  br label %114

114:                                              ; preds = %99, %62
  store i32 0, i32* %19, align 4
  br label %115

115:                                              ; preds = %201, %114
  %116 = load i32, i32* %19, align 4
  %117 = icmp ult i32 %116, 2
  br i1 %117, label %118, label %204

118:                                              ; preds = %115
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %179

128:                                              ; preds = %118
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i16****, i16***** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i16***, i16**** %132, i64 %134
  %136 = load i16***, i16**** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i16**, i16*** %136, i64 %138
  %140 = load i16**, i16*** %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i16*, i16** %140, i64 %142
  %144 = load i16*, i16** %143, align 8
  %145 = getelementptr inbounds i16, i16* %144, i64 0
  %146 = load i16, i16* %145, align 2
  %147 = load [2 x i16]*, [2 x i16]** %15, align 8
  %148 = load i32, i32* %18, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [2 x i16], [2 x i16]* %147, i64 %149
  %151 = load i32, i32* %19, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [2 x i16], [2 x i16]* %150, i64 0, i64 %152
  store i16 %146, i16* %153, align 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i16****, i16***** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i16***, i16**** %157, i64 %159
  %161 = load i16***, i16**** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16**, i16*** %161, i64 %163
  %165 = load i16**, i16*** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i16*, i16** %165, i64 %167
  %169 = load i16*, i16** %168, align 8
  %170 = getelementptr inbounds i16, i16* %169, i64 1
  %171 = load i16, i16* %170, align 2
  %172 = load [2 x i16]*, [2 x i16]** %16, align 8
  %173 = load i32, i32* %18, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [2 x i16], [2 x i16]* %172, i64 %174
  %176 = load i32, i32* %19, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [2 x i16], [2 x i16]* %175, i64 0, i64 %177
  store i16 %171, i16* %178, align 2
  br label %200

179:                                              ; preds = %118
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 1, %183
  %185 = trunc i32 %184 to i16
  %186 = load [2 x i16]*, [2 x i16]** %15, align 8
  %187 = load i32, i32* %18, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [2 x i16], [2 x i16]* %186, i64 %188
  %190 = load i32, i32* %19, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [2 x i16], [2 x i16]* %189, i64 0, i64 %191
  store i16 %185, i16* %192, align 2
  %193 = load [2 x i16]*, [2 x i16]** %16, align 8
  %194 = load i32, i32* %18, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [2 x i16], [2 x i16]* %193, i64 %195
  %197 = load i32, i32* %19, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [2 x i16], [2 x i16]* %196, i64 0, i64 %198
  store i16 0, i16* %199, align 2
  br label %200

200:                                              ; preds = %179, %128
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %19, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %19, align 4
  br label %115

204:                                              ; preds = %115
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %18, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %42

208:                                              ; preds = %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
