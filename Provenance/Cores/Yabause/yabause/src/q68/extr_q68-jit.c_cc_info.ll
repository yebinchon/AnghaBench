; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_cc_info.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_cc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cc_info.cond_inputs = internal constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 512, i32 0, i32 2048, i32 1024, i32 2048, i32 2560, i32 1280, i32 3584, i32 1280, i32 3584, i32 2560, i32 0, i32 1024, i32 256, i32 256], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_info(i32 %0) #0 {
  %2 = alloca i32, align 4
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 7936, i32* %4, align 4
  store i32 5120, i32* %5, align 4
  store i32 4096, i32* %6, align 4
  store i32 2048, i32* %7, align 4
  store i32 512, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 31, i32* %10, align 4
  store i32 21, i32* %11, align 4
  store i32 15, i32* %12, align 4
  store i32 8, i32* %13, align 4
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 12
  switch i32 %17, label %223 [
    i32 0, label %18
    i32 1, label %65
    i32 2, label %65
    i32 3, label %65
    i32 4, label %72
    i32 5, label %134
    i32 6, label %153
    i32 7, label %160
    i32 8, label %166
    i32 9, label %178
    i32 10, label %190
    i32 11, label %191
    i32 12, label %192
    i32 13, label %209
    i32 14, label %221
    i32 15, label %222
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 256
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 3
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %224

28:                                               ; preds = %22
  store i32 4, i32* %2, align 4
  br label %224

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 6
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %224

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 9
  %38 = and i32 %37, 7
  switch i32 %38, label %62 [
    i32 0, label %39
    i32 1, label %45
    i32 2, label %51
    i32 3, label %52
    i32 4, label %53
    i32 5, label %54
    i32 6, label %60
    i32 7, label %61
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 191
  %42 = icmp eq i32 %41, 60
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 7967, i32* %2, align 4
  br label %224

44:                                               ; preds = %39
  store i32 15, i32* %2, align 4
  br label %224

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 191
  %48 = icmp eq i32 %47, 60
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 7967, i32* %2, align 4
  br label %224

50:                                               ; preds = %45
  store i32 15, i32* %2, align 4
  br label %224

51:                                               ; preds = %35
  store i32 31, i32* %2, align 4
  br label %224

52:                                               ; preds = %35
  store i32 31, i32* %2, align 4
  br label %224

53:                                               ; preds = %35
  store i32 4, i32* %2, align 4
  br label %224

54:                                               ; preds = %35
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 191
  %57 = icmp eq i32 %56, 60
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 7967, i32* %2, align 4
  br label %224

59:                                               ; preds = %54
  store i32 15, i32* %2, align 4
  br label %224

60:                                               ; preds = %35
  store i32 15, i32* %2, align 4
  br label %224

61:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %224

62:                                               ; preds = %35
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %1, %1, %1, %64
  %66 = load i32, i32* %3, align 4
  %67 = ashr i32 %66, 6
  %68 = and i32 %67, 7
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %224

71:                                               ; preds = %65
  store i32 15, i32* %2, align 4
  br label %224

72:                                               ; preds = %1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, 256
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = ashr i32 %77, 6
  %79 = and i32 %78, 3
  switch i32 %79, label %83 [
    i32 0, label %80
    i32 1, label %80
    i32 2, label %81
    i32 3, label %82
  ]

80:                                               ; preds = %76, %76
  store i32 0, i32* %2, align 4
  br label %224

81:                                               ; preds = %76
  store i32 2056, i32* %2, align 4
  br label %224

82:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %224

83:                                               ; preds = %76
  br label %133

84:                                               ; preds = %72
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, 3776
  switch i32 %86, label %132 [
    i32 0, label %87
    i32 64, label %87
    i32 128, label %87
    i32 192, label %88
    i32 512, label %89
    i32 576, label %89
    i32 640, label %89
    i32 704, label %90
    i32 1024, label %91
    i32 1088, label %91
    i32 1152, label %91
    i32 1216, label %92
    i32 1536, label %93
    i32 1600, label %93
    i32 1664, label %93
    i32 1728, label %94
    i32 2048, label %95
    i32 2112, label %96
    i32 2176, label %103
    i32 2240, label %103
    i32 2560, label %110
    i32 2624, label %110
    i32 2688, label %110
    i32 2752, label %110
    i32 3072, label %111
    i32 3136, label %112
    i32 3200, label %129
    i32 3264, label %129
    i32 3584, label %130
    i32 3648, label %130
    i32 3712, label %131
    i32 3776, label %131
  ]

87:                                               ; preds = %84, %84, %84
  store i32 5151, i32* %2, align 4
  br label %224

88:                                               ; preds = %84
  store i32 7936, i32* %2, align 4
  br label %224

89:                                               ; preds = %84, %84, %84
  store i32 15, i32* %2, align 4
  br label %224

90:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %224

91:                                               ; preds = %84, %84, %84
  store i32 31, i32* %2, align 4
  br label %224

92:                                               ; preds = %84
  store i32 31, i32* %2, align 4
  br label %224

93:                                               ; preds = %84, %84, %84
  store i32 15, i32* %2, align 4
  br label %224

94:                                               ; preds = %84
  store i32 31, i32* %2, align 4
  br label %224

95:                                               ; preds = %84
  store i32 5141, i32* %2, align 4
  br label %224

96:                                               ; preds = %84
  %97 = load i32, i32* %3, align 4
  %98 = ashr i32 %97, 3
  %99 = and i32 %98, 7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 15, i32* %2, align 4
  br label %224

102:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %224

103:                                              ; preds = %84, %84
  %104 = load i32, i32* %3, align 4
  %105 = ashr i32 %104, 3
  %106 = and i32 %105, 7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 15, i32* %2, align 4
  br label %224

109:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %224

110:                                              ; preds = %84, %84, %84, %84
  store i32 15, i32* %2, align 4
  br label %224

111:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %224

112:                                              ; preds = %84
  %113 = load i32, i32* %3, align 4
  %114 = ashr i32 %113, 3
  %115 = and i32 %114, 7
  switch i32 %115, label %128 [
    i32 0, label %116
    i32 1, label %116
    i32 2, label %116
    i32 3, label %116
    i32 4, label %116
    i32 5, label %116
    i32 6, label %117
    i32 7, label %127
  ]

116:                                              ; preds = %112, %112, %112, %112, %112, %112
  store i32 0, i32* %2, align 4
  br label %224

117:                                              ; preds = %112
  %118 = load i32, i32* %3, align 4
  %119 = and i32 %118, 7
  switch i32 %119, label %126 [
    i32 0, label %120
    i32 1, label %120
    i32 2, label %121
    i32 3, label %121
    i32 4, label %122
    i32 5, label %123
    i32 6, label %124
    i32 7, label %125
  ]

120:                                              ; preds = %117, %117
  store i32 0, i32* %2, align 4
  br label %224

121:                                              ; preds = %117, %117
  store i32 31, i32* %2, align 4
  br label %224

122:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %224

123:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %224

124:                                              ; preds = %117
  store i32 512, i32* %2, align 4
  br label %224

125:                                              ; preds = %117
  store i32 31, i32* %2, align 4
  br label %224

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %112, %126
  store i32 0, i32* %2, align 4
  br label %224

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %84, %84, %128
  store i32 0, i32* %2, align 4
  br label %224

130:                                              ; preds = %84, %84
  store i32 0, i32* %2, align 4
  br label %224

131:                                              ; preds = %84, %84
  store i32 0, i32* %2, align 4
  br label %224

132:                                              ; preds = %84
  br label %133

133:                                              ; preds = %132, %83
  br label %134

134:                                              ; preds = %1, %133
  %135 = load i32, i32* %3, align 4
  %136 = ashr i32 %135, 6
  %137 = and i32 %136, 3
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* %3, align 4
  %141 = ashr i32 %140, 8
  %142 = and i32 %141, 15
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [144 x i32], [144 x i32]* @cc_info.cond_inputs, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %2, align 4
  br label %224

146:                                              ; preds = %134
  %147 = load i32, i32* %3, align 4
  %148 = ashr i32 %147, 3
  %149 = and i32 %148, 7
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %224

152:                                              ; preds = %146
  store i32 31, i32* %2, align 4
  br label %224

153:                                              ; preds = %1
  %154 = load i32, i32* %3, align 4
  %155 = ashr i32 %154, 8
  %156 = and i32 %155, 15
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [144 x i32], [144 x i32]* @cc_info.cond_inputs, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %2, align 4
  br label %224

160:                                              ; preds = %1
  %161 = load i32, i32* %3, align 4
  %162 = and i32 %161, 256
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %224

165:                                              ; preds = %160
  store i32 15, i32* %2, align 4
  br label %224

166:                                              ; preds = %1
  %167 = load i32, i32* %3, align 4
  %168 = ashr i32 %167, 6
  %169 = and i32 %168, 3
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 15, i32* %2, align 4
  br label %224

172:                                              ; preds = %166
  %173 = load i32, i32* %3, align 4
  %174 = and i32 %173, 496
  %175 = icmp eq i32 %174, 256
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 5141, i32* %2, align 4
  br label %224

177:                                              ; preds = %172
  store i32 15, i32* %2, align 4
  br label %224

178:                                              ; preds = %1
  %179 = load i32, i32* %3, align 4
  %180 = ashr i32 %179, 6
  %181 = and i32 %180, 3
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %224

184:                                              ; preds = %178
  %185 = load i32, i32* %3, align 4
  %186 = and i32 %185, 304
  %187 = icmp eq i32 %186, 256
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 5151, i32* %2, align 4
  br label %224

189:                                              ; preds = %184
  store i32 31, i32* %2, align 4
  br label %224

190:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %224

191:                                              ; preds = %1
  store i32 15, i32* %2, align 4
  br label %224

192:                                              ; preds = %1
  %193 = load i32, i32* %3, align 4
  %194 = ashr i32 %193, 6
  %195 = and i32 %194, 3
  %196 = icmp eq i32 %195, 3
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  store i32 15, i32* %2, align 4
  br label %224

198:                                              ; preds = %192
  %199 = load i32, i32* %3, align 4
  %200 = and i32 %199, 496
  %201 = icmp eq i32 %200, 256
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 5141, i32* %2, align 4
  br label %224

203:                                              ; preds = %198
  %204 = load i32, i32* %3, align 4
  %205 = and i32 %204, 304
  %206 = icmp eq i32 %205, 256
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %224

208:                                              ; preds = %203
  store i32 15, i32* %2, align 4
  br label %224

209:                                              ; preds = %1
  %210 = load i32, i32* %3, align 4
  %211 = ashr i32 %210, 6
  %212 = and i32 %211, 3
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %224

215:                                              ; preds = %209
  %216 = load i32, i32* %3, align 4
  %217 = and i32 %216, 304
  %218 = icmp eq i32 %217, 256
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store i32 5151, i32* %2, align 4
  br label %224

220:                                              ; preds = %215
  store i32 31, i32* %2, align 4
  br label %224

221:                                              ; preds = %1
  store i32 4127, i32* %2, align 4
  br label %224

222:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %224

223:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %223, %222, %221, %220, %219, %214, %208, %207, %202, %197, %191, %190, %189, %188, %183, %177, %176, %171, %165, %164, %153, %152, %151, %139, %131, %130, %129, %127, %125, %124, %123, %122, %121, %120, %116, %111, %110, %109, %108, %102, %101, %95, %94, %93, %92, %91, %90, %89, %88, %87, %82, %81, %80, %71, %70, %61, %60, %59, %58, %53, %52, %51, %50, %49, %44, %43, %34, %28, %27
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
