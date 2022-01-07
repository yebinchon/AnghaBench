; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_Command_Frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_Command_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CommandFrame = common dso_local global i32* null, align 8
@SIO_MAX_DRIVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unknown command frame: %02x %02x %02x %02x %02x\00", align 1
@SIO_NoFrame = common dso_local global i32 0, align 4
@TransferStatus = common dso_local global i32 0, align 4
@DataBuffer = common dso_local global i32* null, align 8
@DataIndex = common dso_local global i32 0, align 4
@ExpectedBytes = common dso_local global i32 0, align 4
@SIO_ReadFrame = common dso_local global i32 0, align 4
@SIO_SERIN_INTERVAL = common dso_local global i32 0, align 4
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i32 0, align 4
@SIO_WriteFrame = common dso_local global i32 0, align 4
@SIO_LAST_WRITE = common dso_local global i32 0, align 4
@SIO_last_op = common dso_local global i32 0, align 4
@SIO_last_op_time = common dso_local global i32 0, align 4
@SIO_last_drive = common dso_local global i32 0, align 4
@image_type = common dso_local global i32* null, align 8
@IMAGE_TYPE_VAPI = common dso_local global i32 0, align 4
@additional_info = common dso_local global i64* null, align 8
@delay_counter = common dso_local global i32 0, align 4
@SECTOR_DELAY = common dso_local global i32 0, align 4
@SIO_LAST_READ = common dso_local global i32 0, align 4
@SIO_format_sectorsize = common dso_local global i32* null, align 8
@SIO_format_sectorcount = common dso_local global i32* null, align 8
@SIO_FormatFrame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @Command_Frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @Command_Frame() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = load i32*, i32** @CommandFrame, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @CommandFrame, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 8
  %13 = or i32 %8, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** @CommandFrame, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 49
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SIO_MAX_DRIVES, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20, %0
  %25 = load i32*, i32** @CommandFrame, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @CommandFrame, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @CommandFrame, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @CommandFrame, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @CommandFrame, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %41, i32* @TransferStatus, align 4
  store i8 0, i8* %1, align 1
  br label %211

