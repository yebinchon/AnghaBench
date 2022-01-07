; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_WriteText.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_WriteText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HU_FONTSTART = common dso_local global i32 0, align 4
@HU_FONTSIZE = common dso_local global i32 0, align 4
@hu_font = common dso_local global %struct.TYPE_3__** null, align 8
@SCREENWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_WriteText(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %3, %26, %41, %59
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %71

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 12
  store i32 %29, i32* %11, align 4
  br label %15

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @toupper(i32 %31) #3
  %33 = load i32, i32* @HU_FONTSTART, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @HU_FONTSIZE, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %10, align 4
  br label %15

44:                                               ; preds = %37
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SHORT(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @SCREENWIDTH, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %71

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @V_DrawPatchDirect(i32 %60, i32 %61, i32 0, %struct.TYPE_3__* %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %15

71:                                               ; preds = %58, %22
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #1

declare dso_local i32 @SHORT(i32) #2

declare dso_local i32 @V_DrawPatchDirect(i32, i32, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
