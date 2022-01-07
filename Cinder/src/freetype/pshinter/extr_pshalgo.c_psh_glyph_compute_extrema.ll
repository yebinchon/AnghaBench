; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshalgo.c_psh_glyph_compute_extrema.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshalgo.c_psh_glyph_compute_extrema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @psh_glyph_compute_extrema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_glyph_compute_extrema(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %123, %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %126

17:                                               ; preds = %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %4, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %123

34:                                               ; preds = %17
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %6, align 8
  br label %37

37:                                               ; preds = %46, %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %6, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = icmp eq %struct.TYPE_10__* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %221

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %37, label %54

54:                                               ; preds = %46
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %4, align 8
  br label %58

58:                                               ; preds = %117, %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %7, align 8
  br label %60

60:                                               ; preds = %69, %58
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = icmp eq %struct.TYPE_10__* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %122

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %60, label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %104

94:                                               ; preds = %85
  br label %117

95:                                               ; preds = %77
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %93
  br label %105

105:                                              ; preds = %111, %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = call i32 @psh_point_set_extremum(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %5, align 8
  br label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = icmp ne %struct.TYPE_10__* %112, %113
  br i1 %114, label %105, label %115

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %94
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %6, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %5, align 8
  br label %58

122:                                              ; preds = %67
  br label %123

123:                                              ; preds = %122, %33
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %3, align 8
  br label %11

126:                                              ; preds = %11
  store i64 0, i64* %3, align 8
  br label %127

127:                                              ; preds = %222, %126
  %128 = load i64, i64* %3, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %225

133:                                              ; preds = %127
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %137
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %8, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %9, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %10, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %142 = call i64 @psh_point_is_extremum(%struct.TYPE_10__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %181

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %154, %144
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %9, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = icmp eq %struct.TYPE_10__* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %221

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %145, label %162

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %172, %162
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  store %struct.TYPE_10__* %166, %struct.TYPE_10__** %10, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = icmp eq %struct.TYPE_10__* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %221

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %163, label %180

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %133
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp slt i64 %184, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %181
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %192, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %199 = call i32 @psh_point_set_positive(%struct.TYPE_10__* %198)
  br label %220

200:                                              ; preds = %189, %181
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %203, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %200
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %218 = call i32 @psh_point_set_negative(%struct.TYPE_10__* %217)
  br label %219

219:                                              ; preds = %216, %208, %200
  br label %220

220:                                              ; preds = %219, %197
  br label %221

221:                                              ; preds = %220, %170, %152, %44
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %3, align 8
  br label %127

225:                                              ; preds = %127
  ret void
}

declare dso_local i32 @psh_point_set_extremum(%struct.TYPE_10__*) #1

declare dso_local i64 @psh_point_is_extremum(%struct.TYPE_10__*) #1

declare dso_local i32 @psh_point_set_positive(%struct.TYPE_10__*) #1

declare dso_local i32 @psh_point_set_negative(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
