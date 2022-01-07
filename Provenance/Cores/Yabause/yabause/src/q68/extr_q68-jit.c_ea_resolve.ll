; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_ea_resolve.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_ea_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ea_resolve.base_cycles = internal constant [8 x i32] [i32 0, i32 0, i32 4, i32 4, i32 6, i32 8, i32 10, i32 0], align 16
@SIZE_L = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@ACCESS_WRITE = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @ea_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_resolve(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @EA_MODE(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @EA_REG(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @SIZE_TO_BYTES(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* @ea_resolve.base_cycles, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SIZE_L, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 4, i32 0
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %121 [
    i32 134, label %38
    i32 129, label %44
    i32 128, label %61
    i32 136, label %85
    i32 135, label %93
  ]

38:                                               ; preds = %4
  %39 = load i32, i32* @current_entry, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add i32 8, %40
  %42 = mul i32 %41, 4
  %43 = call i32 @JIT_EMIT_RESOLVE_INDIRECT(i32 %39, i32 %42)
  br label %200

44:                                               ; preds = %4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @current_entry, align 4
  %52 = call i32 @JIT_EMIT_RESOLVE_POSTINC_A7_B(i32 %51)
  br label %60

53:                                               ; preds = %47, %44
  %54 = load i32, i32* @current_entry, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add i32 8, %55
  %57 = mul i32 %56, 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @JIT_EMIT_RESOLVE_POSTINC(i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  br label %200

61:                                               ; preds = %4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ACCESS_WRITE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 2
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 7
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @current_entry, align 4
  %76 = call i32 @JIT_EMIT_RESOLVE_PREDEC_A7_B(i32 %75)
  br label %84

77:                                               ; preds = %71, %68
  %78 = load i32, i32* @current_entry, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add i32 8, %79
  %81 = mul i32 %80, 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @JIT_EMIT_RESOLVE_PREDEC(i32 %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %74
  br label %200

85:                                               ; preds = %4
  %86 = load i32, i32* @current_entry, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add i32 8, %87
  %89 = mul i32 %88, 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = call i32 @IFETCH(%struct.TYPE_4__* %90)
  %92 = call i32 @JIT_EMIT_RESOLVE_DISP(i32 %86, i32 %89, i32 %91)
  br label %200

93:                                               ; preds = %4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = call i32 @IFETCH(%struct.TYPE_4__* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = ashr i32 %96, 12
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, 2048
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %93
  %103 = load i32, i32* @current_entry, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add i32 8, %104
  %106 = mul i32 %105, 4
  %107 = load i32, i32* %15, align 4
  %108 = mul i32 %107, 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @JIT_EMIT_RESOLVE_INDEX_L(i32 %103, i32 %106, i32 %108, i32 %109)
  br label %120

111:                                              ; preds = %93
  %112 = load i32, i32* @current_entry, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add i32 8, %113
  %115 = mul i32 %114, 4
  %116 = load i32, i32* %15, align 4
  %117 = mul i32 %116, 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @JIT_EMIT_RESOLVE_INDEX_W(i32 %112, i32 %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %111, %102
  br label %200

121:                                              ; preds = %4
  %122 = load i32, i32* %11, align 4
  switch i32 %122, label %198 [
    i32 132, label %123
    i32 133, label %130
    i32 131, label %143
    i32 130, label %160
  ]

123:                                              ; preds = %121
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 8
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* @current_entry, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = call i32 @IFETCH(%struct.TYPE_4__* %127)
  %129 = call i32 @JIT_EMIT_RESOLVE_ABSOLUTE(i32 %126, i32 %128)
  br label %199

130:                                              ; preds = %121
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 12
  store i32 %132, i32* %13, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = call i32 @IFETCH(%struct.TYPE_4__* %133)
  %135 = shl i32 %134, 16
  store i32 %135, i32* %17, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %137 = call i32 @IFETCH(%struct.TYPE_4__* %136)
  %138 = load i32, i32* %17, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* @current_entry, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @JIT_EMIT_RESOLVE_ABSOLUTE(i32 %140, i32 %141)
  br label %199

143:                                              ; preds = %121
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @ACCESS_READ, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 -1, i32* %5, align 4
  br label %202

148:                                              ; preds = %143
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 8
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* @current_entry, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = call i32 @IFETCH(%struct.TYPE_4__* %155)
  %157 = add nsw i32 %154, %156
  %158 = call i32 @JIT_EMIT_RESOLVE_ABSOLUTE(i32 %151, i32 %157)
  br label %159

159:                                              ; preds = %148
  br label %199

160:                                              ; preds = %121
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @ACCESS_READ, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 -1, i32* %5, align 4
  br label %202

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 10
  store i32 %167, i32* %13, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %169 = call i32 @IFETCH(%struct.TYPE_4__* %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = ashr i32 %170, 12
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %18, align 4
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %18, align 4
  %174 = and i32 %173, 2048
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %165
  %177 = load i32, i32* @current_entry, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %19, align 4
  %184 = mul i32 %183, 4
  %185 = call i32 @JIT_EMIT_RESOLVE_ABS_INDEX_L(i32 %177, i32 %182, i32 %184)
  br label %196

186:                                              ; preds = %165
  %187 = load i32, i32* @current_entry, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %19, align 4
  %194 = mul i32 %193, 4
  %195 = call i32 @JIT_EMIT_RESOLVE_ABS_INDEX_W(i32 %187, i32 %192, i32 %194)
  br label %196

196:                                              ; preds = %186, %176
  br label %197

197:                                              ; preds = %196
  br label %199

198:                                              ; preds = %121
  store i32 -1, i32* %5, align 4
  br label %202

199:                                              ; preds = %197, %159, %130, %123
  br label %200

200:                                              ; preds = %199, %120, %85, %84, %60, %38
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %200, %198, %164, %147
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @SIZE_TO_BYTES(i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_INDIRECT(i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_POSTINC_A7_B(i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_POSTINC(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_PREDEC_A7_B(i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_PREDEC(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_DISP(i32, i32, i32) #1

declare dso_local i32 @IFETCH(%struct.TYPE_4__*) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_INDEX_L(i32, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_INDEX_W(i32, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_ABSOLUTE(i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_ABS_INDEX_L(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_RESOLVE_ABS_INDEX_W(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
