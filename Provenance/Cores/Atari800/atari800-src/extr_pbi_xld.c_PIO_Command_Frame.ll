; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PIO_Command_Frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PIO_Command_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CommandFrame = common dso_local global i32* null, align 8
@SIO_MAX_DRIVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unknown command frame: %02x %02x %02x %02x %02x\00", align 1
@PIO_NoFrame = common dso_local global i32 0, align 4
@TransferStatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PIO DISK: Set large mode (unimplemented)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"PIO DISK: Set small mode (unimplemented)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"PIO DISK: Drive Diagnostic In (unimplemented)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"PIO DISK: Drive Diagnostic Out (unimplemented)\00", align 1
@DataBuffer = common dso_local global i32* null, align 8
@DataIndex = common dso_local global i32 0, align 4
@ExpectedBytes = common dso_local global i32 0, align 4
@PIO_ReadFrame = common dso_local global i32 0, align 4
@PIO_WriteFrame = common dso_local global i32 0, align 4
@SIO_LAST_WRITE = common dso_local global i32 0, align 4
@SIO_last_op = common dso_local global i32 0, align 4
@SIO_last_op_time = common dso_local global i32 0, align 4
@SIO_last_drive = common dso_local global i32 0, align 4
@SIO_LAST_READ = common dso_local global i32 0, align 4
@SIO_drive_status = common dso_local global i32* null, align 8
@SIO_NO_DISK = common dso_local global i32 0, align 4
@SIO_OFF = common dso_local global i32 0, align 4
@SIO_format_sectorsize = common dso_local global i32* null, align 8
@SIO_format_sectorcount = common dso_local global i32* null, align 8
@PIO_FormatFrame = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"PIO DISK: Internal Command 0xb1 (unimplemented)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"PIO DISK: Internal Command 0xb2 (unimplemented)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @PIO_Command_Frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @PIO_Command_Frame() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @CommandFrame, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** @CommandFrame, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = or i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** @CommandFrame, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 49
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SIO_MAX_DRIVES, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19, %0
  %24 = load i32*, i32** @CommandFrame, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @CommandFrame, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @CommandFrame, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @CommandFrame, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @CommandFrame, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %40, i32* @TransferStatus, align 4
  store i8 0, i8* %1, align 1
  br label %199

41:                                               ; preds = %19
  %42 = load i32*, i32** @CommandFrame, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %197 [
    i32 1, label %45
    i32 2, label %47
    i32 35, label %49
    i32 36, label %51
    i32 78, label %53
    i32 79, label %68
    i32 80, label %70
    i32 87, label %70
    i32 82, label %81
    i32 83, label %110
    i32 33, label %146
    i32 34, label %178
    i32 177, label %193
    i32 178, label %195
  ]

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i8 69, i8* %1, align 1
  br label %199

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i8 69, i8* %1, align 1
  br label %199

49:                                               ; preds = %41
  %50 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i8 69, i8* %1, align 1
  br label %199

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i8 69, i8* %1, align 1
  br label %199

53:                                               ; preds = %41
  %54 = load i32, i32* %2, align 4
  %55 = load i32*, i32** @DataBuffer, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = ptrtoint i32* %56 to i32
  %58 = call i32 @SIO_ReadStatusBlock(i32 %54, i32 %57)
  %59 = load i32*, i32** @DataBuffer, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** @DataBuffer, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = ptrtoint i32* %62 to i32
  %64 = call i32 @SIO_ChkSum(i32 %63, i32 12)
  %65 = load i32*, i32** @DataBuffer, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 13
  store i32 %64, i32* %66, align 4
  store i32 0, i32* @DataIndex, align 4
  store i32 14, i32* @ExpectedBytes, align 4
  %67 = load i32, i32* @PIO_ReadFrame, align 4
  store i32 %67, i32* @TransferStatus, align 4
  store i8 65, i8* %1, align 1
  br label %199

68:                                               ; preds = %41
  store i32 13, i32* @ExpectedBytes, align 4
  store i32 0, i32* @DataIndex, align 4
  %69 = load i32, i32* @PIO_WriteFrame, align 4
  store i32 %69, i32* @TransferStatus, align 4
  store i8 65, i8* %1, align 1
  br label %199

70:                                               ; preds = %41, %41
  %71 = load i32, i32* %2, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @SIO_SizeOfSector(i8 signext %72, i32 %73, i32* %4, i32* null)
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @ExpectedBytes, align 4
  store i32 0, i32* @DataIndex, align 4
  %77 = load i32, i32* @PIO_WriteFrame, align 4
  store i32 %77, i32* @TransferStatus, align 4
  %78 = load i32, i32* @SIO_LAST_WRITE, align 4
  store i32 %78, i32* @SIO_last_op, align 4
  store i32 10, i32* @SIO_last_op_time, align 4
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @SIO_last_drive, align 4
  store i8 65, i8* %1, align 1
  br label %199

