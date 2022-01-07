; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_dsp_dma03.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_dsp_dma03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32**, i64*, i32, %struct.TYPE_7__, i8** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ScuDsp = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_dma03(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 7
  switch i32 %13, label %142 [
    i32 0, label %14
    i32 1, label %27
    i32 2, label %40
    i32 3, label %53
    i32 4, label %66
    i32 5, label %85
    i32 6, label %104
    i32 7, label %123
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %142

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %142

40:                                               ; preds = %2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %142

53:                                               ; preds = %2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %142

66:                                               ; preds = %2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ScuDsp, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %142

85:                                               ; preds = %2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %5, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ScuDsp, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %142

104:                                              ; preds = %2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ScuDsp, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %142

123:                                              ; preds = %2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 3
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 3
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %128, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %5, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ScuDsp, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %2, %123, %104, %85, %66, %53, %40, %27, %14
  %143 = load i32, i32* %4, align 4
  %144 = ashr i32 %143, 8
  %145 = and i32 %144, 7
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sgt i32 %146, 3
  br i1 %147, label %148, label %175

148:                                              ; preds = %142
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %171, %148
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 2
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i8* @MappedMemoryReadLong(i32 %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  store i8* %159, i8** %165, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %153
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %149

174:                                              ; preds = %149
  br label %228

175:                                              ; preds = %142
  store i32 1, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %224, %175
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %227

180:                                              ; preds = %176
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 2
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i8* @MappedMemoryReadLong(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i32, i32* %194, i64 %201
  store i32 %187, i32* %202, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = and i64 %217, 63
  store i64 %218, i64* %216, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %180
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %176

227:                                              ; preds = %176
  br label %228

228:                                              ; preds = %227, %174
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  ret void
}

declare dso_local i8* @MappedMemoryReadLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
