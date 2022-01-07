; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_InitTranslationTables.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_InitTranslationTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PU_STATIC = common dso_local global i32 0, align 4
@translationtables = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitTranslationTables() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PU_STATIC, align 4
  %3 = call i32* @Z_Malloc(i32 1023, i32 %2, i32 0)
  store i32* %3, i32** @translationtables, align 8
  %4 = load i32*, i32** @translationtables, align 8
  %5 = ptrtoint i32* %4 to i32
  %6 = add nsw i32 %5, 255
  %7 = and i32 %6, -256
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @translationtables, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %60, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 112
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = icmp sle i32 %17, 127
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = and i32 %20, 15
  %22 = add nsw i32 96, %21
  %23 = load i32*, i32** @translationtables, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %1, align 4
  %28 = and i32 %27, 15
  %29 = add nsw i32 64, %28
  %30 = load i32*, i32** @translationtables, align 8
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 256
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %1, align 4
  %36 = and i32 %35, 15
  %37 = add nsw i32 32, %36
  %38 = load i32*, i32** @translationtables, align 8
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 512
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %37, i32* %42, align 4
  br label %59

43:                                               ; preds = %16, %13
  %44 = load i32, i32* %1, align 4
  %45 = load i32*, i32** @translationtables, align 8
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 512
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load i32*, i32** @translationtables, align 8
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 256
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %44, i32* %54, align 4
  %55 = load i32*, i32** @translationtables, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %44, i32* %58, align 4
  br label %59

59:                                               ; preds = %43, %19
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %10

63:                                               ; preds = %10
  ret void
}

declare dso_local i32* @Z_Malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
