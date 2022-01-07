; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_get_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending_content_rom_crc = common dso_local global i32 0, align 4
@pending_content_rom_crc_path = common dso_local global i64 0, align 8
@content_rom_crc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"CRC32: 0x%x .\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @content_get_crc() #0 {
  %1 = load i32, i32* @pending_content_rom_crc, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  store i32 0, i32* @pending_content_rom_crc, align 4
  %4 = load i64, i64* @pending_content_rom_crc_path, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = call i64 @file_crc32(i32 0, i8* %5)
  store i64 %6, i64* @content_rom_crc, align 8
  %7 = load i64, i64* @content_rom_crc, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i64, i64* @content_rom_crc, align 8
  ret i64 %11
}

declare dso_local i64 @file_crc32(i32, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
