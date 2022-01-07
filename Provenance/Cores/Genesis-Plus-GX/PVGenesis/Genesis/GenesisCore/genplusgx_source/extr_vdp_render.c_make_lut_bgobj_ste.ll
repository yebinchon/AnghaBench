; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_lut_bgobj_ste.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_lut_bgobj_ste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @make_lut_bgobj_ste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_lut_bgobj_ste(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 63
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 64
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 15
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 128
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 63
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 64
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 62
  %40 = icmp eq i32 %39, 62
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, 128
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 64
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %45
  br label %77

60:                                               ; preds = %37
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 14
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 30
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 46
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %63, %60
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, 64
  store i32 %71, i32* %5, align 4
  br label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %59
  br label %82

78:                                               ; preds = %34
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %77
  br label %193

83:                                               ; preds = %2
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %143

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %5, align 4
  br label %142

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %137

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 62
  %99 = icmp eq i32 %98, 62
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %5, align 4
  br label %118

106:                                              ; preds = %100
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, 128
  br label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, 64
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i32 [ %112, %110 ], [ %115, %113 ]
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %104
  br label %136

119:                                              ; preds = %96
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 14
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 30
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 46
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %122, %119
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, 64
  store i32 %130, i32* %5, align 4
  br label %135

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %13, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %118
  br label %141

137:                                              ; preds = %93
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %136
  br label %142

142:                                              ; preds = %141, %89
  br label %192

143:                                              ; preds = %83
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %187

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = and i32 %147, 62
  %149 = icmp eq i32 %148, 62
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %5, align 4
  br label %168

156:                                              ; preds = %150
  %157 = load i32, i32* %3, align 4
  %158 = and i32 %157, 128
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, 128
  br label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, 64
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi i32 [ %162, %160 ], [ %165, %163 ]
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %154
  br label %186

169:                                              ; preds = %146
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, 14
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 30
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 46
  br i1 %177, label %178, label %181

178:                                              ; preds = %175, %172, %169
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %179, 64
  store i32 %180, i32* %5, align 4
  br label %185

181:                                              ; preds = %175
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %13, align 4
  %184 = or i32 %182, %183
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181, %178
  br label %186

186:                                              ; preds = %185, %168
  br label %191

187:                                              ; preds = %143
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %187, %186
  br label %192

192:                                              ; preds = %191, %142
  br label %193

193:                                              ; preds = %192, %82
  %194 = load i32, i32* %5, align 4
  %195 = and i32 %194, 15
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %5, align 4
  %199 = and i32 %198, 192
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
