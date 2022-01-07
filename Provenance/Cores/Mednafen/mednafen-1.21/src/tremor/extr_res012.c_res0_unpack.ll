; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_res012.c_res0_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_res012.c_res0_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @res0_unpack(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = call i64 @_ogg_calloc(i32 1, i32 48)
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @oggpack_read(i32* %23, i32 24)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @oggpack_read(i32* %27, i32 24)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @oggpack_read(i32* %31, i32 24)
  %33 = add nsw i32 %32, 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @oggpack_read(i32* %36, i32 6)
  %38 = add nsw i32 %37, 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @oggpack_read(i32* %41, i32 8)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %215

50:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %93, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @oggpack_read(i32* %58, i32 3)
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @oggpack_read(i32* %60, i32 1)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %215

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @oggpack_read(i32* %69, i32 5)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %215

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 %75, 3
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %65
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @icount(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %51

96:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %115, %96
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @oggpack_read(i32* %102, i32 8)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %215

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %97

118:                                              ; preds = %97
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %215

127:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %164, %127
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %167

132:                                              ; preds = %128
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  br label %215

145:                                              ; preds = %132
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %148, i64 %156
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %215

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %128

167:                                              ; preds = %128
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %170, i64 %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %14, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %181, i64 %185
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %192, label %193

192:                                              ; preds = %167
  br label %215

193:                                              ; preds = %167
  br label %194

194:                                              ; preds = %207, %193
  %195 = load i32, i32* %15, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %16, align 4
  %202 = mul nsw i32 %201, %200
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  br label %215

207:                                              ; preds = %197
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %15, align 4
  br label %194

210:                                              ; preds = %194
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %214, %struct.TYPE_10__** %3, align 8
  br label %218

215:                                              ; preds = %206, %192, %162, %144, %126, %106, %73, %64, %49
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %217 = call i32 @res0_free_info(%struct.TYPE_10__* %216)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %218

218:                                              ; preds = %215, %210
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %219
}

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i64 @icount(i32) #1

declare dso_local i32 @res0_free_info(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