42:                                               ; preds = %20
  %43 = load i32*, i32** @CommandFrame, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %209 [
    i32 78, label %46
    i32 79, label %62
    i32 80, label %64
    i32 87, label %64
    i32 208, label %64
    i32 215, label %64
    i32 82, label %75
    i32 210, label %75
    i32 83, label %144
    i32 33, label %160
    i32 161, label %160
    i32 34, label %193
    i32 162, label %193
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = load i32*, i32** @DataBuffer, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @SIO_ReadStatusBlock(i32 %47, i32 %50)
  %52 = load i32*, i32** @DataBuffer, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** @DataBuffer, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = ptrtoint i32* %55 to i32
  %57 = call i32 @SIO_ChkSum(i32 %56, i32 12)
  %58 = load i32*, i32** @DataBuffer, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 13
  store i32 %57, i32* %59, align 4
  store i32 0, i32* @DataIndex, align 4
  store i32 14, i32* @ExpectedBytes, align 4
  %60 = load i32, i32* @SIO_ReadFrame, align 4
  store i32 %60, i32* @TransferStatus, align 4
  %61 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  store i32 %61, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  store i8 65, i8* %1, align 1
  br label %211

62:                                               ; preds = %42
  store i32 13, i32* @ExpectedBytes, align 4
  store i32 0, i32* @DataIndex, align 4
  %63 = load i32, i32* @SIO_WriteFrame, align 4
  store i32 %63, i32* @TransferStatus, align 4
  store i8 65, i8* %1, align 1
  br label %211

64:                                               ; preds = %42, %42, %42, %42
  %65 = load i32, i32* %2, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @SIO_SizeOfSector(i8 signext %66, i32 %67, i32* %4, i32* null)
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @ExpectedBytes, align 4
  store i32 0, i32* @DataIndex, align 4
  %71 = load i32, i32* @SIO_WriteFrame, align 4
  store i32 %71, i32* @TransferStatus, align 4
  %72 = load i32, i32* @SIO_LAST_WRITE, align 4
  store i32 %72, i32* @SIO_last_op, align 4
  store i32 10, i32* @SIO_last_op_time, align 4
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @SIO_last_drive, align 4
  store i8 65, i8* %1, align 1
  br label %211

75:                                               ; preds = %42, %42
  %76 = load i32, i32* %2, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @SIO_SizeOfSector(i8 signext %77, i32 %78, i32* %4, i32* null)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32*, i32** @DataBuffer, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = ptrtoint i32* %83 to i32
  %85 = call i32 @SIO_ReadSector(i32 %80, i32 %81, i32 %84)
  %86 = load i32*, i32** @DataBuffer, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** @DataBuffer, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = ptrtoint i32* %89 to i32
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @SIO_ChkSum(i32 %90, i32 %91)
  %93 = load i32*, i32** @DataBuffer, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 1, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  store i32 0, i32* @DataIndex, align 4
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 2, %98
  store i32 %99, i32* @ExpectedBytes, align 4
  %100 = load i32, i32* @SIO_ReadFrame, align 4
  store i32 %100, i32* @TransferStatus, align 4
  %101 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  %102 = shl i32 %101, 2
  store i32 %102, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  %103 = load i32*, i32** @image_type, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IMAGE_TYPE_VAPI, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %75
  %111 = load i64*, i64** @additional_info, align 8
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %116, %struct.TYPE_2__** %5, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %118 = icmp eq %struct.TYPE_2__* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  %121 = shl i32 %120, 2
  store i32 %121, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %129

122:                                              ; preds = %110
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 57
  %127 = sdiv i32 %126, 114
  %128 = sub nsw i32 %127, 12
  store i32 %128, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  br label %129

129:                                              ; preds = %122, %119
  br label %140

130:                                              ; preds = %75
  %131 = load i32, i32* %3, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* @delay_counter, align 4
  %135 = load i32, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  %137 = load i32, i32* @SECTOR_DELAY, align 4
  store i32 %137, i32* @delay_counter, align 4
  br label %139

138:                                              ; preds = %130
  store i32 0, i32* @delay_counter, align 4
  br label %139

139:                                              ; preds = %138, %133
  br label %140

140:                                              ; preds = %139, %129
  %141 = load i32, i32* @SIO_LAST_READ, align 4
  store i32 %141, i32* @SIO_last_op, align 4
  store i32 10, i32* @SIO_last_op_time, align 4
  %142 = load i32, i32* %2, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* @SIO_last_drive, align 4
  store i8 65, i8* %1, align 1
  br label %211

144:                                              ; preds = %42
  %145 = load i32, i32* %2, align 4
  %146 = load i32*, i32** @DataBuffer, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = ptrtoint i32* %147 to i32
  %149 = call i32 @SIO_DriveStatus(i32 %145, i32 %148)
  %150 = load i32*, i32** @DataBuffer, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %149, i32* %151, align 4
  %152 = load i32*, i32** @DataBuffer, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = ptrtoint i32* %153 to i32
  %155 = call i32 @SIO_ChkSum(i32 %154, i32 4)
  %156 = load i32*, i32** @DataBuffer, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 5
  store i32 %155, i32* %157, align 4
  store i32 0, i32* @DataIndex, align 4
  store i32 6, i32* @ExpectedBytes, align 4
  %158 = load i32, i32* @SIO_ReadFrame, align 4
  store i32 %158, i32* @TransferStatus, align 4
  %159 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  store i32 %159, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  store i8 65, i8* %1, align 1
  br label %211

160:                                              ; preds = %42, %42
  %161 = load i32*, i32** @SIO_format_sectorsize, align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %2, align 4
  %167 = load i32*, i32** @DataBuffer, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = ptrtoint i32* %168 to i32
  %170 = load i32, i32* %4, align 4
  %171 = load i32*, i32** @SIO_format_sectorcount, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @SIO_FormatDisk(i32 %166, i32 %169, i32 %170, i32 %175)
  %177 = load i32*, i32** @DataBuffer, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 %176, i32* %178, align 4
  %179 = load i32*, i32** @DataBuffer, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = ptrtoint i32* %180 to i32
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @SIO_ChkSum(i32 %181, i32 %182)
  %184 = load i32*, i32** @DataBuffer, align 8
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 1, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  store i32 0, i32* @DataIndex, align 4
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 2, %189
  store i32 %190, i32* @ExpectedBytes, align 4
  %191 = load i32, i32* @SIO_FormatFrame, align 4
  store i32 %191, i32* @TransferStatus, align 4
  %192 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  store i32 %192, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  store i8 65, i8* %1, align 1
  br label %211

193:                                              ; preds = %42, %42
  %194 = load i32, i32* %2, align 4
  %195 = load i32*, i32** @DataBuffer, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = ptrtoint i32* %196 to i32
  %198 = call i32 @SIO_FormatDisk(i32 %194, i32 %197, i32 128, i32 1040)
  %199 = load i32*, i32** @DataBuffer, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 %198, i32* %200, align 4
  %201 = load i32*, i32** @DataBuffer, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = ptrtoint i32* %202 to i32
  %204 = call i32 @SIO_ChkSum(i32 %203, i32 128)
  %205 = load i32*, i32** @DataBuffer, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 129
  store i32 %204, i32* %206, align 4
  store i32 0, i32* @DataIndex, align 4
  store i32 130, i32* @ExpectedBytes, align 4
  %207 = load i32, i32* @SIO_FormatFrame, align 4
  store i32 %207, i32* @TransferStatus, align 4
  %208 = load i32, i32* @SIO_SERIN_INTERVAL, align 4
  store i32 %208, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  store i8 65, i8* %1, align 1
  br label %211

209:                                              ; preds = %42
  %210 = load i32, i32* @SIO_NoFrame, align 4
  store i32 %210, i32* @TransferStatus, align 4
  store i8 69, i8* %1, align 1
  br label %211

211:                                              ; preds = %209, %193, %160, %144, %140, %64, %62, %46, %24
  %212 = load i8, i8* %1, align 1
  ret i8 %212
}

declare dso_local i32 @Log_print(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SIO_ReadStatusBlock(i32, i32) #1

declare dso_local i32 @SIO_ChkSum(i32, i32) #1

declare dso_local i32 @SIO_SizeOfSector(i8 signext, i32, i32*, i32*) #1

declare dso_local i32 @SIO_ReadSector(i32, i32, i32) #1

declare dso_local i32 @SIO_DriveStatus(i32, i32) #1

declare dso_local i32 @SIO_FormatDisk(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
