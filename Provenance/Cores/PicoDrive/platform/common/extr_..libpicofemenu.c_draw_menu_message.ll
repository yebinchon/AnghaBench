; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_menu_message.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_menu_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_w = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, void ()*)* @draw_menu_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_menu_message(i8* %0, void ()* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %10, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %51, %2
  %13 = load i8*, i8** %10, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  br label %18

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %12

54:                                               ; preds = %47, %12
  %55 = load i32, i32* @g_menuscreen_w, align 4
  %56 = sdiv i32 %55, 2
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @me_mfont_w, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 2
  %61 = sub nsw i32 %56, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @g_menuscreen_h, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @me_mfont_h, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sdiv i32 %66, 2
  %68 = sub nsw i32 %63, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = call i32 @menu_draw_begin(i32 1, i32 0)
  %78 = load i8*, i8** %3, align 8
  store i8* %78, i8** %10, align 8
  br label %79

79:                                               ; preds = %122, %76
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @g_menuscreen_h, align 4
  %87 = load i32, i32* @me_mfont_h, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sle i32 %85, %88
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ false, %79 ], [ %89, %84 ]
  br i1 %91, label %92, label %126

92:                                               ; preds = %90
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @text_out16(i32 %93, i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %110, %92
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 10
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ false, %97 ], [ %106, %102 ]
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  br label %97

113:                                              ; preds = %107
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %10, align 8
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* @me_mfont_h, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %79

126:                                              ; preds = %90
  %127 = call i32 (...) @menu_separation()
  %128 = load void ()*, void ()** %4, align 8
  %129 = icmp ne void ()* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load void ()*, void ()** %4, align 8
  call void %131()
  br label %132

132:                                              ; preds = %130, %126
  %133 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @menu_separation(...) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
