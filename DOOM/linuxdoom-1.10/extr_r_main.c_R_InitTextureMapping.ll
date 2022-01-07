; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_InitTextureMapping.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_InitTextureMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@centerxfrac = common dso_local global i32 0, align 4
@finetangent = common dso_local global i32* null, align 8
@FINEANGLES = common dso_local global i32 0, align 4
@FIELDOFVIEW = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@viewwidth = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@viewangletox = common dso_local global i32* null, align 8
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@ANG90 = common dso_local global i64 0, align 8
@xtoviewangle = common dso_local global i64* null, align 8
@centerx = common dso_local global i32 0, align 4
@clipangle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitTextureMapping() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @centerxfrac, align 4
  %6 = load i32*, i32** @finetangent, align 8
  %7 = load i32, i32* @FINEANGLES, align 4
  %8 = sdiv i32 %7, 4
  %9 = load i32, i32* @FIELDOFVIEW, align 4
  %10 = sdiv i32 %9, 2
  %11 = add nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %6, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @FixedDiv(i32 %5, i32 %14)
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %80, %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @FINEANGLES, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %16
  %22 = load i32*, i32** @finetangent, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FRACUNIT, align 4
  %28 = mul nsw i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %74

31:                                               ; preds = %21
  %32 = load i32*, i32** @finetangent, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FRACUNIT, align 4
  %38 = sub nsw i32 0, %37
  %39 = mul nsw i32 %38, 2
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @viewwidth, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %31
  %45 = load i32*, i32** @finetangent, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @FixedMul(i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @centerxfrac, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @FRACUNIT, align 4
  %56 = add nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @FRACBITS, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %72

63:                                               ; preds = %44
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @viewwidth, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @viewwidth, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %41
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i32, i32* %3, align 4
  %76 = load i32*, i32** @viewangletox, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %16

83:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %111, %83
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @viewwidth, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  store i32 0, i32* %1, align 4
  br label %89

89:                                               ; preds = %97, %88
  %90 = load i32*, i32** @viewangletox, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  br label %89

100:                                              ; preds = %89
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @ANG90, align 8
  %106 = sub nsw i64 %104, %105
  %107 = load i64*, i64** @xtoviewangle, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %106, i64* %110, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %2, align 4
  br label %84

114:                                              ; preds = %84
  store i32 0, i32* %1, align 4
  br label %115

115:                                              ; preds = %159, %114
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @FINEANGLES, align 4
  %118 = sdiv i32 %117, 2
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %162

120:                                              ; preds = %115
  %121 = load i32*, i32** @finetangent, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @FixedMul(i32 %125, i32 %126)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @centerx, align 4
  %129 = load i32, i32* %3, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %3, align 4
  %131 = load i32*, i32** @viewangletox, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %142

137:                                              ; preds = %120
  %138 = load i32*, i32** @viewangletox, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 0, i32* %141, align 4
  br label %158

142:                                              ; preds = %120
  %143 = load i32*, i32** @viewangletox, align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @viewwidth, align 4
  %149 = add nsw i32 %148, 1
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load i32, i32* @viewwidth, align 4
  %153 = load i32*, i32** @viewangletox, align 8
  %154 = load i32, i32* %1, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %142
  br label %158

158:                                              ; preds = %157, %137
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %1, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %1, align 4
  br label %115

162:                                              ; preds = %115
  %163 = load i64*, i64** @xtoviewangle, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* @clipangle, align 8
  ret void
}

declare dso_local i32 @FixedDiv(i32, i32) #1

declare dso_local i32 @FixedMul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
