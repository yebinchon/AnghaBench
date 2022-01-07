; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvReturnItemDefault.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvReturnItemDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64, i32 }

@rbHEADER_SIZE = common dso_local global i32 0, align 4
@rbITEM_DUMMY_DATA_FLAG = common dso_local global i32 0, align 4
@rbITEM_FREE_FLAG = common dso_local global i32 0, align 4
@rbITEM_SPLIT_FLAG = common dso_local global i32 0, align 4
@rbBUFFER_FULL_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @prvReturnItemDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvReturnItemDefault(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @rbCHECK_ALIGNED(i32* %7)
  %9 = call i32 @configASSERT(i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp uge i32* %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @configASSERT(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ule i32* %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @configASSERT(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @rbHEADER_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = bitcast i32* %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @configASSERT(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @rbITEM_DUMMY_DATA_FLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @configASSERT(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @rbITEM_FREE_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @configASSERT(i32 %53)
  %55 = load i32, i32* @rbITEM_SPLIT_FLAG, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @rbITEM_FREE_FLAG, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %5, align 8
  br label %70

70:                                               ; preds = %159, %2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @rbITEM_FREE_FLAG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @rbITEM_DUMMY_DATA_FLAG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77, %70
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %87, %90
  br label %92

92:                                               ; preds = %84, %77
  %93 = phi i1 [ false, %77 ], [ %91, %84 ]
  br i1 %93, label %94, label %164

94:                                               ; preds = %92
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @rbITEM_DUMMY_DATA_FLAG, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load i32, i32* @rbITEM_FREE_FLAG, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  store i32* %109, i32** %111, align 8
  br label %139

112:                                              ; preds = %94
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @rbALIGN_SIZE(i64 %115)
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i32, i32* @rbHEADER_SIZE, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 %117, %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 %120
  store i32* %124, i32** %122, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = icmp ule i32* %127, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @configASSERT(i32 %137)
  br label %139

139:                                              ; preds = %112, %101
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 7
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = ptrtoint i32* %142 to i64
  %147 = ptrtoint i32* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 4
  %150 = load i32, i32* @rbHEADER_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  store i32* %156, i32** %158, align 8
  br label %159

159:                                              ; preds = %153, %139
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = bitcast i32* %162 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %163, %struct.TYPE_5__** %5, align 8
  br label %70

164:                                              ; preds = %92
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @rbBUFFER_FULL_FLAG, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %211

171:                                              ; preds = %164
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %174, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %171
  %180 = load i32, i32* @rbBUFFER_FULL_FLAG, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %210

186:                                              ; preds = %171
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = icmp eq i32* %189, %192
  br i1 %193, label %194, label %209

194:                                              ; preds = %186
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = icmp eq i32* %197, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %194
  %203 = load i32, i32* @rbBUFFER_FULL_FLAG, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %202, %194, %186
  br label %210

210:                                              ; preds = %209, %179
  br label %211

211:                                              ; preds = %210, %164
  ret void
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @rbCHECK_ALIGNED(i32*) #1

declare dso_local i64 @rbALIGN_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
