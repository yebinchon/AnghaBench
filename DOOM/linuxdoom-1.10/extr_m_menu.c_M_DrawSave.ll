; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_DrawSave.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_DrawSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"M_SAVEG\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@load_end = common dso_local global i32 0, align 4
@LoadDef = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LINEHEIGHT = common dso_local global i32 0, align 4
@savegamestrings = common dso_local global i8** null, align 8
@saveStringEnter = common dso_local global i64 0, align 8
@saveSlot = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_DrawSave() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PU_CACHE, align 4
  %3 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = call i32 @V_DrawPatchDirect(i32 72, i32 28, i32 0, i32 %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %31, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @load_end, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LoadDef, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LoadDef, i32 0, i32 0), align 8
  %12 = load i32, i32* @LINEHEIGHT, align 4
  %13 = load i32, i32* %1, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = call i32 @M_DrawSaveLoadBorder(i64 %10, i64 %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LoadDef, i32 0, i32 1), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LoadDef, i32 0, i32 0), align 8
  %20 = load i32, i32* @LINEHEIGHT, align 4
  %21 = load i32, i32* %1, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = load i8**, i8*** @savegamestrings, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @M_WriteText(i64 %18, i64 %24, i8* %29)
  br label %31

31:                                               ; preds = %9
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i64, i64* @saveStringEnter, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i8**, i8*** @savegamestrings, align 8
  %39 = load i64, i64* @saveSlot, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @M_StringWidth(i8* %41)
  store i32 %42, i32* %1, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LoadDef, i32 0, i32 1), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LoadDef, i32 0, i32 0), align 8
  %48 = load i32, i32* @LINEHEIGHT, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @saveSlot, align 8
  %51 = mul i64 %49, %50
  %52 = add i64 %47, %51
  %53 = call i32 @M_WriteText(i64 %46, i64 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @V_DrawPatchDirect(i32, i32, i32, i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @M_DrawSaveLoadBorder(i64, i64) #1

declare dso_local i32 @M_WriteText(i64, i64, i8*) #1

declare dso_local i32 @M_StringWidth(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
