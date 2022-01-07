; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_TileXflipYflip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_TileXflipYflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8)* @TileXflipYflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TileXflipYflip(i8* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 14
  store i32 %12, i32* %5, align 4
  store i32 8, i32* %10, align 4
  br label %13

13:                                               ; preds = %138, %3
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %147

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %138

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 983040
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 16
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 15728640
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = lshr i32 %46, 20
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %53, align 1
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 251658240
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = lshr i32 %60, 24
  %62 = load i8, i8* %6, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %61, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8 %65, i8* %67, align 1
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -268435456
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = lshr i32 %74, 28
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %75, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 %79, i8* %81, align 1
  br label %82

82:                                               ; preds = %73, %68
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 15
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8 %92, i8* %94, align 1
  br label %95

95:                                               ; preds = %87, %82
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 240
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = lshr i32 %101, 4
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 5
  store i8 %106, i8* %108, align 1
  br label %109

109:                                              ; preds = %100, %95
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 3840
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = lshr i32 %115, 8
  %117 = load i8, i8* %6, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 6
  store i8 %120, i8* %122, align 1
  br label %123

123:                                              ; preds = %114, %109
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, 61440
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = lshr i32 %129, 12
  %131 = load i8, i8* %6, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 7
  store i8 %134, i8* %136, align 1
  br label %137

137:                                              ; preds = %128, %123
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %137, %25
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sub nsw i32 %141, 2
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* @LINE_WIDTH, align 4
  %144 = load i8*, i8** %4, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %4, align 8
  br label %13

147:                                              ; preds = %13
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
