; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_FONT_alignRight.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_FONT_alignRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@vmode = common dso_local global %struct.TYPE_2__* null, align 8
@font_size = common dso_local global i32* null, align 8
@fheight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FONT_alignRight(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %49, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32*, i32** @font_size, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @fheight, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %79, %52
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  %61 = load i32*, i32** @font_size, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* @fheight, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @strlen(i8* %77)
  store i32 %78, i32* %6, align 4
  br label %93

79:                                               ; preds = %60
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @DrawChar(i8 signext %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  br label %56

92:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %76
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DrawChar(i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
