; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i32, i32**, i32, i8***, i8*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32)* @parse_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ts(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %14, align 4
  br label %19

19:                                               ; preds = %241, %6
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %244

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %16, align 4
  br label %72

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %16, align 4
  br label %71

45:                                               ; preds = %31, %28
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  %48 = call i64 @ensure_bits(i32* %47, i32 28)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %244

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 3
  %58 = call i8* @get_bits(i32* %53, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 6
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 6, i32* %16, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %37
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 -1, i32* %7, align 4
  br label %245

79:                                               ; preds = %72
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 12
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 4
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @parse_grid_3(%struct.TYPE_5__* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %83

100:                                              ; preds = %83
  br label %116

101:                                              ; preds = %79
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 12
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* %16, align 4
  %106 = icmp sge i32 %105, 4
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %111, 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @parse_grid_3(%struct.TYPE_5__* %108, i32 %109, i32 %110, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %107, %104, %101
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %175

120:                                              ; preds = %116
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 7
  %123 = call i64 @ensure_bits(i32* %122, i32 20)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %244

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %130, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %129, %126
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 7
  %138 = call i8* @get_bits(i32* %137, i32 8)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 9
  %141 = load i8***, i8**** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sdiv i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8**, i8*** %141, i64 %144
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8* %138, i8** %149, align 8
  br label %150

150:                                              ; preds = %135, %129
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %150
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %154, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 7
  %162 = call i8* @get_bits(i32* %161, i32 8)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 8
  %165 = load i8***, i8**** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sdiv i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8**, i8*** %165, i64 %168
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %162, i8** %173, align 8
  br label %174

174:                                              ; preds = %159, %153, %150
  br label %175

175:                                              ; preds = %174, %116
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 6
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sdiv i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %178, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %175
  store i32 -1, i32* %7, align 4
  br label %245

191:                                              ; preds = %175
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %224

197:                                              ; preds = %191
  %198 = load i32, i32* %16, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = icmp sge i32 %198, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %197
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %17, align 4
  %211 = call i32 @parse_ch(%struct.TYPE_5__* %207, i32 %208, i32 %209, i32 %210, i32 0)
  br label %223

212:                                              ; preds = %203
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @parse_ch(%struct.TYPE_5__* %217, i32 %218, i32 %219, i32 %220, i32 1)
  br label %222

222:                                              ; preds = %216, %212
  br label %223

223:                                              ; preds = %222, %206
  br label %240

224:                                              ; preds = %197, %191
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @parse_ch(%struct.TYPE_5__* %225, i32 %226, i32 %227, i32 %228, i32 0)
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %224
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %17, align 4
  %238 = call i32 @parse_ch(%struct.TYPE_5__* %234, i32 %235, i32 %236, i32 %237, i32 0)
  br label %239

239:                                              ; preds = %233, %224
  br label %240

240:                                              ; preds = %239, %223
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %19

244:                                              ; preds = %125, %50, %19
  store i32 0, i32* %7, align 4
  br label %245

245:                                              ; preds = %244, %190, %78
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

declare dso_local i64 @ensure_bits(i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @parse_grid_3(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @parse_ch(%struct.TYPE_5__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
