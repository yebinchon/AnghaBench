; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_reinit_tables.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_reinit_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32**, i32*, i32*, i32*, i32**, i32**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @reinit_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinit_tables(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %92, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %95

11:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %88, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4096
  br i1 %14, label %15, label %91

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 256
  br i1 %28, label %29, label %87

29:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %30

52:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 16, i32* %71, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %53

75:                                               ; preds = %53
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 256, i32* %86, align 8
  br label %87

87:                                               ; preds = %75, %15
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %12

91:                                               ; preds = %12
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %8

95:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %121, %95
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 6
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %115, %99
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 256
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %107

118:                                              ; preds = %107
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 256
  store i32 256, i32* %120, align 4
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %96

124:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %150, %124
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 6
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %144, %128
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 6
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %136

147:                                              ; preds = %136
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 6
  store i32 6, i32* %149, align 4
  br label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %125

153:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %170, %153
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %155, 256
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 1, i32* %163, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %157
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %154

173:                                              ; preds = %154
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 256
  store i32 256, i32* %177, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 256
  store i32 256, i32* %181, align 4
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %192, %173
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %183, 5
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %182

195:                                              ; preds = %182
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 5
  store i32 5, i32* %199, align 4
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %230, %195
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %201, 4
  br i1 %202, label %203, label %233

203:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %218, %203
  %205 = load i32, i32* %4, align 4
  %206 = icmp slt i32 %205, 16
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 5
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 1, i32* %217, align 4
  br label %218

218:                                              ; preds = %207
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  br label %204

221:                                              ; preds = %204
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 5
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 16
  store i32 16, i32* %229, align 4
  br label %230

230:                                              ; preds = %221
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %200

233:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %254, %233
  %235 = load i32, i32* %4, align 4
  %236 = icmp slt i32 %235, 512
  br i1 %236, label %237, label %257

237:                                              ; preds = %234
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 6
  %240 = load i32**, i32*** %239, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 1, i32* %245, align 4
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 6
  %248 = load i32**, i32*** %247, align 8
  %249 = getelementptr inbounds i32*, i32** %248, i64 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 1, i32* %253, align 4
  br label %254

254:                                              ; preds = %237
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  br label %234

257:                                              ; preds = %234
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 6
  %260 = load i32**, i32*** %259, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 512
  store i32 512, i32* %263, align 4
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 6
  %266 = load i32**, i32*** %265, align 8
  %267 = getelementptr inbounds i32*, i32** %266, i64 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 512
  store i32 512, i32* %269, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
