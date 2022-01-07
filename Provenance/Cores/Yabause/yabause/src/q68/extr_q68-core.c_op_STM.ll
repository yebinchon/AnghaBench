; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_STM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_STM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32*, i32 }

@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_POSTINCREMENT = common dso_local global i64 0, align 8
@EA_PREDECREMENT = common dso_local global i64 0, align 8
@EA_INDIRECT = common dso_local global i32 0, align 4
@ACCESS_WRITE = common dso_local global i32 0, align 4
@EX_ADDRESS_ERROR = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @op_STM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_STM(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @EA_MODE(i32 %12)
  %14 = load i64, i64* @EA_DATA_REG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @op_EXT(%struct.TYPE_9__* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %225

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @IFETCH(%struct.TYPE_9__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 64
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SIZE_L, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @SIZE_W, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @EA_MODE(i32 %32)
  %34 = load i64, i64* @EA_ADDRESS_REG, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @EA_MODE(i32 %37)
  %39 = load i64, i64* @EA_POSTINCREMENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %30
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @op_ill(%struct.TYPE_9__* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %225

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @EA_MODE(i32 %46)
  %48 = load i64, i64* @EA_PREDECREMENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @EA_INDIRECT, align 4
  %52 = shl i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @EA_REG(i32 %54)
  %56 = or i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SIZE_W, align 4
  %64 = load i32, i32* @ACCESS_WRITE, align 4
  %65 = call i32 @ea_resolve(%struct.TYPE_9__* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @op_ill(%struct.TYPE_9__* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %225

72:                                               ; preds = %60
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load i32, i32* @EX_ADDRESS_ERROR, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %88 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %225

92:                                               ; preds = %72
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @EA_MODE(i32 %93)
  %95 = load i64, i64* @EA_PREDECREMENT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %164

97:                                               ; preds = %92
  store i32 15, i32* %10, align 4
  br label %98

98:                                               ; preds = %149, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %148

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SIZE_W, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 2
  store i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @WRITE16(%struct.TYPE_9__* %114, i32 %117, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %9, align 4
  br label %147

128:                                              ; preds = %105
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 4
  store i32 %132, i32* %130, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @WRITE32(%struct.TYPE_9__* %133, i32 %136, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 8
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %128, %109
  br label %148

148:                                              ; preds = %147, %101
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %6, align 4
  %153 = lshr i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %98

154:                                              ; preds = %98
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i64 @EA_REG(i32 %161)
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  br label %222

164:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %216, %164
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 16
  br i1 %167, label %168, label %221

168:                                              ; preds = %165
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @SIZE_W, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %172
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @WRITE16(%struct.TYPE_9__* %177, i32 %180, i32 %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 4
  store i32 %194, i32* %9, align 4
  br label %214

195:                                              ; preds = %172
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @WRITE32(%struct.TYPE_9__* %196, i32 %199, i32 %206)
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 4
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 8
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %195, %176
  br label %215

215:                                              ; preds = %214, %168
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %6, align 4
  %220 = lshr i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %165

221:                                              ; preds = %165
  br label %222

222:                                              ; preds = %221, %154
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 4, %223
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %222, %78, %68, %41, %16
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_EXT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @IFETCH(%struct.TYPE_9__*) #1

declare dso_local i32 @op_ill(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @EA_REG(i32) #1

declare dso_local i32 @ea_resolve(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @WRITE16(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @WRITE32(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
