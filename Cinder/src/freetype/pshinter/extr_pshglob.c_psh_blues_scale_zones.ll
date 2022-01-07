; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshglob.c_psh_blues_scale_zones.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshglob.c_psh_blues_scale_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i64, i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @psh_blues_scale_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_blues_scale_zones(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp sge i64 %20, 34359738
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 8
  %28 = sdiv i32 %27, 125
  %29 = icmp slt i32 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i8* @FT_BOOL(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 125
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 8
  %41 = icmp slt i32 %36, %40
  %42 = zext i1 %41 to i32
  %43 = call i8* @FT_BOOL(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %34, %22
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %61, %46
  %51 = load i64, i64* %10, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @FT_MulFix(i32 %55, i32 %56)
  %58 = icmp sgt i32 %57, 32
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i1 [ false, %50 ], [ %58, %53 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %10, align 8
  br label %50

64:                                               ; preds = %59
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %142, %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %145

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %82 [
    i32 0, label %73
    i32 1, label %76
    i32 2, label %79
  ]

73:                                               ; preds = %71
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %9, align 8
  br label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %9, align 8
  br label %85

79:                                               ; preds = %71
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %9, align 8
  br label %85

82:                                               ; preds = %71
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %9, align 8
  br label %85

85:                                               ; preds = %82, %79, %76, %73
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %11, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %136, %85
  %93 = load i32, i32* %7, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %92
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @FT_MulFix(i32 %98, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @FT_MulFix(i32 %107, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @FT_MulFix(i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @FT_MulFix(i32 %125, i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @FT_PIX_ROUND(i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %95
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %7, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 1
  store %struct.TYPE_6__* %140, %struct.TYPE_6__** %11, align 8
  br label %92

141:                                              ; preds = %92
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %68

145:                                              ; preds = %68
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %233, %145
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %236

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  switch i32 %150, label %156 [
    i32 0, label %151
  ]

151:                                              ; preds = %149
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  store %struct.TYPE_7__* %153, %struct.TYPE_7__** %16, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %17, align 8
  br label %161

156:                                              ; preds = %149
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  store %struct.TYPE_7__* %158, %struct.TYPE_7__** %16, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %17, align 8
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  store %struct.TYPE_6__* %164, %struct.TYPE_6__** %12, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %227, %161
  %169 = load i32, i32* %14, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %232

171:                                              ; preds = %168
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  store %struct.TYPE_6__* %174, %struct.TYPE_6__** %13, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %221, %171
  %179 = load i32, i32* %15, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %226

181:                                              ; preds = %178
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %184, %187
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %181
  %192 = load i32, i32* %18, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %191, %181
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @FT_MulFix(i32 %195, i32 %196)
  %198 = icmp slt i32 %197, 64
  br i1 %198, label %199, label %220

199:                                              ; preds = %194
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 4
  br label %226

220:                                              ; preds = %194
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %15, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 1
  store %struct.TYPE_6__* %225, %struct.TYPE_6__** %13, align 8
  br label %178

226:                                              ; preds = %199, %178
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %14, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 1
  store %struct.TYPE_6__* %231, %struct.TYPE_6__** %12, align 8
  br label %168

232:                                              ; preds = %168
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %146

236:                                              ; preds = %146
  ret void
}

declare dso_local i8* @FT_BOOL(i32) #1

declare dso_local i32 @FT_MulFix(i32, i32) #1

declare dso_local i32 @FT_PIX_ROUND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
