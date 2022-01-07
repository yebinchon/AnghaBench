; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_D1PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_D1PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"BB Write addr:%4x byte:%2x, cpu:%4x\0A\00", align 1
@CPU_remember_PC = common dso_local global i32* null, align 8
@CPU_remember_PC_curpos = common dso_local global i32 0, align 4
@CPU_REMEMBER_PC_STEPS = common dso_local global i32 0, align 4
@bb_scsi_enabled = common dso_local global i64 0, align 8
@bb_PCR = common dso_local global i32 0, align 4
@bb_ram = common dso_local global i64 0, align 8
@bb_ram_bank_offset = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64 0, align 8
@bb_rom_high_bit = common dso_local global i32 0, align 4
@bb_rom_size = common dso_local global i32 0, align 4
@bb_rom_bank = common dso_local global i32 0, align 4
@bb_rom = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"black box bank:%2x activated\0A\00", align 1
@MEMORY_os = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"d1ff ERROR: byte=%2x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Floating point rom activated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_BB_D1PutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @CPU_remember_PC, align 8
  %9 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %12 = srem i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32 %15)
  %17 = call i32 @D(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 53616
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i64, i64* @bb_scsi_enabled, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @PBI_SCSI_PutSEL(i32 %28)
  br label %30

30:                                               ; preds = %23, %20
  br label %219

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 53617
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i64, i64* @bb_scsi_enabled, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @PBI_SCSI_PutByte(i32 %38)
  %40 = load i32, i32* @bb_PCR, align 4
  %41 = and i32 %40, 14
  %42 = ashr i32 %41, 1
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 @PBI_SCSI_PutACK(i32 1)
  %46 = call i32 @PBI_SCSI_PutACK(i32 0)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %34
  br label %218

49:                                               ; preds = %31
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 53628
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @bb_PCR, align 4
  %54 = load i32, i32* @bb_PCR, align 4
  %55 = and i32 %54, 14
  %56 = ashr i32 %55, 1
  %57 = icmp eq i32 %56, 6
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i64, i64* @bb_scsi_enabled, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @PBI_SCSI_PutACK(i32 1)
  br label %63

63:                                               ; preds = %61, %58
  br label %76

64:                                               ; preds = %52
  %65 = load i32, i32* @bb_PCR, align 4
  %66 = and i32 %65, 14
  %67 = ashr i32 %66, 1
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i64, i64* @bb_scsi_enabled, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @PBI_SCSI_PutACK(i32 0)
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75, %63
  br label %217

77:                                               ; preds = %49
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %78, 53692
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i64, i64* @bb_ram, align 8
  %82 = load i32, i32* @bb_ram_bank_offset, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i64, i64* @MEMORY_mem, align 8
  %86 = add nsw i64 %85, 54784
  %87 = call i32 @memcpy(i64 %84, i64 %86, i32 256)
  %88 = load i32, i32* %4, align 4
  %89 = shl i32 %88, 8
  store i32 %89, i32* @bb_ram_bank_offset, align 4
  %90 = load i64, i64* @MEMORY_mem, align 8
  %91 = add nsw i64 %90, 54784
  %92 = load i64, i64* @bb_ram, align 8
  %93 = load i32, i32* @bb_ram_bank_offset, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = call i32 @memcpy(i64 %91, i64 %95, i32 256)
  br label %216

97:                                               ; preds = %77
  %98 = load i32, i32* %3, align 4
  %99 = icmp eq i32 %98, 53694
  br i1 %99, label %100, label %136

100:                                              ; preds = %97
  %101 = load i32, i32* @bb_rom_high_bit, align 4
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 4
  %104 = shl i32 %103, 2
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %100
  %107 = load i32, i32* @bb_rom_size, align 4
  %108 = icmp eq i32 %107, 65536
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, 4
  %112 = shl i32 %111, 2
  store i32 %112, i32* @bb_rom_high_bit, align 4
  %113 = load i32, i32* @bb_rom_bank, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %109
  %116 = load i32, i32* @bb_rom_bank, align 4
  %117 = icmp slt i32 %116, 8
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i64, i64* @MEMORY_mem, align 8
  %120 = add nsw i64 %119, 55296
  %121 = load i64, i64* @bb_rom, align 8
  %122 = load i32, i32* @bb_rom_bank, align 4
  %123 = load i32, i32* @bb_rom_high_bit, align 4
  %124 = add nsw i32 %122, %123
  %125 = mul nsw i32 %124, 2048
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %121, %126
  %128 = call i32 @memcpy(i64 %120, i64 %127, i32 2048)
  %129 = load i32, i32* @bb_rom_bank, align 4
  %130 = load i32, i32* @bb_rom_high_bit, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = call i32 @D(i32 %132)
  br label %134

134:                                              ; preds = %118, %115, %109
  br label %135

135:                                              ; preds = %134, %106, %100
  br label %215

136:                                              ; preds = %97
  %137 = load i32, i32* %3, align 4
  %138 = and i32 %137, 65472
  %139 = icmp eq i32 %138, 53696
  br i1 %139, label %140, label %214

140:                                              ; preds = %136
  %141 = load i32, i32* @bb_rom_bank, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %213

144:                                              ; preds = %140
  store i32 -1, i32* %5, align 4
  %145 = load i32, i32* @bb_rom_size, align 4
  %146 = icmp eq i32 %145, 16384
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load i32, i32* %4, align 4
  %149 = icmp sge i32 %148, 8
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* %4, align 4
  %152 = icmp sle i32 %151, 15
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = sub nsw i32 %154, 8
  %156 = mul nsw i32 %155, 2048
  store i32 %156, i32* %5, align 4
  br label %167

157:                                              ; preds = %150, %147
  %158 = load i32, i32* %4, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %161, 8
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %4, align 4
  %165 = mul nsw i32 %164, 2048
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %163, %160, %157
  br label %167

167:                                              ; preds = %166, %153
  br label %180

168:                                              ; preds = %144
  %169 = load i32, i32* %4, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %172, 16
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @bb_rom_high_bit, align 4
  %177 = add nsw i32 %175, %176
  %178 = mul nsw i32 %177, 2048
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %174, %171, %168
  br label %180

180:                                              ; preds = %179, %167
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load i64, i64* @MEMORY_mem, align 8
  %185 = add nsw i64 %184, 55296
  %186 = load i64, i64* @bb_rom, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = call i32 @memcpy(i64 %185, i64 %189, i32 2048)
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @bb_rom_high_bit, align 4
  %193 = add nsw i32 %191, %192
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  %195 = call i32 @D(i32 %194)
  br label %211

196:                                              ; preds = %180
  %197 = load i64, i64* @MEMORY_mem, align 8
  %198 = add nsw i64 %197, 55296
  %199 = load i64, i64* @MEMORY_os, align 8
  %200 = add nsw i64 %199, 6144
  %201 = call i32 @memcpy(i64 %198, i64 %200, i32 2048)
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = load i32, i32* %4, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = call i32 @D(i32 %206)
  br label %208

208:                                              ; preds = %204, %196
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %210 = call i32 @D(i32 %209)
  br label %211

211:                                              ; preds = %208, %183
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* @bb_rom_bank, align 4
  br label %213

213:                                              ; preds = %211, %140
  br label %214

214:                                              ; preds = %213, %136
  br label %215

215:                                              ; preds = %214, %135
  br label %216

216:                                              ; preds = %215, %80
  br label %217

217:                                              ; preds = %216, %76
  br label %218

218:                                              ; preds = %217, %48
  br label %219

219:                                              ; preds = %218, %30
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PBI_SCSI_PutSEL(i32) #1

declare dso_local i32 @PBI_SCSI_PutByte(i32) #1

declare dso_local i32 @PBI_SCSI_PutACK(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
