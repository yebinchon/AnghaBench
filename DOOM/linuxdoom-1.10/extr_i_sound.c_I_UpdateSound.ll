; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_I_UpdateSound.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_I_UpdateSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mixbuffer = common dso_local global i16* null, align 8
@SAMPLECOUNT = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@channels = common dso_local global i32** null, align 8
@channelleftvol_lookup = common dso_local global i64** null, align 8
@channelrightvol_lookup = common dso_local global i64** null, align 8
@channelstep = common dso_local global i64* null, align 8
@channelstepremainder = common dso_local global i32* null, align 8
@channelsend = common dso_local global i32** null, align 8
@flag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_UpdateSound() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i16*, i16** @mixbuffer, align 8
  store i16* %9, i16** %4, align 8
  %10 = load i16*, i16** @mixbuffer, align 8
  %11 = getelementptr inbounds i16, i16* %10, i64 1
  store i16* %11, i16** %5, align 8
  store i32 2, i32* %7, align 4
  %12 = load i16*, i16** @mixbuffer, align 8
  %13 = load i32, i32* @SAMPLECOUNT, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %12, i64 %16
  store i16* %17, i16** %6, align 8
  br label %18

18:                                               ; preds = %150, %0
  %19 = load i16*, i16** %4, align 8
  %20 = load i16*, i16** %6, align 8
  %21 = icmp ne i16* %19, %20
  br i1 %21, label %22, label %159

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %117, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NUM_CHANNELS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %120

27:                                               ; preds = %23
  %28 = load i32**, i32*** @channels, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %116

34:                                               ; preds = %27
  %35 = load i32**, i32*** @channels, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %1, align 4
  %41 = load i64**, i64*** @channelleftvol_lookup, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %1, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  %54 = load i64**, i64*** @channelrightvol_lookup, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %1, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  %67 = load i64*, i64** @channelstep, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** @channelstepremainder, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %71
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i32*, i32** @channelstepremainder, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 16
  %86 = load i32**, i32*** @channels, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = sext i32 %85 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %89, align 8
  %93 = load i32*, i32** @channelstepremainder, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 65535
  store i32 %98, i32* %96, align 4
  %99 = load i32**, i32*** @channels, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32**, i32*** @channelsend, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp uge i32* %103, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %34
  %111 = load i32**, i32*** @channels, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %110, %34
  br label %116

116:                                              ; preds = %115, %27
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %23

120:                                              ; preds = %23
  %121 = load i32, i32* %2, align 4
  %122 = icmp sgt i32 %121, 32767
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i16*, i16** %4, align 8
  store i16 32767, i16* %124, align 2
  br label %135

125:                                              ; preds = %120
  %126 = load i32, i32* %2, align 4
  %127 = icmp slt i32 %126, -32768
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i16*, i16** %4, align 8
  store i16 -32768, i16* %129, align 2
  br label %134

130:                                              ; preds = %125
  %131 = load i32, i32* %2, align 4
  %132 = trunc i32 %131 to i16
  %133 = load i16*, i16** %4, align 8
  store i16 %132, i16* %133, align 2
  br label %134

134:                                              ; preds = %130, %128
  br label %135

135:                                              ; preds = %134, %123
  %136 = load i32, i32* %3, align 4
  %137 = icmp sgt i32 %136, 32767
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i16*, i16** %5, align 8
  store i16 32767, i16* %139, align 2
  br label %150

140:                                              ; preds = %135
  %141 = load i32, i32* %3, align 4
  %142 = icmp slt i32 %141, -32768
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i16*, i16** %5, align 8
  store i16 -32768, i16* %144, align 2
  br label %149

145:                                              ; preds = %140
  %146 = load i32, i32* %3, align 4
  %147 = trunc i32 %146 to i16
  %148 = load i16*, i16** %5, align 8
  store i16 %147, i16* %148, align 2
  br label %149

149:                                              ; preds = %145, %143
  br label %150

150:                                              ; preds = %149, %138
  %151 = load i32, i32* %7, align 4
  %152 = load i16*, i16** %4, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i16, i16* %152, i64 %153
  store i16* %154, i16** %4, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i16*, i16** %5, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i16, i16* %156, i64 %157
  store i16* %158, i16** %5, align 8
  br label %18

159:                                              ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
