; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_spi.c_eeprom_spi_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_spi.c_eeprom_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8, i32, i8, i8, i8, i32, i8 }
%struct.TYPE_3__ = type { i8* }

@BIT_HOLD = common dso_local global i32 0, align 4
@BIT_CS = common dso_local global i32 0, align 4
@spi_eeprom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BIT_CLK = common dso_local global i32 0, align 4
@BIT_DATA = common dso_local global i8 0, align 1
@STANDBY = common dso_local global i8* null, align 8
@SIZE_MASK = common dso_local global i32 0, align 4
@sram = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_spi_write(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = load i32, i32* @BIT_HOLD, align 4
  %6 = shl i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %265

9:                                                ; preds = %1
  %10 = load i8, i8* %2, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, i32* @BIT_CS, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 1), align 4
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %264

17:                                               ; preds = %9
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  switch i32 %18, label %262 [
    i32 130, label %19
    i32 131, label %74
    i32 128, label %124
    i32 129, label %222
  ]

19:                                               ; preds = %17
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* @BIT_CLK, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %19
  %27 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 4), align 4
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %26
  %30 = load i8, i8* %2, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @BIT_DATA, align 1
  %33 = zext i8 %32 to i32
  %34 = ashr i32 %31, %33
  %35 = and i32 %34, 1
  %36 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %67

44:                                               ; preds = %29
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %45 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %46 = zext i8 %45 to i32
  switch i32 %46, label %63 [
    i32 1, label %47
    i32 2, label %48
    i32 3, label %49
    i32 4, label %50
    i32 5, label %55
    i32 6, label %58
  ]

47:                                               ; preds = %44
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

48:                                               ; preds = %44
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

49:                                               ; preds = %44
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

50:                                               ; preds = %44
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %52 = and i32 %51, -3
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %53 = load i8*, i8** @STANDBY, align 8
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

55:                                               ; preds = %44
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

58:                                               ; preds = %44
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %60 = or i32 %59, 2
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %61 = load i8*, i8** @STANDBY, align 8
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

63:                                               ; preds = %44
  %64 = load i8*, i8** @STANDBY, align 8
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %66

66:                                               ; preds = %63, %58, %55, %50, %49, %48, %47
  br label %72

67:                                               ; preds = %29
  %68 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 1
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  br label %72

72:                                               ; preds = %67, %66
  br label %73

73:                                               ; preds = %72, %26, %19
  br label %263

74:                                               ; preds = %17
  %75 = load i8, i8* %2, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* @BIT_CLK, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %74
  %82 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 4), align 4
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %123, label %84

84:                                               ; preds = %81
  %85 = load i8, i8* %2, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @BIT_DATA, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %86, %88
  %90 = and i32 %89, 1
  %91 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %117

99:                                               ; preds = %84
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %100 = load i32, i32* @SIZE_MASK, align 4
  %101 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %105 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 8
  %111 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  store i8 %114, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %116

115:                                              ; preds = %99
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %116

116:                                              ; preds = %115, %109
  br label %122

117:                                              ; preds = %84
  %118 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 1
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  br label %122

122:                                              ; preds = %117, %116
  br label %123

123:                                              ; preds = %122, %81, %74
  br label %263

124:                                              ; preds = %17
  %125 = load i8, i8* %2, align 1
  %126 = zext i8 %125 to i32
  %127 = load i32, i32* @BIT_CLK, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %221

131:                                              ; preds = %124
  %132 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 4), align 4
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %221, label %134

134:                                              ; preds = %131
  %135 = load i8, i8* %2, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @BIT_DATA, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %136, %138
  %140 = and i32 %139, 1
  %141 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %142, %140
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %215

149:                                              ; preds = %134
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %150 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %156 = and i32 %155, 2
  %157 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 12
  %160 = or i32 %156, %159
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %161 = load i8*, i8** @STANDBY, align 8
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 3), align 4
  br label %214

