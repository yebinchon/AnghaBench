; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_q68_jit_run.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_q68_jit_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32, %struct.TYPE_12__*, i32*, i64, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@Q68_JIT_CALLSTACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q68_jit_run(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %6, align 8
  %13 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %7, align 8
  br label %15

15:                                               ; preds = %199, %118, %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = call i32 @JIT_CALL(%struct.TYPE_13__* %27, i64 %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 16383
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @UNLIKELY(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %15
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = call i32 @clear_entry(%struct.TYPE_13__* %53, %struct.TYPE_14__* %54)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %177

56:                                               ; preds = %15
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 32768
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %169

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 16384
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %125

64:                                               ; preds = %60
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @Q68_JIT_CALLSTACK_SIZE, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %121, %64
  %70 = load i32, i32* %10, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @Q68_JIT_CALLSTACK_SIZE, align 4
  %75 = add i32 %73, %74
  %76 = sub i32 %75, 1
  %77 = load i32, i32* @Q68_JIT_CALLSTACK_SIZE, align 4
  %78 = urem i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %72
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %7, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %91
  br label %15

119:                                              ; preds = %91
  br label %124

120:                                              ; preds = %72
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add i32 %122, -1
  store i32 %123, i32* %10, align 4
  br label %69

124:                                              ; preds = %119, %69
  br label %168

125:                                              ; preds = %60
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %11, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 7
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @READU32(%struct.TYPE_13__* %129, i32 %134)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i64 %136, i64* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i32 %154, i32* %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add i32 %162, 1
  %164 = load i32, i32* @Q68_JIT_CALLSTACK_SIZE, align 4
  %165 = urem i32 %163, %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %168

168:                                              ; preds = %125, %124
  br label %176

169:                                              ; preds = %56
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %175

175:                                              ; preds = %174, %169
  br label %176

176:                                              ; preds = %175, %168
  br label %177

177:                                              ; preds = %176, %52
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %179 = icmp ne %struct.TYPE_14__* %178, null
  br i1 %179, label %201, label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %180
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call %struct.TYPE_14__* @q68_jit_find(%struct.TYPE_13__* %192, i64 %195)
  store %struct.TYPE_14__* %196, %struct.TYPE_14__** %7, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %198 = icmp ne %struct.TYPE_14__* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %15

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200, %186, %180, %177
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %203 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %202, %struct.TYPE_14__** %203, align 8
  ret void
}

declare dso_local i32 @JIT_CALL(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @clear_entry(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @READU32(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @q68_jit_find(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
