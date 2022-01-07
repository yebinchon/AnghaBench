; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcINTBACKPeripheral.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcINTBACKPeripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__* }

@SmpcInternalVars = common dso_local global %struct.TYPE_6__* null, align 8
@SmpcRegs = common dso_local global %struct.TYPE_5__* null, align 8
@PORTDATA1 = common dso_local global i32 0, align 4
@PORTDATA2 = common dso_local global i32 0, align 4
@LagFrameFlag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SmpcINTBACKPeripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SmpcINTBACKPeripheral() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 4
  %15 = or i32 192, %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %28

18:                                               ; preds = %0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = or i32 128, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %18, %8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  store i32 0, i32* %1, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  store i32* @PORTDATA1, i32** %2, align 8
  store i32* @PORTDATA2, i32** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @memcpy(%struct.TYPE_4__* %44, i32* %45, i32 4)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @memcpy(%struct.TYPE_4__* %48, i32* %49, i32 4)
  %51 = call i32 @PerFlush(i32* @PORTDATA1)
  %52 = call i32 @PerFlush(i32* @PORTDATA2)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  store i64 0, i64* @LagFrameFlag, align 8
  br label %59

59:                                               ; preds = %42, %36, %28
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %137

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %69, %74
  %76 = icmp slt i64 %75, 32
  br i1 %76, label %77, label %120

77:                                               ; preds = %65
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %94, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(%struct.TYPE_4__* %80, i32* %90, i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %106, %111
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %1, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  br label %136

120:                                              ; preds = %65
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @memcpy(%struct.TYPE_4__* %123, i32* %127, i32 32)
  %129 = load i32, i32* %1, align 4
  %130 = add nsw i32 %129, 32
  store i32 %130, i32* %1, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 32
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %120, %77
  br label %137

137:                                              ; preds = %136, %59
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %215

143:                                              ; preds = %137
  %144 = load i32, i32* %1, align 4
  %145 = icmp slt i32 %144, 32
  br i1 %145, label %146, label %215

146:                                              ; preds = %143
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %150, %155
  %157 = load i32, i32* %1, align 4
  %158 = sub nsw i32 32, %157
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %193

161:                                              ; preds = %146
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %171, i64 %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = sub nsw i64 %181, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @memcpy(%struct.TYPE_4__* %167, i32* %177, i32 %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  br label %214

193:                                              ; preds = %146
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %1, align 4
  %205 = sub nsw i32 32, %204
  %206 = call i32 @memcpy(%struct.TYPE_4__* %199, i32* %203, i32 %205)
  %207 = load i32, i32* %1, align 4
  %208 = sub nsw i32 32, %207
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, %208
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %193, %161
  br label %215

215:                                              ; preds = %214, %143, %137
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @PerFlush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
