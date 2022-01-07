; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_render_line0.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_render_line0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*)* @render_line0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_line0(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @abs(i32 %27) #2
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* %16, align 4
  %36 = sub nsw i32 %35, 1
  br label %40

37:                                               ; preds = %6
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 1
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @abs(i32 %46) #2
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %19, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %55
  br label %66

66:                                               ; preds = %89, %65
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %19, align 4
  br label %89

85:                                               ; preds = %71
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load i32, i32* %19, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %66

95:                                               ; preds = %66
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
