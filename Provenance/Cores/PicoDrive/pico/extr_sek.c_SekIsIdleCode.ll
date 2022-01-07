; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sek.c_SekIsIdleCode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sek.c_SekIsIdleCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SekIsIdleCode(i16* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %158 [
    i32 2, label %7
    i32 4, label %15
    i32 6, label %56
    i32 8, label %103
    i32 12, label %128
  ]

7:                                                ; preds = %2
  %8 = load i16*, i16** %4, align 8
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 61440
  %12 = icmp ne i32 %11, 24576
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %159

14:                                               ; preds = %7
  br label %158

15:                                               ; preds = %2
  %16 = load i16*, i16** %4, align 8
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 65343
  %20 = icmp eq i32 %19, 19000
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load i16*, i16** %4, align 8
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 49663
  %26 = icmp eq i32 %25, 56
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i16*, i16** %4, align 8
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 61759
  %32 = icmp eq i32 %31, 45112
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %15
  store i32 1, i32* %3, align 4
  br label %159

34:                                               ; preds = %27
  %35 = load i32, i32* @PicoAHW, align 4
  %36 = load i32, i32* @PAHW_MCD, align 4
  %37 = load i32, i32* @PAHW_32X, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %158

42:                                               ; preds = %34
  %43 = load i16*, i16** %4, align 8
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 65528
  %47 = icmp eq i32 %46, 18960
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i16*, i16** %4, align 8
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 65528
  %53 = icmp eq i32 %52, 18984
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42
  store i32 1, i32* %3, align 4
  br label %159

55:                                               ; preds = %48
  br label %158

56:                                               ; preds = %2
  %57 = load i16*, i16** %4, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 1
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 224
  %62 = icmp eq i32 %61, 224
  br i1 %62, label %63, label %90

63:                                               ; preds = %56
  %64 = load i16*, i16** %4, align 8
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 19001
  br i1 %67, label %101, label %68

68:                                               ; preds = %63
  %69 = load i16*, i16** %4, align 8
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %71, 19065
  br i1 %72, label %101, label %73

73:                                               ; preds = %68
  %74 = load i16*, i16** %4, align 8
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp eq i32 %76, 19129
  br i1 %77, label %101, label %78

78:                                               ; preds = %73
  %79 = load i16*, i16** %4, align 8
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 49663
  %83 = icmp eq i32 %82, 57
  br i1 %83, label %101, label %84

84:                                               ; preds = %78
  %85 = load i16*, i16** %4, align 8
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 61759
  %89 = icmp eq i32 %88, 45113
  br i1 %89, label %101, label %90

90:                                               ; preds = %84, %56
  %91 = load i16*, i16** %4, align 8
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp eq i32 %93, 2104
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load i16*, i16** %4, align 8
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 65471
  %100 = icmp eq i32 %99, 3128
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %90, %84, %78, %73, %68, %63
  store i32 1, i32* %3, align 4
  br label %159

102:                                              ; preds = %95
  br label %158

103:                                              ; preds = %2
  %104 = load i16*, i16** %4, align 8
  %105 = getelementptr inbounds i16, i16* %104, i64 2
  %106 = load i16, i16* %105, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 224
  %109 = icmp eq i32 %108, 224
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load i16*, i16** %4, align 8
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = icmp eq i32 %113, 2105
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load i16*, i16** %4, align 8
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, 65471
  %120 = icmp eq i32 %119, 3129
  br i1 %120, label %126, label %121

121:                                              ; preds = %115, %103
  %122 = load i16*, i16** %4, align 8
  %123 = load i16, i16* %122, align 2
  %124 = zext i16 %123 to i32
  %125 = icmp eq i32 %124, 3256
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %115, %110
  store i32 1, i32* %3, align 4
  br label %159

127:                                              ; preds = %121
  br label %158

128:                                              ; preds = %2
  %129 = load i32, i32* @PicoAHW, align 4
  %130 = load i32, i32* @PAHW_MCD, align 4
  %131 = load i32, i32* @PAHW_32X, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %158

136:                                              ; preds = %128
  %137 = load i16*, i16** %4, align 8
  %138 = load i16, i16* %137, align 2
  %139 = zext i16 %138 to i32
  %140 = and i32 %139, 61944
  %141 = icmp eq i32 %140, 12304
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load i16*, i16** %4, align 8
  %144 = getelementptr inbounds i16, i16* %143, i64 1
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 61696
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load i16*, i16** %4, align 8
  %151 = getelementptr inbounds i16, i16* %150, i64 3
  %152 = load i16, i16* %151, align 2
  %153 = zext i16 %152 to i32
  %154 = and i32 %153, 61696
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %159

157:                                              ; preds = %149, %142, %136
  br label %158

158:                                              ; preds = %2, %157, %135, %127, %102, %55, %41, %14
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %156, %126, %101, %54, %33, %13
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
