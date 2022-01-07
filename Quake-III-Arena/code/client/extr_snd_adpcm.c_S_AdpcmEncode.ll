; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_adpcm.c_S_AdpcmEncode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_adpcm.c_S_AdpcmEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i32, i32 }

@stepsizeTable = common dso_local global i32* null, align 8
@indexTable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_AdpcmEncode(i16* %0, i8* %1, i32 %2, %struct.adpcm_state* %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.adpcm_state* %3, %struct.adpcm_state** %8, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i16*, i16** %5, align 8
  store i16* %22, i16** %9, align 8
  %23 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %24 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %27 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32*, i32** @stepsizeTable, align 8
  %30 = load i32, i32* %18, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %34

34:                                               ; preds = %159, %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %162

37:                                               ; preds = %34
  %38 = load i16*, i16** %9, align 8
  %39 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %39, i16** %9, align 8
  %40 = load i16, i16* %38, align 2
  %41 = sext i16 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 8, i32 0
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %37
  store i32 0, i32* %13, align 4
  %55 = load i32, i32* %15, align 4
  %56 = ashr i32 %55, 3
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  store i32 4, i32* %13, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %60, %54
  %68 = load i32, i32* %15, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, 2
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %73, %67
  %83 = load i32, i32* %15, align 4
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %16, align 4
  br label %105

101:                                              ; preds = %94
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %16, align 4
  %107 = icmp sgt i32 %106, 32767
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 32767, i32* %16, align 4
  br label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %110, -32768
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 -32768, i32* %16, align 4
  br label %113

113:                                              ; preds = %112, %109
  br label %114

114:                                              ; preds = %113, %108
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load i64*, i64** @indexTable, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  store i32 0, i32* %18, align 4
  br label %130

130:                                              ; preds = %129, %114
  %131 = load i32, i32* %18, align 4
  %132 = icmp sgt i32 %131, 88
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 88, i32* %18, align 4
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i32*, i32** @stepsizeTable, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* %13, align 4
  %144 = shl i32 %143, 4
  %145 = and i32 %144, 240
  store i32 %145, i32* %19, align 4
  br label %154

146:                                              ; preds = %134
  %147 = load i32, i32* %13, align 4
  %148 = and i32 %147, 15
  %149 = load i32, i32* %19, align 4
  %150 = or i32 %148, %149
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %10, align 8
  store i8 %151, i8* %152, align 1
  br label %154

154:                                              ; preds = %146, %142
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %20, align 4
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %7, align 4
  br label %34

162:                                              ; preds = %34
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %19, align 4
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %10, align 8
  store i8 %167, i8* %168, align 1
  br label %170

170:                                              ; preds = %165, %162
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %173 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %176 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
