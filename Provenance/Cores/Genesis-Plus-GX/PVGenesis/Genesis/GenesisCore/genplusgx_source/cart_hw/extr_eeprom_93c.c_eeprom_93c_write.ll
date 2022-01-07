; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_93c.c_eeprom_93c_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_93c.c_eeprom_93c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32, i8, i32, i8, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BIT_CS = common dso_local global i32 0, align 4
@BIT_CLK = common dso_local global i32 0, align 4
@eeprom_93c = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BIT_DATA = common dso_local global i32 0, align 4
@sram = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@WAIT_STANDBY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_93c_write(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = load i32, i32* @BIT_CS, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %193

10:                                               ; preds = %1
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* @BIT_CLK, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %192

17:                                               ; preds = %10
  %18 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 0), align 4
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %192, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  switch i32 %21, label %190 [
    i32 129, label %22
    i32 131, label %31
    i32 128, label %105
    i32 130, label %165
  ]

22:                                               ; preds = %20
  %23 = load i8, i8* %2, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* @BIT_DATA, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %30

30:                                               ; preds = %29, %22
  br label %191

31:                                               ; preds = %20
  %32 = load i8, i8* %2, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* @BIT_DATA, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %38 = sub nsw i32 7, %37
  %39 = shl i32 %36, %38
  %40 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %104

48:                                               ; preds = %31
  %49 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 6
  %52 = and i32 %51, 3
  switch i32 %52, label %80 [
    i32 1, label %53
    i32 2, label %54
    i32 3, label %65
  ]

53:                                               ; preds = %48
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %103

54:                                               ; preds = %48
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %56 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 63
  %59 = shl i32 %58, 1
  %60 = add nsw i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i8
  store i8 %64, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 5), align 4
  br label %103

65:                                               ; preds = %48
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 6), align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %70 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 63
  %73 = shl i32 %72, 1
  %74 = add nsw i32 %69, %73
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8**
  store i8* inttoptr (i64 65535 to i8*), i8** %76, align 8
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i8*, i8** @WAIT_STANDBY, align 8
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %103

80:                                               ; preds = %48
  %81 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %82 = zext i8 %81 to i32
  %83 = ashr i32 %82, 4
  %84 = and i32 %83, 3
  switch i32 %84, label %95 [
    i32 1, label %85
    i32 2, label %86
  ]

85:                                               ; preds = %80
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %102

86:                                               ; preds = %80
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 6), align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %91 = call i32 @memset(i32 %90, i32 255, i32 128)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i8*, i8** @WAIT_STANDBY, align 8
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %102

95:                                               ; preds = %80
  %96 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %97 = zext i8 %96 to i32
  %98 = ashr i32 %97, 4
  %99 = and i32 %98, 1
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 6), align 4
  %100 = load i8*, i8** @WAIT_STANDBY, align 8
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %102

102:                                              ; preds = %95, %92, %85
  br label %103

103:                                              ; preds = %102, %77, %54, %53
  br label %104

104:                                              ; preds = %103, %31
  br label %191

105:                                              ; preds = %20
  %106 = load i8, i8* %2, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* @BIT_DATA, align 4
  %109 = ashr i32 %107, %108
  %110 = and i32 %109, 1
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %112 = sub nsw i32 15, %111
  %113 = shl i32 %110, %112
  %114 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  %115 = zext i8 %114 to i32
  %116 = or i32 %115, %113
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %121 = icmp eq i32 %120, 16
  br i1 %121, label %122, label %164

122:                                              ; preds = %105
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 6), align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %161

125:                                              ; preds = %122
  %126 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 64
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  %132 = zext i8 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %135 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 63
  %138 = shl i32 %137, 1
  %139 = add nsw i32 %134, %138
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8**
  store i8* %133, i8** %141, align 8
  br label %160

142:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %156, %142
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %144, 64
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  %148 = zext i8 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %151 = load i32, i32* %3, align 4
  %152 = shl i32 %151, 1
  %153 = add nsw i32 %150, %152
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8**
  store i8* %149, i8** %155, align 8
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %143

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %130
  br label %161

161:                                              ; preds = %160, %122
  %162 = load i8*, i8** @WAIT_STANDBY, align 8
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %164

164:                                              ; preds = %161, %105
  br label %191

165:                                              ; preds = %20
  %166 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  %167 = zext i8 %166 to i32
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %169 = sub nsw i32 15, %168
  %170 = ashr i32 %167, %169
  %171 = and i32 %170, 1
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 5), align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %175 = icmp eq i32 %174, 16
  br i1 %175, label %176, label %189

176:                                              ; preds = %165
  %177 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %178 = add i8 %177, 1
  store i8 %178, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 3), align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %180 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 2), align 4
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, 63
  %183 = shl i32 %182, 1
  %184 = add nsw i32 %179, %183
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8**
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %187 to i8
  store i8 %188, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 4), align 4
  br label %189

189:                                              ; preds = %176, %165
  br label %191

190:                                              ; preds = %20
  br label %191

191:                                              ; preds = %190, %189, %164, %104, %30
  br label %192

192:                                              ; preds = %191, %17, %10
  br label %198

193:                                              ; preds = %1
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 7), align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 5), align 4
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 1), align 4
  br label %197

197:                                              ; preds = %196, %193
  br label %198

198:                                              ; preds = %197, %192
  %199 = load i8, i8* %2, align 1
  %200 = zext i8 %199 to i32
  %201 = load i32, i32* @BIT_CS, align 4
  %202 = ashr i32 %200, %201
  %203 = and i32 %202, 1
  store i32 %203, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 7), align 4
  %204 = load i8, i8* %2, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, i32* @BIT_CLK, align 4
  %207 = ashr i32 %205, %206
  %208 = and i32 %207, 1
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_93c, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
