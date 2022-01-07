; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_add_subsystem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_add_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@pending_subsystem_roms = common dso_local global i8** null, align 8
@pending_subsystem_rom_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"[subsystem] subsystem id: %d subsystem ident: %s rom id: %d, rom path: %s\0A\00", align 1
@pending_subsystem_id = common dso_local global i32 0, align 4
@pending_subsystem_ident = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @content_add_subsystem(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 1
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @malloc(i64 %7)
  %9 = inttoptr i64 %8 to i8*
  %10 = load i8**, i8*** @pending_subsystem_roms, align 8
  %11 = load i64, i64* @pending_subsystem_rom_id, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  store i8* %9, i8** %12, align 8
  %13 = load i8**, i8*** @pending_subsystem_roms, align 8
  %14 = load i64, i64* @pending_subsystem_rom_id, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @strlcpy(i8* %16, i8* %17, i64 %18)
  %20 = load i32, i32* @pending_subsystem_id, align 4
  %21 = load i32, i32* @pending_subsystem_ident, align 4
  %22 = load i64, i64* @pending_subsystem_rom_id, align 8
  %23 = load i8**, i8*** @pending_subsystem_roms, align 8
  %24 = load i64, i64* @pending_subsystem_rom_id, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i64 %22, i8* %26)
  %28 = load i64, i64* @pending_subsystem_rom_id, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @pending_subsystem_rom_id, align 8
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