81:                                               ; preds = %41
  %82 = load i32, i32* %2, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @SIO_SizeOfSector(i8 signext %83, i32 %84, i32* %4, i32* null)
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32*, i32** @DataBuffer, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = ptrtoint i32* %89 to i32
  %91 = call i32 @SIO_ReadSector(i32 %86, i32 %87, i32 %90)
  %92 = load i32*, i32** @DataBuffer, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** @DataBuffer, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = ptrtoint i32* %95 to i32
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @SIO_ChkSum(i32 %96, i32 %97)
  %99 = load i32*, i32** @DataBuffer, align 8
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 1, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  store i32 0, i32* @DataIndex, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 2, %104
  store i32 %105, i32* @ExpectedBytes, align 4
  %106 = load i32, i32* @PIO_ReadFrame, align 4
  store i32 %106, i32* @TransferStatus, align 4
  %107 = load i32, i32* @SIO_LAST_READ, align 4
  store i32 %107, i32* @SIO_last_op, align 4
  store i32 10, i32* @SIO_last_op_time, align 4
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @SIO_last_drive, align 4
  store i8 65, i8* %1, align 1
  br label %199

110:                                              ; preds = %41
  %111 = load i32, i32* %2, align 4
  %112 = load i32*, i32** @DataBuffer, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = ptrtoint i32* %113 to i32
  %115 = call i32 @SIO_DriveStatus(i32 %111, i32 %114)
  %116 = load i32*, i32** @DataBuffer, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** @DataBuffer, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 255, i32* %119, align 4
  %120 = load i32*, i32** @SIO_drive_status, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SIO_NO_DISK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %110
  %128 = load i32*, i32** @SIO_drive_status, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SIO_OFF, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127, %110
  %136 = load i32*, i32** @DataBuffer, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  store i32 127, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %127
  %139 = load i32*, i32** @DataBuffer, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = ptrtoint i32* %140 to i32
  %142 = call i32 @SIO_ChkSum(i32 %141, i32 4)
  %143 = load i32*, i32** @DataBuffer, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  store i32 %142, i32* %144, align 4
  store i32 0, i32* @DataIndex, align 4
  store i32 6, i32* @ExpectedBytes, align 4
  %145 = load i32, i32* @PIO_ReadFrame, align 4
  store i32 %145, i32* @TransferStatus, align 4
  store i8 65, i8* %1, align 1
  br label %199

146:                                              ; preds = %41
  %147 = load i32*, i32** @SIO_format_sectorsize, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %2, align 4
  %153 = load i32*, i32** @DataBuffer, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = ptrtoint i32* %154 to i32
  %156 = load i32, i32* %4, align 4
  %157 = load i32*, i32** @SIO_format_sectorcount, align 8
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @SIO_FormatDisk(i32 %152, i32 %155, i32 %156, i32 %161)
  %163 = load i32*, i32** @DataBuffer, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  %165 = load i32*, i32** @DataBuffer, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = ptrtoint i32* %166 to i32
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @SIO_ChkSum(i32 %167, i32 %168)
  %170 = load i32*, i32** @DataBuffer, align 8
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 1, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %169, i32* %174, align 4
  store i32 0, i32* @DataIndex, align 4
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 2, %175
  store i32 %176, i32* @ExpectedBytes, align 4
  %177 = load i32, i32* @PIO_FormatFrame, align 4
  store i32 %177, i32* @TransferStatus, align 4
  store i8 65, i8* %1, align 1
  br label %199

178:                                              ; preds = %41
  %179 = load i32, i32* %2, align 4
  %180 = load i32*, i32** @DataBuffer, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = ptrtoint i32* %181 to i32
  %183 = call i32 @SIO_FormatDisk(i32 %179, i32 %182, i32 128, i32 1040)
  %184 = load i32*, i32** @DataBuffer, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** @DataBuffer, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = ptrtoint i32* %187 to i32
  %189 = call i32 @SIO_ChkSum(i32 %188, i32 128)
  %190 = load i32*, i32** @DataBuffer, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 129
  store i32 %189, i32* %191, align 4
  store i32 0, i32* @DataIndex, align 4
  store i32 130, i32* @ExpectedBytes, align 4
  %192 = load i32, i32* @PIO_FormatFrame, align 4
  store i32 %192, i32* @TransferStatus, align 4
  store i8 65, i8* %1, align 1
  br label %199

193:                                              ; preds = %41
  %194 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i8 69, i8* %1, align 1
  br label %199

195:                                              ; preds = %41
  %196 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i8 69, i8* %1, align 1
  br label %199

197:                                              ; preds = %41
  %198 = load i32, i32* @PIO_NoFrame, align 4
  store i32 %198, i32* @TransferStatus, align 4
  store i8 69, i8* %1, align 1
  br label %199

199:                                              ; preds = %197, %195, %193, %178, %146, %138, %81, %70, %68, %53, %51, %49, %47, %45, %23
  %200 = load i8, i8* %1, align 1
  ret i8 %200
}

declare dso_local i32 @Log_print(i8*, ...) #1

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
