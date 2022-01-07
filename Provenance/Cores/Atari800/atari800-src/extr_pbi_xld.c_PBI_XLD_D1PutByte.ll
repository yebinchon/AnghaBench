; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PBI_XLD_D1PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PBI_XLD_D1PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"votrax write:%4x\0A\00", align 1
@VOTRAXSND_busy = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@votrax_latch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"votrax IRQ generated: IRQ enable changed and idle\0A\00", align 1
@VOICE_MASK = common dso_local global i32 0, align 4
@PBI_IRQ = common dso_local global i32 0, align 4
@POKEY_OFFSET_IRQEN = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [141 x i8] c"XLD 8040 T1:%d loop-back:%d modem+phone:%d offhook(modem relay):%d phaudio:%d DTMF:%d O/!A(originate/answer):%d SQT(squelch transmitter):%d\0A\00", align 1
@modem_latch = common dso_local global i32 0, align 4
@xld_d_enabled = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"d110: disk output byte:%2x\0A\00", align 1
@CommandIndex = common dso_local global i64 0, align 8
@DataIndex = common dso_local global i64 0, align 8
@PIO_CommandFrame = common dso_local global i64 0, align 8
@TransferStatus = common dso_local global i64 0, align 8
@ExpectedBytes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"command frame expected\0A\00", align 1
@PIO_StatusRead = common dso_local global i64 0, align 8
@PIO_ReadFrame = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"read ack strobe\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_XLD_D1PutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, -4
  %7 = icmp eq i32 %6, 53508
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @D(i32 %10)
  %12 = load i64, i64* @VOTRAXSND_busy, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @PBI_XLD_votrax_busy_callback(i32 %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, i32* @votrax_latch, align 4
  %19 = and i32 %18, 63
  %20 = call i32 @VOTRAXSND_PutByte(i32 %19)
  br label %153

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, -4
  %24 = icmp eq i32 %23, 53504
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i32, i32* @votrax_latch, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i32 (...) @Votrax_GetStatus()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @D(i32 %37)
  %39 = call i32 (...) @CPU_GenerateIRQ()
  %40 = load i32, i32* @VOICE_MASK, align 4
  %41 = load i32, i32* @PBI_IRQ, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @PBI_IRQ, align 4
  br label %60

43:                                               ; preds = %33, %29, %25
  %44 = load i32, i32* @votrax_latch, align 4
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @VOICE_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* @PBI_IRQ, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* @PBI_IRQ, align 4
  %56 = load i32, i32* @POKEY_OFFSET_IRQEN, align 4
  %57 = load i32, i32* @POKEY_IRQEN, align 4
  %58 = call i32 @POKEY_PutByte(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %47, %43
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* @votrax_latch, align 4
  br label %152

62:                                               ; preds = %21
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 53512
  br i1 %64, label %65, label %117

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 32
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 16
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 2
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %77, i32 %83, i32 %89, i32 %95, i32 %101, i32 %107, i32 %113)
  %115 = call i32 @D(i32 %114)
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* @modem_latch, align 4
  br label %151

117:                                              ; preds = %62
  %118 = load i64, i64* @xld_d_enabled, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load i32, i32* %3, align 4
  %122 = icmp eq i32 %121, 53520
  br i1 %122, label %123, label %150

123:                                              ; preds = %120
  %124 = load i32, i32* %4, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = call i32 @D(i32 %125)
  %127 = load i32, i32* @modem_latch, align 4
  %128 = and i32 %127, 128
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  store i64 0, i64* @CommandIndex, align 8
  store i64 0, i64* @DataIndex, align 8
  %131 = load i64, i64* @PIO_CommandFrame, align 8
  store i64 %131, i64* @TransferStatus, align 8
  store i32 5, i32* @ExpectedBytes, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %133 = call i32 @D(i32 %132)
  br label %149

134:                                              ; preds = %123
  %135 = load i64, i64* @TransferStatus, align 8
  %136 = load i64, i64* @PIO_StatusRead, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* @TransferStatus, align 8
  %140 = load i64, i64* @PIO_ReadFrame, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138, %134
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %144 = call i32 @D(i32 %143)
  br label %148

145:                                              ; preds = %138
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @PIO_PutByte(i32 %146)
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %130
  br label %150

150:                                              ; preds = %149, %120, %117
  br label %151

151:                                              ; preds = %150, %65
  br label %152

152:                                              ; preds = %151, %60
  br label %153

153:                                              ; preds = %152, %17
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PBI_XLD_votrax_busy_callback(i32) #1

declare dso_local i32 @VOTRAXSND_PutByte(i32) #1

declare dso_local i32 @Votrax_GetStatus(...) #1

declare dso_local i32 @CPU_GenerateIRQ(...) #1

declare dso_local i32 @POKEY_PutByte(i32, i32) #1

declare dso_local i32 @PIO_PutByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
