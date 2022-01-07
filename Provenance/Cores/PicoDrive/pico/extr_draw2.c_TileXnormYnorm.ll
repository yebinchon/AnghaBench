; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_TileXnormYnorm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_TileXnormYnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8)* @TileXnormYnorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TileXnormYnorm(i8* %0, i32 %1, i8 zeroext %2) #0 {
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
  store i32 8, i32* %10, align 4
  br label %11

11:                                               ; preds = %136, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %145

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %136

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 61440
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = lshr i32 %30, 12
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  br label %38

38:                                               ; preds = %29, %24
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 3840
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = lshr i32 %44, 8
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %45, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %49, i8* %51, align 1
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 240
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = lshr i32 %58, 4
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 %63, i8* %65, align 1
  br label %66

66:                                               ; preds = %57, %52
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 15
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %72, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  store i8 %76, i8* %78, align 1
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -268435456
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = lshr i32 %85, 28
  %87 = load i8, i8* %6, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8 %90, i8* %92, align 1
  br label %93

93:                                               ; preds = %84, %79
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 251658240
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = lshr i32 %99, 24
  %101 = load i8, i8* %6, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 5
  store i8 %104, i8* %106, align 1
  br label %107

107:                                              ; preds = %98, %93
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 15728640
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = lshr i32 %113, 20
  %115 = load i8, i8* %6, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 6
  store i8 %118, i8* %120, align 1
  br label %121

121:                                              ; preds = %112, %107
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 983040
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = lshr i32 %127, 16
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %128, %130
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 7
  store i8 %132, i8* %134, align 1
  br label %135

135:                                              ; preds = %126, %121
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %135, %23
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @LINE_WIDTH, align 4
  %142 = load i8*, i8** %4, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %4, align 8
  br label %11

145:                                              ; preds = %11
  %146 = load i32, i32* %9, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
