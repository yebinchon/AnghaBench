; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_CastPrint.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_CastPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HU_FONTSTART = common dso_local global i32 0, align 4
@HU_FONTSIZE = common dso_local global i32 0, align 4
@hu_font = common dso_local global %struct.TYPE_3__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_CastPrint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %3, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %31, %1
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %46

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @toupper(i32 %21) #3
  %23 = load i32, i32* @HU_FONTSTART, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HU_FONTSIZE, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %7, align 4
  br label %9

34:                                               ; preds = %27
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SHORT(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %19, %9
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 160, %48
  store i32 %49, i32* %5, align 4
  %50 = load i8*, i8** %2, align 8
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %76, %73, %46
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %95

54:                                               ; preds = %51
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %95

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @toupper(i32 %63) #3
  %65 = load i32, i32* @HU_FONTSTART, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @HU_FONTSIZE, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %5, align 4
  br label %51

76:                                               ; preds = %69
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SHORT(i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @V_DrawPatch(i32 %85, i32 180, i32 0, %struct.TYPE_3__* %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %51

95:                                               ; preds = %61, %51
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #1

declare dso_local i32 @SHORT(i32) #2

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
