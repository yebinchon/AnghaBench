; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_eqtype.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_eqtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eqtype(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = icmp eq %struct.TYPE_14__* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %194

15:                                               ; preds = %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %194

24:                                               ; preds = %15
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %192 [
    i32 136, label %28
    i32 130, label %28
    i32 131, label %28
    i32 129, label %28
    i32 133, label %28
    i32 135, label %28
    i32 132, label %29
    i32 128, label %37
    i32 265, label %37
    i32 137, label %37
    i32 138, label %45
    i32 134, label %77
  ]

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  store i32 0, i32* %4, align 4
  br label %194

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = call i32 @eqtype(%struct.TYPE_14__* %32, %struct.TYPE_14__* %35, i32 1)
  store i32 %36, i32* %4, align 4
  br label %194

37:                                               ; preds = %24, %24, %24
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = call i32 @eqtype(%struct.TYPE_14__* %40, %struct.TYPE_14__* %43, i32 1)
  store i32 %44, i32* %4, align 4
  br label %194

45:                                               ; preds = %24
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = call i32 @eqtype(%struct.TYPE_14__* %48, %struct.TYPE_14__* %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %45
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %194

63:                                               ; preds = %54
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %4, align 4
  br label %194

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %45
  store i32 0, i32* %4, align 4
  br label %194

77:                                               ; preds = %24
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @eqtype(%struct.TYPE_14__* %80, %struct.TYPE_14__* %83, i32 1)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %191

86:                                               ; preds = %77
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %90, align 8
  store %struct.TYPE_14__** %91, %struct.TYPE_14__*** %8, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %95, align 8
  store %struct.TYPE_14__** %96, %struct.TYPE_14__*** %9, align 8
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %98 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %99 = icmp eq %struct.TYPE_14__** %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  store i32 1, i32* %4, align 4
  br label %194

101:                                              ; preds = %86
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %103 = icmp ne %struct.TYPE_14__** %102, null
  br i1 %103, label %104, label %144

104:                                              ; preds = %101
  %105 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %106 = icmp ne %struct.TYPE_14__** %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %129, %107
  %109 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = icmp ne %struct.TYPE_14__* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = icmp ne %struct.TYPE_14__* %114, null
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ false, %108 ], [ %115, %112 ]
  br i1 %117, label %118, label %134

118:                                              ; preds = %116
  %119 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = call %struct.TYPE_14__* @unqual(%struct.TYPE_14__* %120)
  %122 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = call %struct.TYPE_14__* @unqual(%struct.TYPE_14__* %123)
  %125 = call i32 @eqtype(%struct.TYPE_14__* %121, %struct.TYPE_14__* %124, i32 1)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %194

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %130, i32 1
  store %struct.TYPE_14__** %131, %struct.TYPE_14__*** %8, align 8
  %132 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %132, i32 1
  store %struct.TYPE_14__** %133, %struct.TYPE_14__*** %9, align 8
  br label %108

134:                                              ; preds = %116
  %135 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = icmp eq %struct.TYPE_14__* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = icmp eq %struct.TYPE_14__* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %4, align 4
  br label %194

143:                                              ; preds = %138, %134
  br label %190

144:                                              ; preds = %104, %101
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %146 = icmp ne %struct.TYPE_14__** %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  br label %151

149:                                              ; preds = %144
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi %struct.TYPE_14__* [ %148, %147 ], [ %150, %149 ]
  %153 = call i32 @variadic(%struct.TYPE_14__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %194

156:                                              ; preds = %151
  %157 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %158 = icmp eq %struct.TYPE_14__** %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__** %160, %struct.TYPE_14__*** %8, align 8
  br label %161

161:                                              ; preds = %159, %156
  br label %162

162:                                              ; preds = %186, %161
  %163 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = icmp ne %struct.TYPE_14__* %164, null
  br i1 %165, label %166, label %189

166:                                              ; preds = %162
  %167 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = call %struct.TYPE_14__* @unqual(%struct.TYPE_14__* %168)
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %10, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %171 = call %struct.TYPE_14__* @promote(%struct.TYPE_14__* %170)
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %173 = call i32 @isenum(%struct.TYPE_14__* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  br label %181

179:                                              ; preds = %166
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  br label %181

181:                                              ; preds = %179, %175
  %182 = phi %struct.TYPE_14__* [ %178, %175 ], [ %180, %179 ]
  %183 = icmp ne %struct.TYPE_14__* %171, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %194

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %187, i32 1
  store %struct.TYPE_14__** %188, %struct.TYPE_14__*** %8, align 8
  br label %162

189:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %194

190:                                              ; preds = %143
  br label %191

191:                                              ; preds = %190, %77
  store i32 0, i32* %4, align 4
  br label %194

192:                                              ; preds = %24
  %193 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %191, %189, %184, %155, %142, %127, %100, %76, %73, %62, %37, %29, %28, %23, %14
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.TYPE_14__* @unqual(%struct.TYPE_14__*) #1

declare dso_local i32 @variadic(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @promote(%struct.TYPE_14__*) #1

declare dso_local i32 @isenum(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
