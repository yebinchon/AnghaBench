; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_misc.c_M_ScreenShot.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_misc.c_M_ScreenShot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@screens = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"DOOM00.pcx\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"M_ScreenShot: Couldn't create a PCX\00", align 1
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"PLAYPAL\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"screen shot\00", align 1
@players = common dso_local global %struct.TYPE_2__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_ScreenShot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [12 x i8], align 1
  %4 = load i32**, i32*** @screens, align 8
  %5 = getelementptr inbounds i32*, i32** %4, i64 2
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @I_ReadScreen(i32* %7)
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %30, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp sle i32 %12, 99
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = sdiv i32 %15, 10
  %17 = add nsw i32 %16, 48
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 4
  store i8 %18, i8* %19, align 1
  %20 = load i32, i32* %1, align 4
  %21 = srem i32 %20, 10
  %22 = add nsw i32 %21, 48
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 5
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %26 = call i32 @access(i8* %25, i32 0)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %33

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 100
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @I_Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @SCREENWIDTH, align 4
  %42 = load i32, i32* @SCREENHEIGHT, align 4
  %43 = load i32, i32* @PU_CACHE, align 4
  %44 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = call i32 @WritePCXfile(i8* %39, i32* %40, i32 %41, i32 %42, i32 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @players, align 8
  %47 = load i64, i64* @consoleplayer, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  ret void
}

declare dso_local i32 @I_ReadScreen(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @WritePCXfile(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
