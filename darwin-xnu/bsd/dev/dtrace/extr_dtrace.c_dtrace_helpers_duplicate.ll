; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helpers_duplicate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helpers_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_12__**, %struct.TYPE_15__**, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i32**, i32*, i32 }

@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_helpers = common dso_local global i64 0, align 8
@DTRACE_NHELPER_ACTIONS = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_13__*)* @dtrace_helpers_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_helpers_duplicate(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %15, align 4
  %17 = call i32 @lck_mtx_lock(i32* @dtrace_meta_lock)
  %18 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64, i64* @dtrace_helpers, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %5, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call %struct.TYPE_14__* @dtrace_helpers_create(%struct.TYPE_13__* %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %6, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  store i32* %46, i32** %11, align 8
  store i64 0, i64* %12, align 8
  br label %47

47:                                               ; preds = %153, %2
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @DTRACE_NHELPER_ACTIONS, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %156

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %54, i64 %55
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %7, align 8
  %58 = icmp eq %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %153

60:                                               ; preds = %51
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  br label %61

61:                                               ; preds = %148, %60
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %152

64:                                               ; preds = %61
  %65 = load i32, i32* @KM_SLEEP, align 4
  %66 = call %struct.TYPE_15__* @kmem_zalloc(i32 40, i32 %65)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %8, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @dtrace_difo_duplicate(i32* %77, i32* %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %64
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 8, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @KM_SLEEP, align 4
  %97 = call i8* @kmem_alloc(i32 %95, i32 %96)
  %98 = bitcast i8* %97 to i32**
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  store i32** %98, i32*** %100, align 8
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %129, %83
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %16, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = icmp ne i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load i32*, i32** %16, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i32* @dtrace_difo_duplicate(i32* %119, i32* %120)
  store i32* %121, i32** %16, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* %122, i32** %128, align 8
  br label %129

129:                                              ; preds = %107
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %101

132:                                              ; preds = %101
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = icmp ne %struct.TYPE_15__* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %138, align 8
  br label %146

139:                                              ; preds = %132
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %143, i64 %144
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %145, align 8
  br label %146

146:                                              ; preds = %139, %135
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %9, align 8
  br label %148

148:                                              ; preds = %146
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  store %struct.TYPE_15__* %151, %struct.TYPE_15__** %7, align 8
  br label %61

152:                                              ; preds = %61
  br label %153

153:                                              ; preds = %152, %59
  %154 = load i64, i64* %12, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %12, align 8
  br label %47

156:                                              ; preds = %47
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %213

161:                                              ; preds = %156
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %174, 8
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* @KM_SLEEP, align 4
  %178 = call i8* @kmem_alloc(i32 %176, i32 %177)
  %179 = bitcast i8* %178 to %struct.TYPE_12__**
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  store %struct.TYPE_12__** %179, %struct.TYPE_12__*** %181, align 8
  store i64 0, i64* %12, align 8
  br label %182

182:                                              ; preds = %209, %161
  %183 = load i64, i64* %12, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %183, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %182
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %191, i64 %192
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %196, align 8
  %198 = load i64, i64* %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %197, i64 %198
  store %struct.TYPE_12__* %194, %struct.TYPE_12__** %199, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %201, align 8
  %203 = load i64, i64* %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %202, i64 %203
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %188
  %210 = load i64, i64* %12, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %12, align 8
  br label %182

212:                                              ; preds = %182
  store i32 1, i32* %15, align 4
  br label %213

213:                                              ; preds = %212, %156
  %214 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %215 = load i32, i32* %15, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = call i32 @dtrace_helper_provider_register(%struct.TYPE_13__* %218, %struct.TYPE_14__* %219, i32* null)
  br label %221

221:                                              ; preds = %217, %213
  %222 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_14__* @dtrace_helpers_create(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @kmem_zalloc(i32, i32) #1

declare dso_local i32* @dtrace_difo_duplicate(i32*, i32*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dtrace_helper_provider_register(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
