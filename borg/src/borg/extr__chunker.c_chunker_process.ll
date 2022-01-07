; ModuleID = '/home/carl/AnghaBench/borg/src/borg/extr__chunker.c_chunker_process.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/extr__chunker.c_chunker_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, i64, i64, i32, i64, i32*, i32, i64 }

@PyExc_StopIteration = common dso_local global i32 0, align 4
@PyExc_Exception = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"chunkifier byte count mismatch\00", align 1
@PyBUF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @chunker_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chunker_process(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @PyExc_StopIteration, align 4
  %33 = call i32 @PyErr_SetNone(i32 %32)
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @PyExc_Exception, align 4
  %36 = call i32 @PyErr_SetString(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  store i32* null, i32** %2, align 8
  br label %251

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %61, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %43, %44
  %46 = add i64 %45, 1
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %39
  %55 = phi i1 [ false, %39 ], [ %53, %48 ]
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = call i32 @chunker_fill(%struct.TYPE_4__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32* null, i32** %2, align 8
  br label %251

61:                                               ; preds = %56
  br label %39

62:                                               ; preds = %54
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 11
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %62
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 9
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = bitcast i32* %89 to i8*
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @PyBUF_READ, align 4
  %95 = call i32* @PyMemoryView_FromMemory(i8* %90, i64 %93, i32 %94)
  store i32* %95, i32** %2, align 8
  br label %251

96:                                               ; preds = %67
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @PyExc_StopIteration, align 4
  %106 = call i32 @PyErr_SetNone(i32 %105)
  br label %110

107:                                              ; preds = %96
  %108 = load i32, i32* @PyExc_Exception, align 4
  %109 = call i32 @PyErr_SetString(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  store i32* null, i32** %2, align 8
  br label %251

111:                                              ; preds = %62
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = sub i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %6, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @buzhash(i32* %134, i64 %135, i32 %138)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %203, %111
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ugt i64 %143, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %148, %140
  %154 = phi i1 [ false, %140 ], [ %152, %148 ]
  br i1 %154, label %155, label %204

155:                                              ; preds = %153
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 9
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 9
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %172, %173
  %175 = getelementptr inbounds i32, i32* %168, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @buzhash_update(i32 %156, i32 %165, i32 %176, i64 %177, i32 %180)
  store i32 %181, i32* %4, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, -1
  store i64 %189, i64* %187, align 8
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %6, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = icmp ule i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %155
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %199 = call i32 @chunker_fill(%struct.TYPE_4__* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  store i32* null, i32** %2, align 8
  br label %251

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202, %155
  br label %140

204:                                              ; preds = %153
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %9, align 8
  %209 = icmp ule i64 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %204
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = add i64 %217, %213
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 6
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %210, %204
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 8
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %7, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 8
  store i64 %229, i64* %231, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 8
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* %7, align 8
  %236 = sub i64 %234, %235
  store i64 %236, i64* %6, align 8
  %237 = load i64, i64* %6, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* %7, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = bitcast i32* %246 to i8*
  %248 = load i64, i64* %6, align 8
  %249 = load i32, i32* @PyBUF_READ, align 4
  %250 = call i32* @PyMemoryView_FromMemory(i8* %247, i64 %248, i32 %249)
  store i32* %250, i32** %2, align 8
  br label %251

251:                                              ; preds = %222, %201, %110, %74, %60, %37
  %252 = load i32*, i32** %2, align 8
  ret i32* %252
}

declare dso_local i32 @PyErr_SetNone(i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @chunker_fill(%struct.TYPE_4__*) #1

declare dso_local i32* @PyMemoryView_FromMemory(i8*, i64, i32) #1

declare dso_local i32 @buzhash(i32*, i64, i32) #1

declare dso_local i32 @buzhash_update(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
