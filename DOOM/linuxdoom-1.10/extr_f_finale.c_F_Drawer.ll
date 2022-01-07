; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_Drawer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_Drawer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@finalestage = common dso_local global i32 0, align 4
@gameepisode = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@retail = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CREDIT\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"HELP2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"VICTORY2\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ENDPIC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_Drawer() #0 {
  %1 = load i32, i32* @finalestage, align 4
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @F_CastDrawer()
  br label %36

5:                                                ; preds = %0
  %6 = load i32, i32* @finalestage, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 (...) @F_TextWrite()
  br label %36

10:                                               ; preds = %5
  %11 = load i32, i32* @gameepisode, align 4
  switch i32 %11, label %35 [
    i32 1, label %12
    i32 2, label %25
    i32 3, label %29
    i32 4, label %31
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @gamemode, align 4
  %14 = load i32, i32* @retail, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @PU_CACHE, align 4
  %18 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @V_DrawPatch(i32 0, i32 0, i32 0, i32 %18)
  br label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @PU_CACHE, align 4
  %22 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 @V_DrawPatch(i32 0, i32 0, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  br label %35

25:                                               ; preds = %10
  %26 = load i32, i32* @PU_CACHE, align 4
  %27 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @V_DrawPatch(i32 0, i32 0, i32 0, i32 %27)
  br label %35

29:                                               ; preds = %10
  %30 = call i32 (...) @F_BunnyScroll()
  br label %35

31:                                               ; preds = %10
  %32 = load i32, i32* @PU_CACHE, align 4
  %33 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = call i32 @V_DrawPatch(i32 0, i32 0, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %10, %31, %29, %25, %24
  br label %36

36:                                               ; preds = %3, %35, %8
  ret void
}

declare dso_local i32 @F_CastDrawer(...) #1

declare dso_local i32 @F_TextWrite(...) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @F_BunnyScroll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
