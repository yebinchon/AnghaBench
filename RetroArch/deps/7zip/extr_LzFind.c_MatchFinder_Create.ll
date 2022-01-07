; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_MatchFinder_Create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_MatchFinder_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64 }

@LzFindkMaxHistorySize = common dso_local global i32 0, align 4
@kHash2Size = common dso_local global i64 0, align 8
@kHash3Size = common dso_local global i64 0, align 8
@kHash4Size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinder_Create(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @LzFindkMaxHistorySize, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @MatchFinder_Free(%struct.TYPE_6__* %23, i32* %24)
  store i32 0, i32* %7, align 4
  br label %228

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, -1073741824
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %14, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, -2147483648
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 2
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %47, 524288
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = call i64 @LzInWindow_Create(%struct.TYPE_6__* %62, i32 %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %224

67:                                               ; preds = %41
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 12
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 65535, i32* %16, align 4
  br label %116

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %16, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = ashr i32 %87, 2
  %89 = load i32, i32* %16, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = ashr i32 %91, 4
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = ashr i32 %95, 8
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = ashr i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = or i32 %101, 65535
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sgt i32 %103, 16777216
  br i1 %104, label %105, label %115

105:                                              ; preds = %80
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 16777215, i32* %16, align 4
  br label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %16, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %111, %110
  br label %115

115:                                              ; preds = %114, %80
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 2
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load i64, i64* @kHash2Size, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 12
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %126, %116
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 3
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i64, i64* @kHash3Size, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 12
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %137, %132
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 4
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i64, i64* @kHash4Size, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 12
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %148, %143
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 12
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %18, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 11
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %154
  %178 = load i64, i64* %18, align 8
  %179 = shl i64 %178, 1
  store i64 %179, i64* %18, align 8
  br label %180

180:                                              ; preds = %177, %154
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %18, align 8
  %184 = add i64 %182, %183
  store i64 %184, i64* %17, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %180
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 8
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %17, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  store i32 1, i32* %7, align 4
  br label %228

196:                                              ; preds = %189, %180
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = call i32 @MatchFinder_FreeThisClassMemory(%struct.TYPE_6__* %197, i32* %198)
  %200 = load i64, i64* %17, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 8
  store i64 %200, i64* %202, align 8
  %203 = load i64, i64* %17, align 8
  %204 = load i32*, i32** %13, align 8
  %205 = call i32 @AllocRefs(i64 %203, i32* %204)
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 9
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %196
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %215, %218
  %220 = sext i32 %219 to i64
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 10
  store i64 %220, i64* %222, align 8
  store i32 1, i32* %7, align 4
  br label %228

223:                                              ; preds = %196
  br label %224

224:                                              ; preds = %223, %41
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @MatchFinder_Free(%struct.TYPE_6__* %225, i32* %226)
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %224, %212, %195, %22
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local i32 @MatchFinder_Free(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @LzInWindow_Create(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @MatchFinder_FreeThisClassMemory(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @AllocRefs(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
