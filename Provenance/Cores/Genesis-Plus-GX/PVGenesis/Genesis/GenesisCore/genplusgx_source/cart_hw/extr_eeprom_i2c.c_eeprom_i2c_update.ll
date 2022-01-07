; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@eeprom_i2c = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sram = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @eeprom_i2c_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_i2c_update() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  switch i32 %2, label %325 [
    i32 130, label %3
    i32 129, label %6
    i32 134, label %8
    i32 135, label %60
    i32 133, label %156
    i32 132, label %200
    i32 131, label %247
    i32 128, label %268
  ]

3:                                                ; preds = %0
  %4 = call i32 (...) @Detect_START()
  %5 = call i32 (...) @Detect_STOP()
  br label %325

6:                                                ; preds = %0
  %7 = call i32 (...) @Detect_STOP()
  br label %325

8:                                                ; preds = %0
  %9 = call i32 (...) @Detect_START()
  %10 = call i32 (...) @Detect_STOP()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %13, %8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %38 = sub nsw i32 7, %37
  %39 = shl i32 %36, %38
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %56

42:                                               ; preds = %32
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  br label %55

47:                                               ; preds = %42
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 0), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 131, i32 128
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  br label %55

55:                                               ; preds = %47, %45
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %59

59:                                               ; preds = %56, %29, %26, %23
  br label %325

60:                                               ; preds = %0
  %61 = call i32 (...) @Detect_START()
  %62 = call i32 (...) @Detect_STOP()
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %65, %60
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %155

78:                                               ; preds = %75
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %155, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %81
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 4
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %124

90:                                               ; preds = %87
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 1), align 4
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 0), align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %96 = sub nsw i32 15, %95
  %97 = shl i32 1, %96
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93, %90
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %102 = sub nsw i32 7, %101
  %103 = shl i32 %100, %102
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  br label %123

106:                                              ; preds = %93
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %111 = sub nsw i32 15, %110
  %112 = shl i32 1, %111
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %122

115:                                              ; preds = %106
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %117 = sub nsw i32 15, %116
  %118 = shl i32 1, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %99
  br label %152

124:                                              ; preds = %87, %84
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %126 = icmp eq i32 %125, 8
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  br label %151

129:                                              ; preds = %124
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 8
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 1), align 4
  %134 = icmp eq i32 %133, 16
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 131, i32 133
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  %141 = shl i32 %140, 16
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  br label %149

142:                                              ; preds = %132
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 131, i32 132
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  %148 = shl i32 %147, 8
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  br label %149

149:                                              ; preds = %142, %135
  br label %150

150:                                              ; preds = %149, %129
  br label %151

151:                                              ; preds = %150, %127
  br label %152

152:                                              ; preds = %151, %123
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %155

155:                                              ; preds = %152, %81, %78, %75
  br label %325

156:                                              ; preds = %0
  %157 = call i32 (...) @Detect_START()
  %158 = call i32 (...) @Detect_STOP()
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %199

161:                                              ; preds = %156
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %199, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %166 = icmp slt i32 %165, 9
  br i1 %166, label %167, label %197

167:                                              ; preds = %164
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 0), align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %171 = sub nsw i32 17, %170
  %172 = shl i32 1, %171
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  %176 = ashr i32 %175, 1
  store i32 %176, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  br label %194

177:                                              ; preds = %167
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %182 = sub nsw i32 16, %181
  %183 = shl i32 1, %182
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %193

186:                                              ; preds = %177
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %188 = sub nsw i32 16, %187
  %189 = shl i32 1, %188
  %190 = xor i32 %189, -1
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %193

193:                                              ; preds = %186, %180
  br label %194

194:                                              ; preds = %193, %174
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %198

197:                                              ; preds = %164
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  br label %198

198:                                              ; preds = %197, %194
  br label %199

199:                                              ; preds = %198, %161, %156
  br label %325

200:                                              ; preds = %0
  %201 = call i32 (...) @Detect_START()
  %202 = call i32 (...) @Detect_STOP()
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %246

205:                                              ; preds = %200
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %246, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %210 = icmp slt i32 %209, 9
  br i1 %210, label %211, label %241

211:                                              ; preds = %208
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 0), align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %215 = sub nsw i32 9, %214
  %216 = shl i32 1, %215
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  %220 = ashr i32 %219, 1
  store i32 %220, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  br label %238

221:                                              ; preds = %211
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %226 = sub nsw i32 8, %225
  %227 = shl i32 1, %226
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %237

230:                                              ; preds = %221
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %232 = sub nsw i32 8, %231
  %233 = shl i32 1, %232
  %234 = xor i32 %233, -1
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %237

237:                                              ; preds = %230, %224
  br label %238

238:                                              ; preds = %237, %218
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %245

241:                                              ; preds = %208
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 0), align 4
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  br label %245

245:                                              ; preds = %241, %238
  br label %246

246:                                              ; preds = %245, %205, %200
  br label %325

247:                                              ; preds = %0
  %248 = call i32 (...) @Detect_START()
  %249 = call i32 (...) @Detect_STOP()
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %247
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %257 = icmp slt i32 %256, 9
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %266

261:                                              ; preds = %255
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  br label %265

265:                                              ; preds = %264, %261
  br label %266

266:                                              ; preds = %265, %258
  br label %267

267:                                              ; preds = %266, %252, %247
  br label %325

268:                                              ; preds = %0
  %269 = call i32 (...) @Detect_START()
  %270 = call i32 (...) @Detect_STOP()
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %324

273:                                              ; preds = %268
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %324, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %278 = icmp slt i32 %277, 9
  br i1 %278, label %279, label %322

279:                                              ; preds = %276
  %280 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5), align 4
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %282 = or i32 %280, %281
  %283 = and i32 %282, 65535
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %1, align 8
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %279
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %289 = sub nsw i32 8, %288
  %290 = shl i32 1, %289
  %291 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sram, i32 0, i32 0), align 8
  %292 = load i64, i64* %1, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %290
  store i32 %295, i32* %293, align 4
  br label %306

296:                                              ; preds = %279
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %298 = sub nsw i32 8, %297
  %299 = shl i32 1, %298
  %300 = xor i32 %299, -1
  %301 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sram, i32 0, i32 0), align 8
  %302 = load i64, i64* %1, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, %300
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %296, %287
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %308 = icmp eq i32 %307, 8
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 2), align 4
  %312 = sub nsw i32 65535, %311
  %313 = and i32 %310, %312
  %314 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %315 = add nsw i32 %314, 1
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 9, i32 2), align 4
  %317 = and i32 %315, %316
  %318 = or i32 %313, %317
  store i32 %318, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  br label %319

319:                                              ; preds = %309, %306
  %320 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %323

322:                                              ; preds = %276
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  br label %323

323:                                              ; preds = %322, %319
  br label %324

324:                                              ; preds = %323, %273, %268
  br label %325

325:                                              ; preds = %0, %324, %267, %246, %199, %155, %59, %6, %3
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 7), align 4
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 8), align 4
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 6), align 4
  store i32 %327, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  ret void
}

declare dso_local i32 @Detect_START(...) #1

declare dso_local i32 @Detect_STOP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