163:                                              ; preds = %149
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %165 = and i32 %164, 2
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %201

167:                                              ; preds = %163
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 7), align 4
  %169 = ashr i32 %168, 2
  %170 = and i32 %169, 3
  switch i32 %170, label %194 [
    i32 1, label %171
    i32 2, label %182
    i32 3, label %193
  ]

171:                                              ; preds = %167
  %172 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %173 = zext i8 %172 to i32
  %174 = icmp slt i32 %173, 49152
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %177 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 8
  %178 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 %176, i8* %180, align 1
  br label %181

181:                                              ; preds = %175, %171
  br label %200

182:                                              ; preds = %167
  %183 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %184 = zext i8 %183 to i32
  %185 = icmp slt i32 %184, 32768
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %188 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 8
  %189 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8 %187, i8* %191, align 1
  br label %192

192:                                              ; preds = %186, %182
  br label %200

193:                                              ; preds = %167
  br label %200

194:                                              ; preds = %167
  %195 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %196 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 8
  %197 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  store i8 %195, i8* %199, align 1
  br label %200

200:                                              ; preds = %194, %193, %192, %181
  br label %201

201:                                              ; preds = %200, %163
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %202 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %203 = zext i8 %202 to i32
  %204 = load i32, i32* @PAGE_MASK, align 4
  %205 = xor i32 %204, -1
  %206 = and i32 %203, %205
  %207 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %208, 1
  %210 = load i32, i32* @PAGE_MASK, align 4
  %211 = and i32 %209, %210
  %212 = or i32 %206, %211
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  br label %214

214:                                              ; preds = %201, %154
  br label %220

215:                                              ; preds = %134
  %216 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 1
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  br label %220

220:                                              ; preds = %215, %214
  br label %221

221:                                              ; preds = %220, %131, %124
  br label %263

222:                                              ; preds = %17
  %223 = load i8, i8* %2, align 1
  %224 = zext i8 %223 to i32
  %225 = load i32, i32* @BIT_CLK, align 4
  %226 = shl i32 1, %225
  %227 = and i32 %224, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %261

229:                                              ; preds = %222
  %230 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 4), align 4
  %231 = icmp ne i8 %230, 0
  br i1 %231, label %261, label %232

232:                                              ; preds = %229
  %233 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  %234 = zext i8 %233 to i32
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %236 = sub nsw i32 7, %235
  %237 = ashr i32 %234, %236
  %238 = and i32 %237, 1
  store i32 %238, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 1), align 4
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %260

243:                                              ; preds = %232
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 0), align 4
  %244 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 2), align 4
  %245 = zext i8 %244 to i32
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %259

247:                                              ; preds = %243
  %248 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %249 = zext i8 %248 to i32
  %250 = add nsw i32 %249, 1
  %251 = load i32, i32* @SIZE_MASK, align 4
  %252 = and i32 %250, %251
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %254 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 8
  %255 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 6), align 2
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  store i8 %258, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 5), align 1
  br label %259

259:                                              ; preds = %247, %243
  br label %260

260:                                              ; preds = %259, %232
  br label %261

261:                                              ; preds = %260, %229, %222
  br label %263

262:                                              ; preds = %17
  br label %263

263:                                              ; preds = %262, %261, %221, %123, %73
  br label %264

264:                                              ; preds = %263, %16
  br label %265

265:                                              ; preds = %264, %1
  %266 = load i8, i8* %2, align 1
  %267 = zext i8 %266 to i32
  %268 = load i32, i32* @BIT_CS, align 4
  %269 = ashr i32 %267, %268
  %270 = and i32 %269, 1
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 8), align 4
  %272 = load i8, i8* %2, align 1
  %273 = zext i8 %272 to i32
  %274 = load i32, i32* @BIT_CLK, align 4
  %275 = ashr i32 %273, %274
  %276 = and i32 %275, 1
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spi_eeprom, i32 0, i32 4), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
