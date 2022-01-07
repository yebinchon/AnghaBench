; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_mio.c_PBI_MIO_D1PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_mio.c_PBI_MIO_D1PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mio_ram_bank_offset = common dso_local global i32 0, align 4
@mio_ram_enabled = common dso_local global i32 0, align 4
@mio_scsi_enabled = common dso_local global i64 0, align 8
@mio_rom_bank = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64 0, align 8
@mio_rom = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"mio bank:%2x activated\0A\00", align 1
@MEMORY_os = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Floating point rom activated\0A\00", align 1
@mio_ram = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"MIO Write addr:%4x byte:%2x, cpu:%4x\0A\00", align 1
@CPU_remember_PC = common dso_local global i32* null, align 8
@CPU_remember_PC_curpos = common dso_local global i32 0, align 4
@CPU_REMEMBER_PC_STEPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_MIO_D1PutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @mio_ram_bank_offset, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @mio_ram_enabled, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 65507
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 53728
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @mio_ram_bank_offset, align 4
  %18 = and i32 %17, 983040
  store i32 %18, i32* @mio_ram_bank_offset, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* @mio_ram_bank_offset, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @mio_ram_bank_offset, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 53729
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i64, i64* @mio_scsi_enabled, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %30, 255
  %32 = call i32 @PBI_SCSI_PutByte(i32 %31)
  %33 = call i32 @PBI_SCSI_PutACK(i32 1)
  %34 = call i32 @PBI_SCSI_PutACK(i32 0)
  br label %35

35:                                               ; preds = %29, %26
  br label %113

36:                                               ; preds = %23
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 53730
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i32, i32* @mio_ram_bank_offset, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* @mio_ram_bank_offset, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 16
  %45 = load i32, i32* @mio_ram_bank_offset, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @mio_ram_bank_offset, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 32
  store i32 %48, i32* @mio_ram_enabled, align 4
  %49 = load i64, i64* @mio_scsi_enabled, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @PBI_SCSI_PutSEL(i32 %57)
  br label %59

59:                                               ; preds = %51, %39
  br label %112

60:                                               ; preds = %36
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 53731
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  %64 = load i32, i32* @mio_rom_bank, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %110

67:                                               ; preds = %63
  store i32 -1, i32* %9, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 8192, i32* %9, align 4
  br label %86

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 10240, i32* %9, align 4
  br label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 12288, i32* %9, align 4
  br label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 14336, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %83, %78
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i64, i64* @MEMORY_mem, align 8
  %91 = add nsw i64 %90, 55296
  %92 = load i64, i64* @mio_rom, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = call i32 @memcpy(i64 %91, i64 %95, i32 2048)
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = call i32 @D(i32 %98)
  br label %108

100:                                              ; preds = %86
  %101 = load i64, i64* @MEMORY_mem, align 8
  %102 = add nsw i64 %101, 55296
  %103 = load i64, i64* @MEMORY_os, align 8
  %104 = add nsw i64 %103, 6144
  %105 = call i32 @memcpy(i64 %102, i64 %104, i32 2048)
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %107 = call i32 @D(i32 %106)
  br label %108

108:                                              ; preds = %100, %89
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* @mio_rom_bank, align 4
  br label %110

110:                                              ; preds = %108, %63
  br label %111

111:                                              ; preds = %110, %60
  br label %112

112:                                              ; preds = %111, %59
  br label %113

113:                                              ; preds = %112, %35
  br label %114

114:                                              ; preds = %113, %16
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @mio_ram_bank_offset, align 4
  %117 = icmp ne i32 %115, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @mio_ram_enabled, align 4
  %121 = icmp ne i32 %119, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @mio_ram_enabled, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %114
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i64, i64* @MEMORY_mem, align 8
  %130 = add nsw i64 %129, 54784
  %131 = load i64, i64* @mio_ram, align 8
  %132 = load i32, i32* @mio_ram_bank_offset, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = call i32 @memcpy(i64 %130, i64 %134, i32 256)
  br label %176

136:                                              ; preds = %125, %114
  %137 = load i32, i32* @mio_ram_enabled, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load i64, i64* @mio_ram, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i64, i64* @MEMORY_mem, align 8
  %148 = add nsw i64 %147, 54784
  %149 = call i32 @memcpy(i64 %146, i64 %148, i32 256)
  %150 = load i64, i64* @MEMORY_mem, align 8
  %151 = add nsw i64 %150, 54784
  %152 = load i64, i64* @mio_ram, align 8
  %153 = load i32, i32* @mio_ram_bank_offset, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = call i32 @memcpy(i64 %151, i64 %155, i32 256)
  br label %175

157:                                              ; preds = %139, %136
  %158 = load i32, i32* @mio_ram_enabled, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load i64, i64* @mio_ram, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load i64, i64* @MEMORY_mem, align 8
  %169 = add nsw i64 %168, 54784
  %170 = call i32 @memcpy(i64 %167, i64 %169, i32 256)
  %171 = load i64, i64* @MEMORY_mem, align 8
  %172 = add nsw i64 %171, 54784
  %173 = call i32 @memset(i64 %172, i32 255, i32 256)
  br label %174

174:                                              ; preds = %163, %160, %157
  br label %175

175:                                              ; preds = %174, %142
  br label %176

176:                                              ; preds = %175, %128
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %4, align 4
  %179 = load i32*, i32** @CPU_remember_PC, align 8
  %180 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %183 = srem i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %177, i32 %178, i32 %186)
  %188 = call i32 @D(i32 %187)
  ret void
}

declare dso_local i32 @PBI_SCSI_PutByte(i32) #1

declare dso_local i32 @PBI_SCSI_PutACK(i32) #1

declare dso_local i32 @PBI_SCSI_PutSEL(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
