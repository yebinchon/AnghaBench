; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_speculation_commit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_speculation_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__**, i64, %struct.TYPE_18__*, %struct.TYPE_16__*, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_13__* null, align 8
@DTRACESPEC_COMMITTINGMANY = common dso_local global i32 0, align 4
@DTRACE_EPIDNONE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i32)* @dtrace_speculation_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_speculation_commit(%struct.TYPE_15__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 128, i32* %15, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %260

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %260

39:                                               ; preds = %24
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %45
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %7, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i64 %50
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %8, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 %55
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %9, align 8
  br label %57

57:                                               ; preds = %88, %39
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @DTRACESPEC_COMMITTINGMANY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %96

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  switch i32 %66, label %85 [
    i32 128, label %67
    i32 129, label %67
    i32 130, label %68
    i32 133, label %75
    i32 131, label %76
    i32 132, label %83
  ]

67:                                               ; preds = %65, %65
  br label %260

68:                                               ; preds = %65
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  br label %260

75:                                               ; preds = %65
  store i32 130, i32* %15, align 4
  br label %87

76:                                               ; preds = %65
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 130, i32* %15, align 4
  br label %87

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %65, %82
  %84 = load i32, i32* @DTRACESPEC_COMMITTINGMANY, align 4
  store i32 %84, i32* %15, align 4
  br label %87

85:                                               ; preds = %65
  %86 = call i32 @ASSERT(i32 0)
  br label %87

87:                                               ; preds = %85, %83, %81, %75
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @dtrace_cas32(i32* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %57, label %96

96:                                               ; preds = %88, %64
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = call i64 @dtrace_buffer_reserve(%struct.TYPE_18__* %97, i64 %100, i32 4, %struct.TYPE_15__* %101, i32* null)
  store i64 %102, i64* %16, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = call i32 @dtrace_buffer_drop(%struct.TYPE_18__* %105)
  br label %229

107:                                              ; preds = %96
  %108 = call i32 (...) @dtrace_gethrtime()
  store i32 %108, i32* %17, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %112, %115
  store i64 %116, i64* %13, align 8
  br label %117

117:                                              ; preds = %132, %129, %107
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %178

121:                                              ; preds = %117
  %122 = load i64, i64* %11, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %19, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DTRACE_EPIDNONE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %11, align 8
  br label %117

132:                                              ; preds = %121
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = icmp sle i32 %135, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @ASSERT(i32 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %145, i64 %150
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %18, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %18, align 8
  %157 = add i64 %155, %156
  %158 = load i64, i64* %13, align 8
  %159 = icmp ule i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @ASSERT(i32 %160)
  %162 = load i64, i64* %18, align 8
  %163 = icmp uge i64 %162, 4
  %164 = zext i1 %163 to i32
  %165 = call i32 @ASSERT(i32 %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %167 = call i64 @DTRACE_RECORD_LOAD_TIMESTAMP(%struct.TYPE_17__* %166)
  %168 = load i64, i64* @UINT64_MAX, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @ASSERT(i32 %170)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @DTRACE_RECORD_STORE_TIMESTAMP(%struct.TYPE_17__* %172, i32 %173)
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %11, align 8
  br label %117

178:                                              ; preds = %117
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %16, align 8
  %183 = add i64 %181, %182
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %184, %187
  store i64 %188, i64* %12, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %11, align 8
  br label %192

192:                                              ; preds = %197, %178
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %10, align 8
  %195 = sub i64 %193, %194
  %196 = icmp uge i64 %195, 4
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load i64, i64* %11, align 8
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* %10, align 8
  %202 = inttoptr i64 %201 to i32*
  store i32 %200, i32* %202, align 4
  %203 = load i64, i64* %10, align 8
  %204 = add i64 %203, 4
  store i64 %204, i64* %10, align 8
  %205 = load i64, i64* %11, align 8
  %206 = add i64 %205, 4
  store i64 %206, i64* %11, align 8
  br label %192

207:                                              ; preds = %192
  br label %208

208:                                              ; preds = %213, %207
  %209 = load i64, i64* %12, align 8
  %210 = load i64, i64* %10, align 8
  %211 = sub i64 %209, %210
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load i64, i64* %11, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %11, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %10, align 8
  %220 = inttoptr i64 %218 to i32*
  store i32 %217, i32* %220, align 4
  br label %208

221:                                              ; preds = %208
  %222 = load i64, i64* %16, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %222, %225
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %221, %104
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %230, 133
  br i1 %231, label %238, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = icmp eq i32 %233, 131
  br i1 %234, label %235, label %246

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  %237 = icmp eq i32 %236, 130
  br i1 %237, label %238, label %246

238:                                              ; preds = %235, %229
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = call i32 @dtrace_cas32(i32* %240, i32 130, i32 128)
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %20, align 4
  %243 = icmp eq i32 %242, 130
  %244 = zext i1 %243 to i32
  %245 = call i32 @ASSERT(i32 %244)
  br label %246

246:                                              ; preds = %238, %235, %232
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %246, %68, %67, %31, %23
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_cas32(i32*, i32, i32) #1

declare dso_local i64 @dtrace_buffer_reserve(%struct.TYPE_18__*, i64, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @dtrace_buffer_drop(%struct.TYPE_18__*) #1

declare dso_local i32 @dtrace_gethrtime(...) #1

declare dso_local i64 @DTRACE_RECORD_LOAD_TIMESTAMP(%struct.TYPE_17__*) #1

declare dso_local i32 @DTRACE_RECORD_STORE_TIMESTAMP(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
